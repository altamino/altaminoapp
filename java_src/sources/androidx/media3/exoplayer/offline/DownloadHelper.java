package androidx.media3.exoplayer.offline;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.trackselection.x;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class DownloadHelper {
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT = DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT.A().w0(true).s0(false).A();
    private Callback callback;
    private final Handler callbackHandler;
    private List<ExoTrackSelection>[][] immutableTrackSelectionsByPeriodAndRenderer;
    private boolean isPreparedWithMedia;
    private final MediaItem.LocalConfiguration localConfiguration;
    private MappingTrackSelector.MappedTrackInfo[] mappedTrackInfos;
    private MediaPreparer mediaPreparer;

    @Nullable
    private final MediaSource mediaSource;
    private final RendererCapabilities[] rendererCapabilities;
    private final SparseIntArray scratchSet;
    private TrackGroupArray[] trackGroupArrays;
    private List<ExoTrackSelection>[][] trackSelectionsByPeriodAndRenderer;
    private final DefaultTrackSelector trackSelector;
    private final Timeline.Window window;

    public interface Callback {
        void a(DownloadHelper downloadHelper);

        void b(DownloadHelper downloadHelper, IOException iOException);
    }

    private static final class FakeBandwidthMeter implements BandwidthMeter {
        private FakeBandwidthMeter() {
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public void a(BandwidthMeter.EventListener eventListener) {
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public /* synthetic */ long b() {
            return androidx.media3.exoplayer.upstream.a.a(this);
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public void c(Handler handler, BandwidthMeter.EventListener eventListener) {
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        @Nullable
        public TransferListener d() {
            return null;
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public long getBitrateEstimate() {
            return 0L;
        }

        /* synthetic */ FakeBandwidthMeter(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class LiveContentUnsupportedException extends IOException {
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class MediaPreparer implements MediaSource.MediaSourceCaller, MediaPeriod.Callback, Handler.Callback {
        private static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED = 1;
        private static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED = 0;
        private static final int MESSAGE_CHECK_FOR_FAILURE = 1;
        private static final int MESSAGE_CONTINUE_LOADING = 2;
        private static final int MESSAGE_PREPARE_SOURCE = 0;
        private static final int MESSAGE_RELEASE = 3;
        private final DownloadHelper downloadHelper;
        public MediaPeriod[] mediaPeriods;
        private final MediaSource mediaSource;
        private final Handler mediaSourceHandler;
        private final HandlerThread mediaSourceThread;
        private boolean released;
        public Timeline timeline;
        private final Allocator allocator = new DefaultAllocator(true, 65536);
        private final ArrayList<MediaPeriod> pendingMediaPeriods = new ArrayList<>();
        private final Handler downloadHelperHandler = Util.z(new Handler.Callback() { // from class: androidx.media3.exoplayer.offline.e
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f567a.b(message);
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(Message message) {
            if (this.released) {
                return false;
            }
            int i10 = message.what;
            if (i10 == 0) {
                try {
                    this.downloadHelper.j();
                } catch (ExoPlaybackException e) {
                    this.downloadHelperHandler.obtainMessage(1, new IOException(e)).sendToTarget();
                }
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            e();
            this.downloadHelper.i((IOException) Util.j(message.obj));
            return true;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
        public void Q(MediaSource mediaSource, Timeline timeline) {
            MediaPeriod[] mediaPeriodArr;
            if (this.timeline != null) {
                return;
            }
            if (timeline.r(0, new Timeline.Window()).h()) {
                this.downloadHelperHandler.obtainMessage(1, new LiveContentUnsupportedException()).sendToTarget();
                return;
            }
            this.timeline = timeline;
            this.mediaPeriods = new MediaPeriod[timeline.m()];
            int i10 = 0;
            while (true) {
                mediaPeriodArr = this.mediaPeriods;
                if (i10 >= mediaPeriodArr.length) {
                    break;
                }
                MediaPeriod mediaPeriodM = this.mediaSource.M(new MediaSource.MediaPeriodId(timeline.q(i10)), this.allocator, 0L);
                this.mediaPeriods[i10] = mediaPeriodM;
                this.pendingMediaPeriods.add(mediaPeriodM);
                i10++;
            }
            for (MediaPeriod mediaPeriod : mediaPeriodArr) {
                mediaPeriod.e(this, 0L);
            }
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void f(MediaPeriod mediaPeriod) {
            if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                this.mediaSourceHandler.obtainMessage(2, mediaPeriod).sendToTarget();
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void d(MediaPeriod mediaPeriod) {
            this.pendingMediaPeriods.remove(mediaPeriod);
            if (this.pendingMediaPeriods.isEmpty()) {
                this.mediaSourceHandler.removeMessages(1);
                this.downloadHelperHandler.sendEmptyMessage(0);
            }
        }

        public void e() {
            if (this.released) {
                return;
            }
            this.released = true;
            this.mediaSourceHandler.sendEmptyMessage(3);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                this.mediaSource.T(this, null, PlayerId.UNSET);
                this.mediaSourceHandler.sendEmptyMessage(1);
                return true;
            }
            int i11 = 0;
            if (i10 == 1) {
                try {
                    if (this.mediaPeriods == null) {
                        this.mediaSource.maybeThrowSourceInfoRefreshError();
                    } else {
                        while (i11 < this.pendingMediaPeriods.size()) {
                            this.pendingMediaPeriods.get(i11).maybeThrowPrepareError();
                            i11++;
                        }
                    }
                    this.mediaSourceHandler.sendEmptyMessageDelayed(1, 100L);
                } catch (IOException e) {
                    this.downloadHelperHandler.obtainMessage(1, e).sendToTarget();
                }
                return true;
            }
            if (i10 == 2) {
                MediaPeriod mediaPeriod = (MediaPeriod) message.obj;
                if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                    mediaPeriod.continueLoading(0L);
                }
                return true;
            }
            if (i10 != 3) {
                return false;
            }
            MediaPeriod[] mediaPeriodArr = this.mediaPeriods;
            if (mediaPeriodArr != null) {
                int length = mediaPeriodArr.length;
                while (i11 < length) {
                    this.mediaSource.A(mediaPeriodArr[i11]);
                    i11++;
                }
            }
            this.mediaSource.E(this);
            this.mediaSourceHandler.removeCallbacksAndMessages(null);
            this.mediaSourceThread.quit();
            return true;
        }

        public MediaPreparer(MediaSource mediaSource, DownloadHelper downloadHelper) {
            this.mediaSource = mediaSource;
            this.downloadHelper = downloadHelper;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadHelper");
            this.mediaSourceThread = handlerThread;
            handlerThread.start();
            Handler handlerV = Util.v(handlerThread.getLooper(), this);
            this.mediaSourceHandler = handlerV;
            handlerV.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f() {
    }

    private void l() {
        this.isPreparedWithMedia = true;
    }

    /* JADX INFO: renamed from: androidx.media3.exoplayer.offline.DownloadHelper$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass1 implements VideoRendererEventListener {
        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void b(String str) {
            androidx.media3.exoplayer.video.f.e(this, str);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void e(long j6, int i10) {
            androidx.media3.exoplayer.video.f.h(this, j6, i10);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void g(Exception exc) {
            androidx.media3.exoplayer.video.f.c(this, exc);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void h(Object obj, long j6) {
            androidx.media3.exoplayer.video.f.b(this, obj, j6);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void l(DecoderCounters decoderCounters) {
            androidx.media3.exoplayer.video.f.g(this, decoderCounters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void onDroppedFrames(int i10, long j6) {
            androidx.media3.exoplayer.video.f.a(this, i10, j6);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void onVideoDecoderInitialized(String str, long j6, long j10) {
            androidx.media3.exoplayer.video.f.d(this, str, j6, j10);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            androidx.media3.exoplayer.video.f.k(this, videoSize);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void t(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            androidx.media3.exoplayer.video.f.j(this, format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void u(DecoderCounters decoderCounters) {
            androidx.media3.exoplayer.video.f.f(this, decoderCounters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void x(Format format) {
            androidx.media3.exoplayer.video.f.i(this, format);
        }

        AnonymousClass1() {
        }
    }

    /* JADX INFO: renamed from: androidx.media3.exoplayer.offline.DownloadHelper$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass2 implements AudioRendererEventListener {
        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void a(Exception exc) {
            androidx.media3.exoplayer.audio.b.i(this, exc);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void c(String str) {
            androidx.media3.exoplayer.audio.b.c(this, str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void d(Exception exc) {
            androidx.media3.exoplayer.audio.b.a(this, exc);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void f(long j6) {
            androidx.media3.exoplayer.audio.b.h(this, j6);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void i(int i10, long j6, long j10) {
            androidx.media3.exoplayer.audio.b.j(this, i10, j6, j10);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void k(DecoderCounters decoderCounters) {
            androidx.media3.exoplayer.audio.b.e(this, decoderCounters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void m(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            androidx.media3.exoplayer.audio.b.g(this, format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void n(DecoderCounters decoderCounters) {
            androidx.media3.exoplayer.audio.b.d(this, decoderCounters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void onAudioDecoderInitialized(String str, long j6, long j10) {
            androidx.media3.exoplayer.audio.b.b(this, str, j6, j10);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
            androidx.media3.exoplayer.audio.b.k(this, z6);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void w(Format format) {
            androidx.media3.exoplayer.audio.b.f(this, format);
        }

        AnonymousClass2() {
        }
    }

    private static final class DownloadTrackSelection extends BaseTrackSelection {

        private static final class Factory implements ExoTrackSelection.Factory {
            private Factory() {
            }

            @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
            public ExoTrackSelection[] a(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
                ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
                for (int i10 = 0; i10 < definitionArr.length; i10++) {
                    ExoTrackSelection.Definition definition = definitionArr[i10];
                    exoTrackSelectionArr[i10] = definition == null ? null : new DownloadTrackSelection(definition.group, definition.tracks);
                }
                return exoTrackSelectionArr;
            }

            /* synthetic */ Factory(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return 0;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        @Nullable
        public Object getSelectionData() {
            return null;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void i(long j6, long j10, long j11, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        }

        public DownloadTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(IOException iOException) {
        ((Callback) Assertions.e(this.callback)).b(this, iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        ((Callback) Assertions.e(this.callback)).a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(final IOException iOException) {
        ((Handler) Assertions.e(this.callbackHandler)).post(new Runnable() { // from class: androidx.media3.exoplayer.offline.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f565a.g(iOException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() throws ExoPlaybackException {
        Assertions.e(this.mediaPreparer);
        Assertions.e(this.mediaPreparer.mediaPeriods);
        Assertions.e(this.mediaPreparer.timeline);
        int length = this.mediaPreparer.mediaPeriods.length;
        int length2 = this.rendererCapabilities.length;
        this.trackSelectionsByPeriodAndRenderer = (List[][]) Array.newInstance((Class<?>) List.class, length, length2);
        this.immutableTrackSelectionsByPeriodAndRenderer = (List[][]) Array.newInstance((Class<?>) List.class, length, length2);
        for (int i10 = 0; i10 < length; i10++) {
            for (int i11 = 0; i11 < length2; i11++) {
                this.trackSelectionsByPeriodAndRenderer[i10][i11] = new ArrayList();
                this.immutableTrackSelectionsByPeriodAndRenderer[i10][i11] = Collections.unmodifiableList(this.trackSelectionsByPeriodAndRenderer[i10][i11]);
            }
        }
        this.trackGroupArrays = new TrackGroupArray[length];
        this.mappedTrackInfos = new MappingTrackSelector.MappedTrackInfo[length];
        for (int i12 = 0; i12 < length; i12++) {
            this.trackGroupArrays[i12] = this.mediaPreparer.mediaPeriods[i12].getTrackGroups();
            this.trackSelector.i(k(i12).info);
            this.mappedTrackInfos[i12] = (MappingTrackSelector.MappedTrackInfo) Assertions.e(this.trackSelector.o());
        }
        l();
        ((Handler) Assertions.e(this.callbackHandler)).post(new Runnable() { // from class: androidx.media3.exoplayer.offline.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f564a.h();
            }
        });
    }

    private TrackSelectorResult k(int i10) throws ExoPlaybackException {
        TrackSelectorResult trackSelectorResultK = this.trackSelector.k(this.rendererCapabilities, this.trackGroupArrays[i10], new MediaSource.MediaPeriodId(this.mediaPreparer.timeline.q(i10)), this.mediaPreparer.timeline);
        for (int i11 = 0; i11 < trackSelectorResultK.length; i11++) {
            ExoTrackSelection exoTrackSelection = trackSelectorResultK.selections[i11];
            if (exoTrackSelection != null) {
                List<ExoTrackSelection> list = this.trackSelectionsByPeriodAndRenderer[i10][i11];
                int i12 = 0;
                while (true) {
                    if (i12 >= list.size()) {
                        list.add(exoTrackSelection);
                        break;
                    }
                    ExoTrackSelection exoTrackSelection2 = list.get(i12);
                    if (exoTrackSelection2.getTrackGroup().equals(exoTrackSelection.getTrackGroup())) {
                        this.scratchSet.clear();
                        for (int i13 = 0; i13 < exoTrackSelection2.length(); i13++) {
                            this.scratchSet.put(exoTrackSelection2.getIndexInTrackGroup(i13), 0);
                        }
                        for (int i14 = 0; i14 < exoTrackSelection.length(); i14++) {
                            this.scratchSet.put(exoTrackSelection.getIndexInTrackGroup(i14), 0);
                        }
                        int[] iArr = new int[this.scratchSet.size()];
                        for (int i15 = 0; i15 < this.scratchSet.size(); i15++) {
                            iArr[i15] = this.scratchSet.keyAt(i15);
                        }
                        list.set(i12, new DownloadTrackSelection(exoTrackSelection2.getTrackGroup(), iArr));
                        break;
                    }
                    i12++;
                }
            }
        }
        return trackSelectorResultK;
    }

    public DownloadHelper(MediaItem mediaItem, @Nullable MediaSource mediaSource, TrackSelectionParameters trackSelectionParameters, RendererCapabilities[] rendererCapabilitiesArr) {
        this.localConfiguration = (MediaItem.LocalConfiguration) Assertions.e(mediaItem.localConfiguration);
        this.mediaSource = mediaSource;
        AnonymousClass1 anonymousClass1 = null;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(trackSelectionParameters, new DownloadTrackSelection.Factory(anonymousClass1));
        this.trackSelector = defaultTrackSelector;
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.scratchSet = new SparseIntArray();
        defaultTrackSelector.e(new TrackSelector.InvalidationListener() { // from class: androidx.media3.exoplayer.offline.b
            @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
            public /* synthetic */ void b(Renderer renderer) {
                x.a(this, renderer);
            }

            @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
            public final void onTrackSelectionsInvalidated() {
                DownloadHelper.f();
            }
        }, new FakeBandwidthMeter(anonymousClass1));
        this.callbackHandler = Util.y();
        this.window = new Timeline.Window();
    }
}
