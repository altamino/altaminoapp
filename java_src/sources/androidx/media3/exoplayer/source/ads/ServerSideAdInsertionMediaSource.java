package androidx.media3.exoplayer.source.ads;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.j;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.EmptySampleStream;
import androidx.media3.exoplayer.source.ForwardingTimeline;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.collect.b0;
import com.google.common.collect.g;
import com.google.common.collect.h0;
import com.google.common.collect.j0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class ServerSideAdInsertionMediaSource extends BaseMediaSource implements MediaSource.MediaSourceCaller, MediaSourceEventListener, DrmSessionEventListener {

    @Nullable
    private final AdPlaybackStateUpdater adPlaybackStateUpdater;

    @Nullable
    private SharedMediaPeriod lastUsedMediaPeriod;
    private final MediaSource mediaSource;

    @Nullable
    @GuardedBy
    private Handler playbackHandler;
    private final j0<Pair<Long, Object>, SharedMediaPeriod> mediaPeriods = g.E();
    private b0<Object, AdPlaybackState> adPlaybackStates = b0.m();
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcherWithoutId = c0(null);
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcherWithoutId = a0(null);

    public interface AdPlaybackStateUpdater {
        boolean a(Timeline timeline);
    }

    private static final class MediaPeriodImpl implements MediaPeriod {
        public MediaPeriod.Callback callback;
        public final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
        public boolean[] hasNotifiedDownstreamFormatChange = new boolean[0];
        public boolean isPrepared;
        public long lastStartPositionUs;
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
        public final SharedMediaPeriod sharedPeriod;

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long a(long j6, SeekParameters seekParameters) {
            return this.sharedPeriod.l(this, j6, seekParameters);
        }

        public void b() {
            MediaPeriod.Callback callback = this.callback;
            if (callback != null) {
                callback.d(this);
            }
            this.isPrepared = true;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
            if (this.hasNotifiedDownstreamFormatChange.length == 0) {
                this.hasNotifiedDownstreamFormatChange = new boolean[sampleStreamArr.length];
            }
            return this.sharedPeriod.J(this, exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(long j6) {
            return this.sharedPeriod.i(this, j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void discardBuffer(long j6, boolean z6) {
            this.sharedPeriod.j(this, j6, z6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void e(MediaPeriod.Callback callback, long j6) {
            this.callback = callback;
            this.sharedPeriod.C(this, j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return this.sharedPeriod.m(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return this.sharedPeriod.p(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return this.sharedPeriod.r();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean isLoading() {
            return this.sharedPeriod.s(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void maybeThrowPrepareError() throws IOException {
            this.sharedPeriod.x();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long readDiscontinuity() {
            return this.sharedPeriod.E(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j6) {
            this.sharedPeriod.F(this, j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long seekToUs(long j6) {
            return this.sharedPeriod.I(this, j6);
        }

        public MediaPeriodImpl(SharedMediaPeriod sharedMediaPeriod, MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.EventDispatcher eventDispatcher, DrmSessionEventListener.EventDispatcher eventDispatcher2) {
            this.sharedPeriod = sharedMediaPeriod;
            this.mediaPeriodId = mediaPeriodId;
            this.mediaSourceEventDispatcher = eventDispatcher;
            this.drmEventDispatcher = eventDispatcher2;
        }
    }

    private static final class SampleStreamImpl implements SampleStream {
        private final MediaPeriodImpl mediaPeriod;
        private final int streamIndex;

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
            MediaPeriodImpl mediaPeriodImpl = this.mediaPeriod;
            return mediaPeriodImpl.sharedPeriod.D(mediaPeriodImpl, this.streamIndex, formatHolder, decoderInputBuffer, i10);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return this.mediaPeriod.sharedPeriod.t(this.streamIndex);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.mediaPeriod.sharedPeriod.w(this.streamIndex);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j6) {
            MediaPeriodImpl mediaPeriodImpl = this.mediaPeriod;
            return mediaPeriodImpl.sharedPeriod.K(mediaPeriodImpl, this.streamIndex, j6);
        }

        public SampleStreamImpl(MediaPeriodImpl mediaPeriodImpl, int i10) {
            this.mediaPeriod = mediaPeriodImpl;
            this.streamIndex = i10;
        }
    }

    private static final class SharedMediaPeriod implements MediaPeriod.Callback {
        private final MediaPeriod actualMediaPeriod;
        private AdPlaybackState adPlaybackState;
        private boolean hasStartedPreparing;
        private boolean isPrepared;

        @Nullable
        private MediaPeriodImpl loadingPeriod;
        private final Object periodUid;
        private final List<MediaPeriodImpl> mediaPeriods = new ArrayList();
        private final Map<Long, Pair<LoadEventInfo, MediaLoadData>> activeLoads = new HashMap();
        public ExoTrackSelection[] trackSelections = new ExoTrackSelection[0];
        public SampleStream[] sampleStreams = new SampleStream[0];
        public MediaLoadData[] lastDownstreamFormatChangeData = new MediaLoadData[0];

        public long J(MediaPeriodImpl mediaPeriodImpl, ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
            mediaPeriodImpl.lastStartPositionUs = j6;
            if (!mediaPeriodImpl.equals(this.mediaPeriods.get(0))) {
                for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
                    ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i10];
                    boolean z6 = true;
                    if (exoTrackSelection != null) {
                        if (zArr[i10] && sampleStreamArr[i10] != null) {
                            z6 = false;
                        }
                        zArr2[i10] = z6;
                        if (z6) {
                            sampleStreamArr[i10] = Util.c(this.trackSelections[i10], exoTrackSelection) ? new SampleStreamImpl(mediaPeriodImpl, i10) : new EmptySampleStream();
                        }
                    } else {
                        sampleStreamArr[i10] = null;
                        zArr2[i10] = true;
                    }
                }
                return j6;
            }
            this.trackSelections = (ExoTrackSelection[]) Arrays.copyOf(exoTrackSelectionArr, exoTrackSelectionArr.length);
            long jE = ServerSideAdInsertionUtil.e(j6, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
            SampleStream[] sampleStreamArr2 = this.sampleStreams;
            SampleStream[] sampleStreamArr3 = sampleStreamArr2.length == 0 ? new SampleStream[exoTrackSelectionArr.length] : (SampleStream[]) Arrays.copyOf(sampleStreamArr2, sampleStreamArr2.length);
            long jC = this.actualMediaPeriod.c(exoTrackSelectionArr, zArr, sampleStreamArr3, zArr2, jE);
            this.sampleStreams = (SampleStream[]) Arrays.copyOf(sampleStreamArr3, sampleStreamArr3.length);
            this.lastDownstreamFormatChangeData = (MediaLoadData[]) Arrays.copyOf(this.lastDownstreamFormatChangeData, sampleStreamArr3.length);
            for (int i11 = 0; i11 < sampleStreamArr3.length; i11++) {
                if (sampleStreamArr3[i11] == null) {
                    sampleStreamArr[i11] = null;
                    this.lastDownstreamFormatChangeData[i11] = null;
                } else if (sampleStreamArr[i11] == null || zArr2[i11]) {
                    sampleStreamArr[i11] = new SampleStreamImpl(mediaPeriodImpl, i11);
                    this.lastDownstreamFormatChangeData[i11] = null;
                }
            }
            return ServerSideAdInsertionUtil.b(jC, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void d(MediaPeriod mediaPeriod) {
            this.isPrepared = true;
            for (int i10 = 0; i10 < this.mediaPeriods.size(); i10++) {
                this.mediaPeriods.get(i10).b();
            }
        }

        private int k(MediaLoadData mediaLoadData) {
            String str;
            if (mediaLoadData.trackFormat == null) {
                return -1;
            }
            int i10 = 0;
            while (true) {
                ExoTrackSelection[] exoTrackSelectionArr = this.trackSelections;
                if (i10 >= exoTrackSelectionArr.length) {
                    return -1;
                }
                ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i10];
                if (exoTrackSelection != null) {
                    TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                    boolean z6 = mediaLoadData.trackType == 0 && trackGroup.equals(r().b(0));
                    for (int i11 = 0; i11 < trackGroup.length; i11++) {
                        Format formatC = trackGroup.c(i11);
                        if (formatC.equals(mediaLoadData.trackFormat) || (z6 && (str = formatC.id) != null && str.equals(mediaLoadData.trackFormat.id))) {
                            return i10;
                        }
                    }
                }
                i10++;
            }
        }

        private long o(MediaPeriodImpl mediaPeriodImpl, long j6) {
            if (j6 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            long jB = ServerSideAdInsertionUtil.b(j6, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
            if (jB >= ServerSideAdInsertionMediaSource.o0(mediaPeriodImpl, this.adPlaybackState)) {
                return Long.MIN_VALUE;
            }
            return jB;
        }

        private long q(MediaPeriodImpl mediaPeriodImpl, long j6) {
            long j10 = mediaPeriodImpl.lastStartPositionUs;
            return j6 < j10 ? ServerSideAdInsertionUtil.e(j10, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState) - (mediaPeriodImpl.lastStartPositionUs - j6) : ServerSideAdInsertionUtil.e(j6, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        private void v(MediaPeriodImpl mediaPeriodImpl, int i10) {
            MediaLoadData mediaLoadData;
            boolean[] zArr = mediaPeriodImpl.hasNotifiedDownstreamFormatChange;
            if (zArr[i10] || (mediaLoadData = this.lastDownstreamFormatChangeData[i10]) == null) {
                return;
            }
            zArr[i10] = true;
            mediaPeriodImpl.mediaSourceEventDispatcher.i(ServerSideAdInsertionMediaSource.m0(mediaPeriodImpl, mediaLoadData, this.adPlaybackState));
        }

        public void A(LoadEventInfo loadEventInfo) {
            this.activeLoads.remove(Long.valueOf(loadEventInfo.loadTaskId));
        }

        public void B(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            this.activeLoads.put(Long.valueOf(loadEventInfo.loadTaskId), Pair.create(loadEventInfo, mediaLoadData));
        }

        public void C(MediaPeriodImpl mediaPeriodImpl, long j6) {
            mediaPeriodImpl.lastStartPositionUs = j6;
            if (this.hasStartedPreparing) {
                if (this.isPrepared) {
                    mediaPeriodImpl.b();
                }
            } else {
                this.hasStartedPreparing = true;
                this.actualMediaPeriod.e(this, ServerSideAdInsertionUtil.e(j6, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState));
            }
        }

        public int D(MediaPeriodImpl mediaPeriodImpl, int i10, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i11) {
            long jM = m(mediaPeriodImpl);
            int iB = ((SampleStream) Util.j(this.sampleStreams[i10])).b(formatHolder, decoderInputBuffer, i11 | 5);
            long jO = o(mediaPeriodImpl, decoderInputBuffer.timeUs);
            if ((iB == -4 && jO == Long.MIN_VALUE) || (iB == -3 && jM == Long.MIN_VALUE && !decoderInputBuffer.waitingForKeys)) {
                v(mediaPeriodImpl, i10);
                decoderInputBuffer.b();
                decoderInputBuffer.a(4);
                return -4;
            }
            if (iB == -4) {
                v(mediaPeriodImpl, i10);
                ((SampleStream) Util.j(this.sampleStreams[i10])).b(formatHolder, decoderInputBuffer, i11);
                decoderInputBuffer.timeUs = jO;
            }
            return iB;
        }

        public long E(MediaPeriodImpl mediaPeriodImpl) {
            if (!mediaPeriodImpl.equals(this.mediaPeriods.get(0))) {
                return -9223372036854775807L;
            }
            long discontinuity = this.actualMediaPeriod.readDiscontinuity();
            if (discontinuity == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return ServerSideAdInsertionUtil.b(discontinuity, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public void F(MediaPeriodImpl mediaPeriodImpl, long j6) {
            this.actualMediaPeriod.reevaluateBuffer(q(mediaPeriodImpl, j6));
        }

        public void G(MediaSource mediaSource) {
            mediaSource.A(this.actualMediaPeriod);
        }

        public void H(MediaPeriodImpl mediaPeriodImpl) {
            if (mediaPeriodImpl.equals(this.loadingPeriod)) {
                this.loadingPeriod = null;
                this.activeLoads.clear();
            }
            this.mediaPeriods.remove(mediaPeriodImpl);
        }

        public long I(MediaPeriodImpl mediaPeriodImpl, long j6) {
            return ServerSideAdInsertionUtil.b(this.actualMediaPeriod.seekToUs(ServerSideAdInsertionUtil.e(j6, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState)), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public int K(MediaPeriodImpl mediaPeriodImpl, int i10, long j6) {
            return ((SampleStream) Util.j(this.sampleStreams[i10])).skipData(ServerSideAdInsertionUtil.e(j6, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState));
        }

        public void e(MediaPeriodImpl mediaPeriodImpl) {
            this.mediaPeriods.add(mediaPeriodImpl);
        }

        public boolean h(MediaSource.MediaPeriodId mediaPeriodId, long j6) {
            MediaPeriodImpl mediaPeriodImpl = (MediaPeriodImpl) h0.e(this.mediaPeriods);
            return ServerSideAdInsertionUtil.e(j6, mediaPeriodId, this.adPlaybackState) == ServerSideAdInsertionUtil.e(ServerSideAdInsertionMediaSource.o0(mediaPeriodImpl, this.adPlaybackState), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public boolean i(MediaPeriodImpl mediaPeriodImpl, long j6) {
            MediaPeriodImpl mediaPeriodImpl2 = this.loadingPeriod;
            if (mediaPeriodImpl2 != null && !mediaPeriodImpl.equals(mediaPeriodImpl2)) {
                for (Pair<LoadEventInfo, MediaLoadData> pair : this.activeLoads.values()) {
                    mediaPeriodImpl2.mediaSourceEventDispatcher.u((LoadEventInfo) pair.first, ServerSideAdInsertionMediaSource.m0(mediaPeriodImpl2, (MediaLoadData) pair.second, this.adPlaybackState));
                    mediaPeriodImpl.mediaSourceEventDispatcher.A((LoadEventInfo) pair.first, ServerSideAdInsertionMediaSource.m0(mediaPeriodImpl, (MediaLoadData) pair.second, this.adPlaybackState));
                }
            }
            this.loadingPeriod = mediaPeriodImpl;
            return this.actualMediaPeriod.continueLoading(q(mediaPeriodImpl, j6));
        }

        public void j(MediaPeriodImpl mediaPeriodImpl, long j6, boolean z6) {
            this.actualMediaPeriod.discardBuffer(ServerSideAdInsertionUtil.e(j6, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState), z6);
        }

        public long l(MediaPeriodImpl mediaPeriodImpl, long j6, SeekParameters seekParameters) {
            return ServerSideAdInsertionUtil.b(this.actualMediaPeriod.a(ServerSideAdInsertionUtil.e(j6, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState), seekParameters), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public long m(MediaPeriodImpl mediaPeriodImpl) {
            return o(mediaPeriodImpl, this.actualMediaPeriod.getBufferedPositionUs());
        }

        @Nullable
        public MediaPeriodImpl n(@Nullable MediaLoadData mediaLoadData) {
            if (mediaLoadData == null || mediaLoadData.mediaStartTimeMs == -9223372036854775807L) {
                return null;
            }
            for (int i10 = 0; i10 < this.mediaPeriods.size(); i10++) {
                MediaPeriodImpl mediaPeriodImpl = this.mediaPeriods.get(i10);
                if (mediaPeriodImpl.isPrepared) {
                    long jB = ServerSideAdInsertionUtil.b(Util.K0(mediaLoadData.mediaStartTimeMs), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
                    long jO0 = ServerSideAdInsertionMediaSource.o0(mediaPeriodImpl, this.adPlaybackState);
                    if (jB >= 0 && jB < jO0) {
                        return mediaPeriodImpl;
                    }
                }
            }
            return null;
        }

        public long p(MediaPeriodImpl mediaPeriodImpl) {
            return o(mediaPeriodImpl, this.actualMediaPeriod.getNextLoadPositionUs());
        }

        public TrackGroupArray r() {
            return this.actualMediaPeriod.getTrackGroups();
        }

        public boolean s(MediaPeriodImpl mediaPeriodImpl) {
            return mediaPeriodImpl.equals(this.loadingPeriod) && this.actualMediaPeriod.isLoading();
        }

        public boolean t(int i10) {
            return ((SampleStream) Util.j(this.sampleStreams[i10])).isReady();
        }

        public boolean u() {
            return this.mediaPeriods.isEmpty();
        }

        public void w(int i10) throws IOException {
            ((SampleStream) Util.j(this.sampleStreams[i10])).maybeThrowError();
        }

        public void x() throws IOException {
            this.actualMediaPeriod.maybeThrowPrepareError();
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public void f(MediaPeriod mediaPeriod) {
            MediaPeriodImpl mediaPeriodImpl = this.loadingPeriod;
            if (mediaPeriodImpl == null) {
                return;
            }
            ((MediaPeriod.Callback) Assertions.e(mediaPeriodImpl.callback)).f(this.loadingPeriod);
        }

        public SharedMediaPeriod(MediaPeriod mediaPeriod, Object obj, AdPlaybackState adPlaybackState) {
            this.actualMediaPeriod = mediaPeriod;
            this.periodUid = obj;
            this.adPlaybackState = adPlaybackState;
        }

        public void z(MediaPeriodImpl mediaPeriodImpl, MediaLoadData mediaLoadData) {
            int iK = k(mediaLoadData);
            if (iK != -1) {
                this.lastDownstreamFormatChangeData[iK] = mediaLoadData;
                mediaPeriodImpl.hasNotifiedDownstreamFormatChange[iK] = true;
            }
        }
    }

    @Nullable
    private MediaPeriodImpl p0(@Nullable MediaSource.MediaPeriodId mediaPeriodId, @Nullable MediaLoadData mediaLoadData, boolean z6) {
        if (mediaPeriodId == null) {
            return null;
        }
        List<SharedMediaPeriod> listQ = this.mediaPeriods.q(new Pair<>(Long.valueOf(mediaPeriodId.windowSequenceNumber), mediaPeriodId.periodUid));
        if (listQ.isEmpty()) {
            return null;
        }
        if (z6) {
            SharedMediaPeriod sharedMediaPeriod = (SharedMediaPeriod) h0.e(listQ);
            return sharedMediaPeriod.loadingPeriod != null ? sharedMediaPeriod.loadingPeriod : (MediaPeriodImpl) h0.e(sharedMediaPeriod.mediaPeriods);
        }
        for (int i10 = 0; i10 < listQ.size(); i10++) {
            MediaPeriodImpl mediaPeriodImplN = listQ.get(i10).n(mediaLoadData);
            if (mediaPeriodImplN != null) {
                return mediaPeriodImplN;
            }
        }
        return (MediaPeriodImpl) listQ.get(0).mediaPeriods.get(0);
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void B(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodImplP0 == null) {
            this.mediaSourceEventDispatcherWithoutId.r(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodImplP0.sharedPeriod.A(loadEventInfo);
            mediaPeriodImplP0.mediaSourceEventDispatcher.r(loadEventInfo, m0(mediaPeriodImplP0, mediaLoadData, (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(mediaPeriodImplP0.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void D(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, mediaLoadData, false);
        if (mediaPeriodImplP0 == null) {
            this.mediaSourceEventDispatcherWithoutId.i(mediaLoadData);
        } else {
            mediaPeriodImplP0.sharedPeriod.z(mediaPeriodImplP0, mediaLoadData);
            mediaPeriodImplP0.mediaSourceEventDispatcher.i(m0(mediaPeriodImplP0, mediaLoadData, (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(mediaPeriodImplP0.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void F(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, null, false);
        if (mediaPeriodImplP0 == null) {
            this.drmEventDispatcherWithoutId.m();
        } else {
            mediaPeriodImplP0.drmEventDispatcher.m();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void I(int i10, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, mediaLoadData, false);
        if (mediaPeriodImplP0 == null) {
            this.mediaSourceEventDispatcherWithoutId.D(mediaLoadData);
        } else {
            mediaPeriodImplP0.mediaSourceEventDispatcher.D(m0(mediaPeriodImplP0, mediaLoadData, (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(mediaPeriodImplP0.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void L(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodImplP0 == null) {
            this.mediaSourceEventDispatcherWithoutId.A(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodImplP0.sharedPeriod.B(loadEventInfo, mediaLoadData);
            mediaPeriodImplP0.mediaSourceEventDispatcher.A(loadEventInfo, m0(mediaPeriodImplP0, mediaLoadData, (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(mediaPeriodImplP0.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void N(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, int i11) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, null, true);
        if (mediaPeriodImplP0 == null) {
            this.drmEventDispatcherWithoutId.k(i11);
        } else {
            mediaPeriodImplP0.drmEventDispatcher.k(i11);
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public /* synthetic */ void O(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
        j.a(this, i10, mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void R(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, null, false);
        if (mediaPeriodImplP0 == null) {
            this.drmEventDispatcherWithoutId.i();
        } else {
            mediaPeriodImplP0.drmEventDispatcher.i();
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void S(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, null, false);
        if (mediaPeriodImplP0 == null) {
            this.drmEventDispatcherWithoutId.l(exc);
        } else {
            mediaPeriodImplP0.drmEventDispatcher.l(exc);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void V(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodImplP0 == null) {
            this.mediaSourceEventDispatcherWithoutId.u(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodImplP0.sharedPeriod.A(loadEventInfo);
            mediaPeriodImplP0.mediaSourceEventDispatcher.u(loadEventInfo, m0(mediaPeriodImplP0, mediaLoadData, (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(mediaPeriodImplP0.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void W(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, null, false);
        if (mediaPeriodImplP0 == null) {
            this.drmEventDispatcherWithoutId.j();
        } else {
            mediaPeriodImplP0.drmEventDispatcher.j();
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void x(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, null, false);
        if (mediaPeriodImplP0 == null) {
            this.drmEventDispatcherWithoutId.h();
        } else {
            mediaPeriodImplP0.drmEventDispatcher.h();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void z(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
        MediaPeriodImpl mediaPeriodImplP0 = p0(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodImplP0 == null) {
            this.mediaSourceEventDispatcherWithoutId.x(loadEventInfo, mediaLoadData, iOException, z6);
            return;
        }
        if (z6) {
            mediaPeriodImplP0.sharedPeriod.A(loadEventInfo);
        }
        mediaPeriodImplP0.mediaSourceEventDispatcher.x(loadEventInfo, m0(mediaPeriodImplP0, mediaLoadData, (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(mediaPeriodImplP0.mediaPeriodId.periodUid))), iOException, z6);
    }

    private static final class ServerSideAdInsertionTimeline extends ForwardingTimeline {
        private final b0<Object, AdPlaybackState> adPlaybackStates;

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
            super.k(i10, period, true);
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(period.uid));
            long j6 = period.durationUs;
            long jD = j6 == -9223372036854775807L ? adPlaybackState.contentDurationUs : ServerSideAdInsertionUtil.d(j6, -1, adPlaybackState);
            Timeline.Period period2 = new Timeline.Period();
            long jD2 = 0;
            for (int i11 = 0; i11 < i10 + 1; i11++) {
                this.timeline.k(i11, period2, true);
                AdPlaybackState adPlaybackState2 = (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(period2.uid));
                if (i11 == 0) {
                    jD2 = -ServerSideAdInsertionUtil.d(-period2.r(), -1, adPlaybackState2);
                }
                if (i11 != i10) {
                    jD2 += ServerSideAdInsertionUtil.d(period2.durationUs, -1, adPlaybackState2);
                }
            }
            period.x(period.id, period.uid, period.windowIndex, jD, jD2, adPlaybackState, period.isPlaceholder);
            return period;
        }

        public ServerSideAdInsertionTimeline(Timeline timeline, b0<Object, AdPlaybackState> b0Var) {
            boolean z6;
            super(timeline);
            if (timeline.t() == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            Assertions.g(z6);
            Timeline.Period period = new Timeline.Period();
            for (int i10 = 0; i10 < timeline.m(); i10++) {
                timeline.k(i10, period, true);
                Assertions.g(b0Var.containsKey(Assertions.e(period.uid)));
            }
            this.adPlaybackStates = b0Var;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window s(int i10, Timeline.Window window, long j6) {
            super.s(i10, window, j6);
            Timeline.Period period = new Timeline.Period();
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(Assertions.e(k(window.firstPeriodIndex, period, true).uid)));
            long jD = ServerSideAdInsertionUtil.d(window.positionInFirstPeriodUs, -1, adPlaybackState);
            if (window.durationUs == -9223372036854775807L) {
                long j10 = adPlaybackState.contentDurationUs;
                if (j10 != -9223372036854775807L) {
                    window.durationUs = j10 - jD;
                }
            } else {
                Timeline.Period periodK = super.k(window.lastPeriodIndex, period, true);
                long j11 = periodK.positionInWindowUs;
                AdPlaybackState adPlaybackState2 = (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(periodK.uid));
                Timeline.Period periodJ = j(window.lastPeriodIndex, period);
                window.durationUs = periodJ.positionInWindowUs + ServerSideAdInsertionUtil.d(window.durationUs - j11, -1, adPlaybackState2);
            }
            window.positionInFirstPeriodUs = jD;
            return window;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaLoadData m0(MediaPeriodImpl mediaPeriodImpl, MediaLoadData mediaLoadData, AdPlaybackState adPlaybackState) {
        return new MediaLoadData(mediaLoadData.dataType, mediaLoadData.trackType, mediaLoadData.trackFormat, mediaLoadData.trackSelectionReason, mediaLoadData.trackSelectionData, n0(mediaLoadData.mediaStartTimeMs, mediaPeriodImpl, adPlaybackState), n0(mediaLoadData.mediaEndTimeMs, mediaPeriodImpl, adPlaybackState));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long o0(MediaPeriodImpl mediaPeriodImpl, AdPlaybackState adPlaybackState) {
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodImpl.mediaPeriodId;
        if (mediaPeriodId.c()) {
            AdPlaybackState.AdGroup adGroupD = adPlaybackState.d(mediaPeriodId.adGroupIndex);
            if (adGroupD.count == -1) {
                return 0L;
            }
            return adGroupD.durationsUs[mediaPeriodId.adIndexInAdGroup];
        }
        int i10 = mediaPeriodId.nextAdGroupIndex;
        if (i10 == -1) {
            return Long.MAX_VALUE;
        }
        long j6 = adPlaybackState.d(i10).timeUs;
        if (j6 == Long.MIN_VALUE) {
            return Long.MAX_VALUE;
        }
        return j6;
    }

    private void q0() {
        SharedMediaPeriod sharedMediaPeriod = this.lastUsedMediaPeriod;
        if (sharedMediaPeriod != null) {
            sharedMediaPeriod.G(this.mediaSource);
            this.lastUsedMediaPeriod = null;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        MediaPeriodImpl mediaPeriodImpl = (MediaPeriodImpl) mediaPeriod;
        mediaPeriodImpl.sharedPeriod.H(mediaPeriodImpl);
        if (mediaPeriodImpl.sharedPeriod.u()) {
            this.mediaPeriods.remove(new Pair(Long.valueOf(mediaPeriodImpl.mediaPeriodId.windowSequenceNumber), mediaPeriodImpl.mediaPeriodId.periodUid), mediaPeriodImpl.sharedPeriod);
            if (this.mediaPeriods.isEmpty()) {
                this.lastUsedMediaPeriod = mediaPeriodImpl.sharedPeriod;
            } else {
                mediaPeriodImpl.sharedPeriod.G(this.mediaSource);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        SharedMediaPeriod sharedMediaPeriod;
        Pair<Long, Object> pair = new Pair<>(Long.valueOf(mediaPeriodId.windowSequenceNumber), mediaPeriodId.periodUid);
        SharedMediaPeriod sharedMediaPeriod2 = this.lastUsedMediaPeriod;
        boolean z6 = false;
        if (sharedMediaPeriod2 != null) {
            if (sharedMediaPeriod2.periodUid.equals(mediaPeriodId.periodUid)) {
                sharedMediaPeriod = this.lastUsedMediaPeriod;
                this.mediaPeriods.put(pair, sharedMediaPeriod);
                z6 = true;
            } else {
                this.lastUsedMediaPeriod.G(this.mediaSource);
                sharedMediaPeriod = null;
            }
            this.lastUsedMediaPeriod = null;
        } else {
            sharedMediaPeriod = null;
        }
        if (sharedMediaPeriod == null && ((sharedMediaPeriod = (SharedMediaPeriod) h0.f(this.mediaPeriods.q(pair), null)) == null || !sharedMediaPeriod.h(mediaPeriodId, j6))) {
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.e(this.adPlaybackStates.get(mediaPeriodId.periodUid));
            SharedMediaPeriod sharedMediaPeriod3 = new SharedMediaPeriod(this.mediaSource.M(new MediaSource.MediaPeriodId(mediaPeriodId.periodUid, mediaPeriodId.windowSequenceNumber), allocator, ServerSideAdInsertionUtil.e(j6, mediaPeriodId, adPlaybackState)), mediaPeriodId.periodUid, adPlaybackState);
            this.mediaPeriods.put(pair, sharedMediaPeriod3);
            sharedMediaPeriod = sharedMediaPeriod3;
        }
        MediaPeriodImpl mediaPeriodImpl = new MediaPeriodImpl(sharedMediaPeriod, mediaPeriodId, c0(mediaPeriodId), a0(mediaPeriodId));
        sharedMediaPeriod.e(mediaPeriodImpl);
        if (z6 && sharedMediaPeriod.trackSelections.length > 0) {
            mediaPeriodImpl.seekToUs(j6);
        }
        return mediaPeriodImpl;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
    public void Q(MediaSource mediaSource, Timeline timeline) {
        AdPlaybackStateUpdater adPlaybackStateUpdater = this.adPlaybackStateUpdater;
        if ((adPlaybackStateUpdater == null || !adPlaybackStateUpdater.a(timeline)) && !this.adPlaybackStates.isEmpty()) {
            i0(new ServerSideAdInsertionTimeline(timeline, this.adPlaybackStates));
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void e0() {
        this.mediaSource.U(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.mediaSource.j();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.mediaSource.maybeThrowSourceInfoRefreshError();
    }

    public ServerSideAdInsertionMediaSource(MediaSource mediaSource, @Nullable AdPlaybackStateUpdater adPlaybackStateUpdater) {
        this.mediaSource = mediaSource;
        this.adPlaybackStateUpdater = adPlaybackStateUpdater;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void d0() {
        q0();
        this.mediaSource.X(this);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        Handler handlerW = Util.w();
        synchronized (this) {
            this.playbackHandler = handlerW;
        }
        this.mediaSource.s(handlerW, this);
        this.mediaSource.y(handlerW, this);
        this.mediaSource.T(this, transferListener, f0());
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
        q0();
        synchronized (this) {
            this.playbackHandler = null;
        }
        this.mediaSource.E(this);
        this.mediaSource.J(this);
        this.mediaSource.P(this);
    }

    private static long n0(long j6, MediaPeriodImpl mediaPeriodImpl, AdPlaybackState adPlaybackState) {
        long jD;
        if (j6 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long jK0 = Util.K0(j6);
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodImpl.mediaPeriodId;
        if (mediaPeriodId.c()) {
            jD = ServerSideAdInsertionUtil.c(jK0, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState);
        } else {
            jD = ServerSideAdInsertionUtil.d(jK0, -1, adPlaybackState);
        }
        return Util.q1(jD);
    }
}
