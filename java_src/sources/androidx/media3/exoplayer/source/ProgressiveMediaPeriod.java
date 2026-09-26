package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
final class ProgressiveMediaPeriod implements MediaPeriod, ExtractorOutput, Loader.Callback<ExtractingLoadable>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private final Allocator allocator;

    @Nullable
    private MediaPeriod.Callback callback;
    private final long continueLoadingCheckIntervalBytes;

    @Nullable
    private final String customCacheKey;
    private final DataSource dataSource;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private int enabledTrackCount;
    private int extractedSamplesCountAtStartOfLoad;
    private boolean haveAudioVideoTracks;

    @Nullable
    private IcyHeaders icyHeaders;
    private boolean isLengthKnown;
    private boolean isLive;
    private long lastSeekPositionUs;
    private final Listener listener;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private boolean loadingFinished;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private boolean notifyDiscontinuity;
    private boolean pendingDeferredRetry;
    private boolean prepared;
    private final ProgressiveMediaExtractor progressiveMediaExtractor;
    private boolean released;
    private boolean sampleQueuesBuilt;
    private SeekMap seekMap;
    private boolean seenFirstTrackSelection;
    private TrackState trackState;
    private final Uri uri;
    private static final Map<String, String> ICY_METADATA_HEADERS = v();
    private static final Format ICY_FORMAT = new Format.Builder().U("icy").g0("application/x-icy").G();
    private final Loader loader = new Loader("ProgressiveMediaPeriod");
    private final ConditionVariable loadCondition = new ConditionVariable();
    private final Runnable maybeFinishPrepareRunnable = new Runnable() { // from class: androidx.media3.exoplayer.source.v
        @Override // java.lang.Runnable
        public final void run() {
            this.f632a.F();
        }
    };
    private final Runnable onContinueLoadingRequestedRunnable = new Runnable() { // from class: androidx.media3.exoplayer.source.w
        @Override // java.lang.Runnable
        public final void run() {
            this.f633a.C();
        }
    };
    private final Handler handler = Util.w();
    private TrackId[] sampleQueueTrackIds = new TrackId[0];
    private SampleQueue[] sampleQueues = new SampleQueue[0];
    private long pendingResetPositionUs = -9223372036854775807L;
    private long durationUs = -9223372036854775807L;
    private int dataType = 1;

    final class ExtractingLoadable implements Loader.Loadable, IcyDataSource.Listener {
        private final StatsDataSource dataSource;
        private final ExtractorOutput extractorOutput;

        @Nullable
        private TrackOutput icyTrackOutput;
        private volatile boolean loadCanceled;
        private final ConditionVariable loadCondition;
        private final ProgressiveMediaExtractor progressiveMediaExtractor;
        private long seekTimeUs;
        private boolean seenIcyMetadata;
        private final Uri uri;
        private final PositionHolder positionHolder = new PositionHolder();
        private boolean pendingExtractorSeek = true;
        private final long loadTaskId = LoadEventInfo.a();
        private DataSpec dataSpec = g(0);

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        public ExtractingLoadable(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, ExtractorOutput extractorOutput, ConditionVariable conditionVariable) {
            this.uri = uri;
            this.dataSource = new StatsDataSource(dataSource);
            this.progressiveMediaExtractor = progressiveMediaExtractor;
            this.extractorOutput = extractorOutput;
            this.loadCondition = conditionVariable;
        }

        private DataSpec g(long j6) {
            return new DataSpec.Builder().i(this.uri).h(j6).f(ProgressiveMediaPeriod.this.customCacheKey).b(6).e(ProgressiveMediaPeriod.ICY_METADATA_HEADERS).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(long j6, long j10) {
            this.positionHolder.position = j6;
            this.seekTimeUs = j10;
            this.pendingExtractorSeek = true;
            this.seenIcyMetadata = false;
        }

        @Override // androidx.media3.exoplayer.source.IcyDataSource.Listener
        public void a(ParsableByteArray parsableByteArray) {
            long jMax = !this.seenIcyMetadata ? this.seekTimeUs : Math.max(ProgressiveMediaPeriod.this.y(true), this.seekTimeUs);
            int iA = parsableByteArray.a();
            TrackOutput trackOutput = (TrackOutput) Assertions.e(this.icyTrackOutput);
            trackOutput.b(parsableByteArray, iA);
            trackOutput.f(jMax, 1, iA, 0, null);
            this.seenIcyMetadata = true;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0029 */
        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void load() throws IOException {
            int iD = 0;
            while (iD == 0 && !this.loadCanceled) {
                long j6 = this.positionHolder.position;
                DataSpec dataSpecG = g(j6);
                this.dataSpec = dataSpecG;
                long jB = this.dataSource.b(dataSpecG);
                if (jB != -1) {
                    jB += j6;
                    ProgressiveMediaPeriod.this.L();
                }
                long j10 = jB;
                ProgressiveMediaPeriod.this.icyHeaders = IcyHeaders.a(this.dataSource.getResponseHeaders());
                DataReader icyDataSource = this.dataSource;
                if (ProgressiveMediaPeriod.this.icyHeaders != null && ProgressiveMediaPeriod.this.icyHeaders.metadataInterval != -1) {
                    icyDataSource = new IcyDataSource(this.dataSource, ProgressiveMediaPeriod.this.icyHeaders.metadataInterval, this);
                    TrackOutput trackOutputZ = ProgressiveMediaPeriod.this.z();
                    this.icyTrackOutput = trackOutputZ;
                    trackOutputZ.d(ProgressiveMediaPeriod.ICY_FORMAT);
                }
                long jA = j6;
                this.progressiveMediaExtractor.c(icyDataSource, this.uri, this.dataSource.getResponseHeaders(), j6, j10, this.extractorOutput);
                if (ProgressiveMediaPeriod.this.icyHeaders != null) {
                    this.progressiveMediaExtractor.b();
                }
                if (this.pendingExtractorSeek) {
                    this.progressiveMediaExtractor.seek(jA, this.seekTimeUs);
                    this.pendingExtractorSeek = false;
                }
                while (true) {
                    long j11 = jA;
                    while (true) {
                        if (iD != 0 || this.loadCanceled) {
                            break;
                        }
                        try {
                            this.loadCondition.a();
                            iD = this.progressiveMediaExtractor.d(this.positionHolder);
                            jA = this.progressiveMediaExtractor.a();
                            if (jA > ProgressiveMediaPeriod.this.continueLoadingCheckIntervalBytes + j11) {
                                this.loadCondition.d();
                                ProgressiveMediaPeriod.this.handler.post(ProgressiveMediaPeriod.this.onContinueLoadingRequestedRunnable);
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                }
                if (iD == 1) {
                    iD = 0;
                } else if (this.progressiveMediaExtractor.a() != -1) {
                    this.positionHolder.position = this.progressiveMediaExtractor.a();
                }
                DataSourceUtil.a(this.dataSource);
            }
        }
    }

    interface Listener {
        void q(long j6, boolean z6, boolean z10);
    }

    private final class SampleStreamImpl implements SampleStream {
        private final int track;

        public SampleStreamImpl(int i10) {
            this.track = i10;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
            return ProgressiveMediaPeriod.this.Q(this.track, formatHolder, decoderInputBuffer, i10);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return ProgressiveMediaPeriod.this.B(this.track);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            ProgressiveMediaPeriod.this.K(this.track);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j6) {
            return ProgressiveMediaPeriod.this.U(this.track, j6);
        }
    }

    private boolean A() {
        return this.pendingResetPositionUs != -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        this.isLengthKnown = true;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public void H(ExtractingLoadable extractingLoadable, long j6, long j10, boolean z6) {
        StatsDataSource statsDataSource = extractingLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.e(), statsDataSource.f(), j6, j10, statsDataSource.d());
        this.loadErrorHandlingPolicy.a(extractingLoadable.loadTaskId);
        this.mediaSourceEventDispatcher.q(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs);
        if (z6) {
            return;
        }
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.V();
        }
        if (this.enabledTrackCount > 0) {
            ((MediaPeriod.Callback) Assertions.e(this.callback)).f(this);
        }
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
    }

    private static final class TrackId {
        public final int id;
        public final boolean isIcyTrack;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || TrackId.class != obj.getClass()) {
                return false;
            }
            TrackId trackId = (TrackId) obj;
            return this.id == trackId.id && this.isIcyTrack == trackId.isIcyTrack;
        }

        public int hashCode() {
            return (this.id * 31) + (this.isIcyTrack ? 1 : 0);
        }

        public TrackId(int i10, boolean z6) {
            this.id = i10;
            this.isIcyTrack = z6;
        }
    }

    private static final class TrackState {
        public final boolean[] trackEnabledStates;
        public final boolean[] trackIsAudioVideoFlags;
        public final boolean[] trackNotifiedDownstreamFormats;
        public final TrackGroupArray tracks;

        public TrackState(TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.tracks = trackGroupArray;
            this.trackIsAudioVideoFlags = zArr;
            int i10 = trackGroupArray.length;
            this.trackEnabledStates = new boolean[i10];
            this.trackNotifiedDownstreamFormats = new boolean[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        if (this.released) {
            return;
        }
        ((MediaPeriod.Callback) Assertions.e(this.callback)).f(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        if (this.released || this.prepared || !this.sampleQueuesBuilt || this.seekMap == null) {
            return;
        }
        for (SampleQueue sampleQueue : this.sampleQueues) {
            if (sampleQueue.F() == null) {
                return;
            }
        }
        this.loadCondition.d();
        int length = this.sampleQueues.length;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            Format formatG = (Format) Assertions.e(this.sampleQueues[i10].F());
            String str = formatG.sampleMimeType;
            boolean zO = MimeTypes.o(str);
            boolean z6 = zO || MimeTypes.s(str);
            zArr[i10] = z6;
            this.haveAudioVideoTracks = z6 | this.haveAudioVideoTracks;
            IcyHeaders icyHeaders = this.icyHeaders;
            if (icyHeaders != null) {
                if (zO || this.sampleQueueTrackIds[i10].isIcyTrack) {
                    Metadata metadata = formatG.metadata;
                    formatG = formatG.b().Z(metadata == null ? new Metadata(icyHeaders) : metadata.a(icyHeaders)).G();
                }
                if (zO && formatG.averageBitrate == -1 && formatG.peakBitrate == -1 && icyHeaders.bitrate != -1) {
                    formatG = formatG.b().I(icyHeaders.bitrate).G();
                }
            }
            trackGroupArr[i10] = new TrackGroup(Integer.toString(i10), formatG.c(this.drmSessionManager.a(formatG)));
        }
        this.trackState = new TrackState(new TrackGroupArray(trackGroupArr), zArr);
        this.prepared = true;
        ((MediaPeriod.Callback) Assertions.e(this.callback)).d(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f634a.D();
            }
        });
    }

    private TrackOutput P(TrackId trackId) {
        int length = this.sampleQueues.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (trackId.equals(this.sampleQueueTrackIds[i10])) {
                return this.sampleQueues[i10];
            }
        }
        SampleQueue sampleQueueK = SampleQueue.k(this.allocator, this.drmSessionManager, this.drmEventDispatcher);
        sampleQueueK.d0(this);
        int i11 = length + 1;
        TrackId[] trackIdArr = (TrackId[]) Arrays.copyOf(this.sampleQueueTrackIds, i11);
        trackIdArr[length] = trackId;
        this.sampleQueueTrackIds = (TrackId[]) Util.k(trackIdArr);
        SampleQueue[] sampleQueueArr = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, i11);
        sampleQueueArr[length] = sampleQueueK;
        this.sampleQueues = (SampleQueue[]) Util.k(sampleQueueArr);
        return sampleQueueK;
    }

    private boolean S(boolean[] zArr, long j6) {
        int length = this.sampleQueues.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.sampleQueues[i10].Z(j6, false) && (zArr[i10] || !this.haveAudioVideoTracks)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public void E(SeekMap seekMap) {
        this.seekMap = this.icyHeaders == null ? seekMap : new SeekMap.Unseekable(-9223372036854775807L);
        this.durationUs = seekMap.getDurationUs();
        boolean z6 = !this.isLengthKnown && seekMap.getDurationUs() == -9223372036854775807L;
        this.isLive = z6;
        this.dataType = z6 ? 7 : 1;
        this.listener.q(this.durationUs, seekMap.isSeekable(), this.isLive);
        if (this.prepared) {
            return;
        }
        F();
    }

    private void V() {
        ExtractingLoadable extractingLoadable = new ExtractingLoadable(this.uri, this.dataSource, this.progressiveMediaExtractor, this, this.loadCondition);
        if (this.prepared) {
            Assertions.g(A());
            long j6 = this.durationUs;
            if (j6 != -9223372036854775807L && this.pendingResetPositionUs > j6) {
                this.loadingFinished = true;
                this.pendingResetPositionUs = -9223372036854775807L;
                return;
            }
            extractingLoadable.h(((SeekMap) Assertions.e(this.seekMap)).getSeekPoints(this.pendingResetPositionUs).first.position, this.pendingResetPositionUs);
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.b0(this.pendingResetPositionUs);
            }
            this.pendingResetPositionUs = -9223372036854775807L;
        }
        this.extractedSamplesCountAtStartOfLoad = x();
        this.mediaSourceEventDispatcher.z(new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, this.loader.m(extractingLoadable, this, this.loadErrorHandlingPolicy.b(this.dataType))), 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs);
    }

    private boolean W() {
        return this.notifyDiscontinuity || A();
    }

    private void t() {
        Assertions.g(this.prepared);
        Assertions.e(this.trackState);
        Assertions.e(this.seekMap);
    }

    private boolean u(ExtractingLoadable extractingLoadable, int i10) {
        SeekMap seekMap;
        if (this.isLengthKnown || !((seekMap = this.seekMap) == null || seekMap.getDurationUs() == -9223372036854775807L)) {
            this.extractedSamplesCountAtStartOfLoad = i10;
            return true;
        }
        if (this.prepared && !W()) {
            this.pendingDeferredRetry = true;
            return false;
        }
        this.notifyDiscontinuity = this.prepared;
        this.lastSeekPositionUs = 0L;
        this.extractedSamplesCountAtStartOfLoad = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.V();
        }
        extractingLoadable.h(0L, 0L);
        return true;
    }

    private static Map<String, String> v() {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(map);
    }

    private int x() {
        int iG = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            iG += sampleQueue.G();
        }
        return iG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long y(boolean z6) {
        long jMax = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.sampleQueues.length; i10++) {
            if (z6 || ((TrackState) Assertions.e(this.trackState)).trackEnabledStates[i10]) {
                jMax = Math.max(jMax, this.sampleQueues[i10].z());
            }
        }
        return jMax;
    }

    void J() throws IOException {
        this.loader.j(this.loadErrorHandlingPolicy.b(this.dataType));
    }

    void K(int i10) throws IOException {
        this.sampleQueues[i10].N();
        J();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public void Y(ExtractingLoadable extractingLoadable, long j6, long j10) {
        SeekMap seekMap;
        if (this.durationUs == -9223372036854775807L && (seekMap = this.seekMap) != null) {
            boolean zIsSeekable = seekMap.isSeekable();
            long jY = y(true);
            long j11 = jY == Long.MIN_VALUE ? 0L : jY + 10000;
            this.durationUs = j11;
            this.listener.q(j11, zIsSeekable, this.isLive);
        }
        StatsDataSource statsDataSource = extractingLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.e(), statsDataSource.f(), j6, j10, statsDataSource.d());
        this.loadErrorHandlingPolicy.a(extractingLoadable.loadTaskId);
        this.mediaSourceEventDispatcher.t(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs);
        this.loadingFinished = true;
        ((MediaPeriod.Callback) Assertions.e(this.callback)).f(this);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction w(ExtractingLoadable extractingLoadable, long j6, long j10, IOException iOException, int i10) {
        Loader.LoadErrorAction loadErrorActionG;
        StatsDataSource statsDataSource = extractingLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.e(), statsDataSource.f(), j6, j10, statsDataSource.d());
        long jD = this.loadErrorHandlingPolicy.d(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(1, -1, null, 0, null, Util.q1(extractingLoadable.seekTimeUs), Util.q1(this.durationUs)), iOException, i10));
        if (jD == -9223372036854775807L) {
            loadErrorActionG = Loader.DONT_RETRY_FATAL;
        } else {
            int iX = x();
            loadErrorActionG = u(extractingLoadable, iX) ? Loader.g(iX > this.extractedSamplesCountAtStartOfLoad, jD) : Loader.DONT_RETRY;
        }
        boolean z6 = !loadErrorActionG.c();
        this.mediaSourceEventDispatcher.v(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs, iOException, z6);
        if (z6) {
            this.loadErrorHandlingPolicy.a(extractingLoadable.loadTaskId);
        }
        return loadErrorActionG;
    }

    public void R() {
        if (this.prepared) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.R();
            }
        }
        this.loader.l(this);
        this.handler.removeCallbacksAndMessages(null);
        this.callback = null;
        this.released = true;
    }

    @Override // androidx.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener
    public void b(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        if (this.loadingFinished || this.loader.h() || this.pendingDeferredRetry) {
            return false;
        }
        if (this.prepared && this.enabledTrackCount == 0) {
            return false;
        }
        boolean zF = this.loadCondition.f();
        if (this.loader.i()) {
            return zF;
        }
        V();
        return true;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void d(final SeekMap seekMap) {
        this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f635a.E(seekMap);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void e(MediaPeriod.Callback callback, long j6) {
        this.callback = callback;
        this.loadCondition.f();
        V();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.i() && this.loadCondition.e();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.T();
        }
        this.progressiveMediaExtractor.release();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        if (!this.notifyDiscontinuity) {
            return -9223372036854775807L;
        }
        if (!this.loadingFinished && x() <= this.extractedSamplesCountAtStartOfLoad) {
            return -9223372036854775807L;
        }
        this.notifyDiscontinuity = false;
        return this.lastSeekPositionUs;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public TrackOutput track(int i10, int i11) {
        return P(new TrackId(i10, false));
    }

    TrackOutput z() {
        return P(new TrackId(0, true));
    }

    public ProgressiveMediaPeriod(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, Listener listener, Allocator allocator, @Nullable String str, int i10) {
        this.uri = uri;
        this.dataSource = dataSource;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.listener = listener;
        this.allocator = allocator;
        this.customCacheKey = str;
        this.continueLoadingCheckIntervalBytes = i10;
        this.progressiveMediaExtractor = progressiveMediaExtractor;
    }

    private void G(int i10) {
        t();
        TrackState trackState = this.trackState;
        boolean[] zArr = trackState.trackNotifiedDownstreamFormats;
        if (!zArr[i10]) {
            Format formatC = trackState.tracks.b(i10).c(0);
            this.mediaSourceEventDispatcher.h(MimeTypes.k(formatC.sampleMimeType), formatC, 0, null, this.lastSeekPositionUs);
            zArr[i10] = true;
        }
    }

    private void I(int i10) {
        t();
        boolean[] zArr = this.trackState.trackIsAudioVideoFlags;
        if (this.pendingDeferredRetry && zArr[i10]) {
            if (!this.sampleQueues[i10].K(false)) {
                this.pendingResetPositionUs = 0L;
                this.pendingDeferredRetry = false;
                this.notifyDiscontinuity = true;
                this.lastSeekPositionUs = 0L;
                this.extractedSamplesCountAtStartOfLoad = 0;
                for (SampleQueue sampleQueue : this.sampleQueues) {
                    sampleQueue.V();
                }
                ((MediaPeriod.Callback) Assertions.e(this.callback)).f(this);
            }
        }
    }

    boolean B(int i10) {
        if (!W() && this.sampleQueues[i10].K(this.loadingFinished)) {
            return true;
        }
        return false;
    }

    int Q(int i10, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (W()) {
            return -3;
        }
        G(i10);
        int iS = this.sampleQueues[i10].S(formatHolder, decoderInputBuffer, i11, this.loadingFinished);
        if (iS == -3) {
            I(i10);
        }
        return iS;
    }

    int U(int i10, long j6) {
        if (W()) {
            return 0;
        }
        G(i10);
        SampleQueue sampleQueue = this.sampleQueues[i10];
        int iE = sampleQueue.E(j6, this.loadingFinished);
        sampleQueue.e0(iE);
        if (iE == 0) {
            I(i10);
        }
        return iE;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long a(long j6, SeekParameters seekParameters) {
        t();
        if (!this.seekMap.isSeekable()) {
            return 0L;
        }
        SeekMap.SeekPoints seekPoints = this.seekMap.getSeekPoints(j6);
        return seekParameters.a(j6, seekPoints.first.timeUs, seekPoints.second.timeUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
        boolean z6;
        ExoTrackSelection exoTrackSelection;
        boolean z10;
        boolean z11;
        t();
        TrackState trackState = this.trackState;
        TrackGroupArray trackGroupArray = trackState.tracks;
        boolean[] zArr3 = trackState.trackEnabledStates;
        int i10 = this.enabledTrackCount;
        int i11 = 0;
        for (int i12 = 0; i12 < exoTrackSelectionArr.length; i12++) {
            SampleStream sampleStream = sampleStreamArr[i12];
            if (sampleStream != null && (exoTrackSelectionArr[i12] == null || !zArr[i12])) {
                int i13 = ((SampleStreamImpl) sampleStream).track;
                Assertions.g(zArr3[i13]);
                this.enabledTrackCount--;
                zArr3[i13] = false;
                sampleStreamArr[i12] = null;
            }
        }
        if (!this.seenFirstTrackSelection ? j6 != 0 : i10 == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        for (int i14 = 0; i14 < exoTrackSelectionArr.length; i14++) {
            if (sampleStreamArr[i14] == null && (exoTrackSelection = exoTrackSelectionArr[i14]) != null) {
                if (exoTrackSelection.length() == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                Assertions.g(z10);
                if (exoTrackSelection.getIndexInTrackGroup(0) == 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                Assertions.g(z11);
                int iC = trackGroupArray.c(exoTrackSelection.getTrackGroup());
                Assertions.g(!zArr3[iC]);
                this.enabledTrackCount++;
                zArr3[iC] = true;
                sampleStreamArr[i14] = new SampleStreamImpl(iC);
                zArr2[i14] = true;
                if (!z6) {
                    SampleQueue sampleQueue = this.sampleQueues[iC];
                    if (!sampleQueue.Z(j6, true) && sampleQueue.C() != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                }
            }
        }
        if (this.enabledTrackCount == 0) {
            this.pendingDeferredRetry = false;
            this.notifyDiscontinuity = false;
            if (this.loader.i()) {
                SampleQueue[] sampleQueueArr = this.sampleQueues;
                int length = sampleQueueArr.length;
                while (i11 < length) {
                    sampleQueueArr[i11].r();
                    i11++;
                }
                this.loader.e();
            } else {
                SampleQueue[] sampleQueueArr2 = this.sampleQueues;
                int length2 = sampleQueueArr2.length;
                while (i11 < length2) {
                    sampleQueueArr2[i11].V();
                    i11++;
                }
            }
        } else if (z6) {
            j6 = seekToUs(j6);
            while (i11 < sampleStreamArr.length) {
                if (sampleStreamArr[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.seenFirstTrackSelection = true;
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j6, boolean z6) {
        t();
        if (A()) {
            return;
        }
        boolean[] zArr = this.trackState.trackEnabledStates;
        int length = this.sampleQueues.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.sampleQueues[i10].q(j6, z6, zArr[i10]);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long jY;
        t();
        if (this.loadingFinished || this.enabledTrackCount == 0) {
            return Long.MIN_VALUE;
        }
        if (A()) {
            return this.pendingResetPositionUs;
        }
        if (this.haveAudioVideoTracks) {
            int length = this.sampleQueues.length;
            jY = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                TrackState trackState = this.trackState;
                if (trackState.trackIsAudioVideoFlags[i10] && trackState.trackEnabledStates[i10] && !this.sampleQueues[i10].J()) {
                    jY = Math.min(jY, this.sampleQueues[i10].z());
                }
            }
        } else {
            jY = Long.MAX_VALUE;
        }
        if (jY == Long.MAX_VALUE) {
            jY = y(false);
        }
        if (jY == Long.MIN_VALUE) {
            return this.lastSeekPositionUs;
        }
        return jY;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        t();
        return this.trackState.tracks;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        J();
        if (this.loadingFinished && !this.prepared) {
            throw ParserException.a("Loading finished before preparation is complete.", null);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j6) {
        t();
        boolean[] zArr = this.trackState.trackIsAudioVideoFlags;
        if (!this.seekMap.isSeekable()) {
            j6 = 0;
        }
        int i10 = 0;
        this.notifyDiscontinuity = false;
        this.lastSeekPositionUs = j6;
        if (A()) {
            this.pendingResetPositionUs = j6;
            return j6;
        }
        if (this.dataType != 7 && S(zArr, j6)) {
            return j6;
        }
        this.pendingDeferredRetry = false;
        this.pendingResetPositionUs = j6;
        this.loadingFinished = false;
        if (this.loader.i()) {
            SampleQueue[] sampleQueueArr = this.sampleQueues;
            int length = sampleQueueArr.length;
            while (i10 < length) {
                sampleQueueArr[i10].r();
                i10++;
            }
            this.loader.e();
        } else {
            this.loader.f();
            SampleQueue[] sampleQueueArr2 = this.sampleQueues;
            int length2 = sampleQueueArr2.length;
            while (i10 < length2) {
                sampleQueueArr2[i10].V();
                i10++;
            }
        }
        return j6;
    }
}
