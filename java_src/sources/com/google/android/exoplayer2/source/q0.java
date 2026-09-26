package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.r3;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class q0 implements y, com.google.android.exoplayer2.extractor.n, com.google.android.exoplayer2.upstream.g0.b<a>, com.google.android.exoplayer2.upstream.g0.f, v0.d {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private final com.google.android.exoplayer2.upstream.b allocator;

    @Nullable
    private y.a callback;
    private final long continueLoadingCheckIntervalBytes;

    @Nullable
    private final String customCacheKey;
    private final com.google.android.exoplayer2.upstream.k dataSource;
    private final com.google.android.exoplayer2.drm.v.a drmEventDispatcher;
    private final com.google.android.exoplayer2.drm.x drmSessionManager;
    private int enabledTrackCount;
    private int extractedSamplesCountAtStartOfLoad;
    private boolean haveAudioVideoTracks;

    @Nullable
    private IcyHeaders icyHeaders;
    private boolean isLengthKnown;
    private boolean isLive;
    private long lastSeekPositionUs;
    private final b listener;
    private final com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy;
    private boolean loadingFinished;
    private final h0.a mediaSourceEventDispatcher;
    private boolean notifyDiscontinuity;
    private boolean pendingDeferredRetry;
    private boolean prepared;
    private final l0 progressiveMediaExtractor;
    private boolean released;
    private boolean sampleQueuesBuilt;
    private com.google.android.exoplayer2.extractor.b0 seekMap;
    private boolean seenFirstTrackSelection;
    private e trackState;
    private final Uri uri;
    private static final Map<String, String> ICY_METADATA_HEADERS = y();
    private static final a2 ICY_FORMAT = new a2.b().S("icy").e0("application/x-icy").E();
    private final com.google.android.exoplayer2.upstream.g0 loader = new com.google.android.exoplayer2.upstream.g0("ProgressiveMediaPeriod");
    private final com.google.android.exoplayer2.util.g loadCondition = new com.google.android.exoplayer2.util.g();
    private final Runnable maybeFinishPrepareRunnable = new Runnable() { // from class: com.google.android.exoplayer2.source.m0
        @Override // java.lang.Runnable
        public final void run() {
            this.f1284a.H();
        }
    };
    private final Runnable onContinueLoadingRequestedRunnable = new Runnable() { // from class: com.google.android.exoplayer2.source.n0
        @Override // java.lang.Runnable
        public final void run() {
            this.f1287a.E();
        }
    };
    private final Handler handler = com.google.android.exoplayer2.util.o0.u();
    private d[] sampleQueueTrackIds = new d[0];
    private v0[] sampleQueues = new v0[0];
    private long pendingResetPositionUs = -9223372036854775807L;
    private long durationUs = -9223372036854775807L;
    private int dataType = 1;

    final class a implements com.google.android.exoplayer2.upstream.g0.e, t.a {
        private final com.google.android.exoplayer2.upstream.l0 dataSource;
        private final com.google.android.exoplayer2.extractor.n extractorOutput;

        @Nullable
        private com.google.android.exoplayer2.extractor.e0 icyTrackOutput;
        private volatile boolean loadCanceled;
        private final com.google.android.exoplayer2.util.g loadCondition;
        private final l0 progressiveMediaExtractor;
        private long seekTimeUs;
        private boolean seenIcyMetadata;
        private final Uri uri;
        private final com.google.android.exoplayer2.extractor.a0 positionHolder = new com.google.android.exoplayer2.extractor.a0();
        private boolean pendingExtractorSeek = true;
        private final long loadTaskId = u.a();
        private com.google.android.exoplayer2.upstream.o dataSpec = g(0);

        @Override // com.google.android.exoplayer2.upstream.g0.e
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        public a(Uri uri, com.google.android.exoplayer2.upstream.k kVar, l0 l0Var, com.google.android.exoplayer2.extractor.n nVar, com.google.android.exoplayer2.util.g gVar) {
            this.uri = uri;
            this.dataSource = new com.google.android.exoplayer2.upstream.l0(kVar);
            this.progressiveMediaExtractor = l0Var;
            this.extractorOutput = nVar;
            this.loadCondition = gVar;
        }

        private com.google.android.exoplayer2.upstream.o g(long j6) {
            return new com.google.android.exoplayer2.upstream.o.b().h(this.uri).g(j6).f(q0.this.customCacheKey).b(6).e(q0.ICY_METADATA_HEADERS).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(long j6, long j10) {
            this.positionHolder.position = j6;
            this.seekTimeUs = j10;
            this.pendingExtractorSeek = true;
            this.seenIcyMetadata = false;
        }

        @Override // com.google.android.exoplayer2.source.t.a
        public void a(com.google.android.exoplayer2.util.c0 c0Var) {
            long jMax = !this.seenIcyMetadata ? this.seekTimeUs : Math.max(q0.this.A(true), this.seekTimeUs);
            int iA = c0Var.a();
            com.google.android.exoplayer2.extractor.e0 e0Var = (com.google.android.exoplayer2.extractor.e0) com.google.android.exoplayer2.util.a.e(this.icyTrackOutput);
            e0Var.c(c0Var, iA);
            e0Var.e(jMax, 1, iA, 0, null);
            this.seenIcyMetadata = true;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0029 */
        @Override // com.google.android.exoplayer2.upstream.g0.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void load() throws IOException {
            int iC = 0;
            while (iC == 0 && !this.loadCanceled) {
                long j6 = this.positionHolder.position;
                com.google.android.exoplayer2.upstream.o oVarG = g(j6);
                this.dataSpec = oVarG;
                long jC = this.dataSource.c(oVarG);
                if (jC != -1) {
                    jC += j6;
                    q0.this.M();
                }
                long j10 = jC;
                q0.this.icyHeaders = IcyHeaders.a(this.dataSource.getResponseHeaders());
                com.google.android.exoplayer2.upstream.h tVar = this.dataSource;
                if (q0.this.icyHeaders != null && q0.this.icyHeaders.metadataInterval != -1) {
                    tVar = new t(this.dataSource, q0.this.icyHeaders.metadataInterval, this);
                    com.google.android.exoplayer2.extractor.e0 e0VarB = q0.this.B();
                    this.icyTrackOutput = e0VarB;
                    e0VarB.d(q0.ICY_FORMAT);
                }
                long jA = j6;
                this.progressiveMediaExtractor.d(tVar, this.uri, this.dataSource.getResponseHeaders(), j6, j10, this.extractorOutput);
                if (q0.this.icyHeaders != null) {
                    this.progressiveMediaExtractor.b();
                }
                if (this.pendingExtractorSeek) {
                    this.progressiveMediaExtractor.seek(jA, this.seekTimeUs);
                    this.pendingExtractorSeek = false;
                }
                while (true) {
                    long j11 = jA;
                    while (true) {
                        if (iC != 0 || this.loadCanceled) {
                            break;
                        }
                        try {
                            this.loadCondition.a();
                            iC = this.progressiveMediaExtractor.c(this.positionHolder);
                            jA = this.progressiveMediaExtractor.a();
                            if (jA > q0.this.continueLoadingCheckIntervalBytes + j11) {
                                this.loadCondition.c();
                                q0.this.handler.post(q0.this.onContinueLoadingRequestedRunnable);
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                }
                if (iC == 1) {
                    iC = 0;
                } else if (this.progressiveMediaExtractor.a() != -1) {
                    this.positionHolder.position = this.progressiveMediaExtractor.a();
                }
                com.google.android.exoplayer2.upstream.n.a(this.dataSource);
            }
        }
    }

    interface b {
        void q(long j6, boolean z6, boolean z10);
    }

    private final class c implements w0 {
        private final int track;

        public c(int i10) {
            this.track = i10;
        }

        @Override // com.google.android.exoplayer2.source.w0
        public int a(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i10) {
            return q0.this.R(this.track, b2Var, gVar, i10);
        }

        @Override // com.google.android.exoplayer2.source.w0
        public boolean isReady() {
            return q0.this.D(this.track);
        }

        @Override // com.google.android.exoplayer2.source.w0
        public void maybeThrowError() throws IOException {
            q0.this.L(this.track);
        }

        @Override // com.google.android.exoplayer2.source.w0
        public int skipData(long j6) {
            return q0.this.V(this.track, j6);
        }
    }

    private boolean C() {
        return this.pendingResetPositionUs != -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        this.isLengthKnown = true;
    }

    @Override // com.google.android.exoplayer2.upstream.g0.b
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public void c(a aVar, long j6, long j10, boolean z6) {
        com.google.android.exoplayer2.upstream.l0 l0Var = aVar.dataSource;
        u uVar = new u(aVar.loadTaskId, aVar.dataSpec, l0Var.e(), l0Var.f(), j6, j10, l0Var.d());
        this.loadErrorHandlingPolicy.a(aVar.loadTaskId);
        this.mediaSourceEventDispatcher.o(uVar, 1, -1, null, 0, null, aVar.seekTimeUs, this.durationUs);
        if (z6) {
            return;
        }
        for (v0 v0Var : this.sampleQueues) {
            v0Var.N();
        }
        if (this.enabledTrackCount > 0) {
            ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).c(this);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public void reevaluateBuffer(long j6) {
    }

    private static final class d {
        public final int id;
        public final boolean isIcyTrack;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.id == dVar.id && this.isIcyTrack == dVar.isIcyTrack;
        }

        public int hashCode() {
            return (this.id * 31) + (this.isIcyTrack ? 1 : 0);
        }

        public d(int i10, boolean z6) {
            this.id = i10;
            this.isIcyTrack = z6;
        }
    }

    private static final class e {
        public final boolean[] trackEnabledStates;
        public final boolean[] trackIsAudioVideoFlags;
        public final boolean[] trackNotifiedDownstreamFormats;
        public final h1 tracks;

        public e(h1 h1Var, boolean[] zArr) {
            this.tracks = h1Var;
            this.trackIsAudioVideoFlags = zArr;
            int i10 = h1Var.length;
            this.trackEnabledStates = new boolean[i10];
            this.trackNotifiedDownstreamFormats = new boolean[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A(boolean z6) {
        long jMax = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.sampleQueues.length; i10++) {
            if (z6 || ((e) com.google.android.exoplayer2.util.a.e(this.trackState)).trackEnabledStates[i10]) {
                jMax = Math.max(jMax, this.sampleQueues[i10].t());
            }
        }
        return jMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E() {
        if (this.released) {
            return;
        }
        ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        if (this.released || this.prepared || !this.sampleQueuesBuilt || this.seekMap == null) {
            return;
        }
        for (v0 v0Var : this.sampleQueues) {
            if (v0Var.z() == null) {
                return;
            }
        }
        this.loadCondition.c();
        int length = this.sampleQueues.length;
        f1[] f1VarArr = new f1[length];
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            a2 a2VarE = (a2) com.google.android.exoplayer2.util.a.e(this.sampleQueues[i10].z());
            String str = a2VarE.sampleMimeType;
            boolean zL = com.google.android.exoplayer2.util.x.l(str);
            boolean z6 = zL || com.google.android.exoplayer2.util.x.o(str);
            zArr[i10] = z6;
            this.haveAudioVideoTracks = z6 | this.haveAudioVideoTracks;
            IcyHeaders icyHeaders = this.icyHeaders;
            if (icyHeaders != null) {
                if (zL || this.sampleQueueTrackIds[i10].isIcyTrack) {
                    Metadata metadata = a2VarE.metadata;
                    a2VarE = a2VarE.b().X(metadata == null ? new Metadata(icyHeaders) : metadata.a(icyHeaders)).E();
                }
                if (zL && a2VarE.averageBitrate == -1 && a2VarE.peakBitrate == -1 && icyHeaders.bitrate != -1) {
                    a2VarE = a2VarE.b().G(icyHeaders.bitrate).E();
                }
            }
            f1VarArr[i10] = new f1(Integer.toString(i10), a2VarE.c(this.drmSessionManager.c(a2VarE)));
        }
        this.trackState = new e(new h1(f1VarArr), zArr);
        this.prepared = true;
        ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).d(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.f1289a.F();
            }
        });
    }

    private com.google.android.exoplayer2.extractor.e0 Q(d dVar) {
        int length = this.sampleQueues.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (dVar.equals(this.sampleQueueTrackIds[i10])) {
                return this.sampleQueues[i10];
            }
        }
        v0 v0VarK = v0.k(this.allocator, this.drmSessionManager, this.drmEventDispatcher);
        v0VarK.T(this);
        int i11 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.sampleQueueTrackIds, i11);
        dVarArr[length] = dVar;
        this.sampleQueueTrackIds = (d[]) com.google.android.exoplayer2.util.o0.k(dVarArr);
        v0[] v0VarArr = (v0[]) Arrays.copyOf(this.sampleQueues, i11);
        v0VarArr[length] = v0VarK;
        this.sampleQueues = (v0[]) com.google.android.exoplayer2.util.o0.k(v0VarArr);
        return v0VarK;
    }

    private boolean T(boolean[] zArr, long j6) {
        int length = this.sampleQueues.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.sampleQueues[i10].Q(j6, false) && (zArr[i10] || !this.haveAudioVideoTracks)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public void G(com.google.android.exoplayer2.extractor.b0 b0Var) {
        this.seekMap = this.icyHeaders == null ? b0Var : new com.google.android.exoplayer2.extractor.b0.b(-9223372036854775807L);
        this.durationUs = b0Var.getDurationUs();
        boolean z6 = !this.isLengthKnown && b0Var.getDurationUs() == -9223372036854775807L;
        this.isLive = z6;
        this.dataType = z6 ? 7 : 1;
        this.listener.q(this.durationUs, b0Var.isSeekable(), this.isLive);
        if (this.prepared) {
            return;
        }
        H();
    }

    private void W() {
        a aVar = new a(this.uri, this.dataSource, this.progressiveMediaExtractor, this, this.loadCondition);
        if (this.prepared) {
            com.google.android.exoplayer2.util.a.g(C());
            long j6 = this.durationUs;
            if (j6 != -9223372036854775807L && this.pendingResetPositionUs > j6) {
                this.loadingFinished = true;
                this.pendingResetPositionUs = -9223372036854775807L;
                return;
            }
            aVar.h(((com.google.android.exoplayer2.extractor.b0) com.google.android.exoplayer2.util.a.e(this.seekMap)).getSeekPoints(this.pendingResetPositionUs).first.position, this.pendingResetPositionUs);
            for (v0 v0Var : this.sampleQueues) {
                v0Var.R(this.pendingResetPositionUs);
            }
            this.pendingResetPositionUs = -9223372036854775807L;
        }
        this.extractedSamplesCountAtStartOfLoad = z();
        this.mediaSourceEventDispatcher.u(new u(aVar.loadTaskId, aVar.dataSpec, this.loader.n(aVar, this, this.loadErrorHandlingPolicy.b(this.dataType))), 1, -1, null, 0, null, aVar.seekTimeUs, this.durationUs);
    }

    private boolean X() {
        return this.notifyDiscontinuity || C();
    }

    private void w() {
        com.google.android.exoplayer2.util.a.g(this.prepared);
        com.google.android.exoplayer2.util.a.e(this.trackState);
        com.google.android.exoplayer2.util.a.e(this.seekMap);
    }

    private boolean x(a aVar, int i10) {
        com.google.android.exoplayer2.extractor.b0 b0Var;
        if (this.isLengthKnown || !((b0Var = this.seekMap) == null || b0Var.getDurationUs() == -9223372036854775807L)) {
            this.extractedSamplesCountAtStartOfLoad = i10;
            return true;
        }
        if (this.prepared && !X()) {
            this.pendingDeferredRetry = true;
            return false;
        }
        this.notifyDiscontinuity = this.prepared;
        this.lastSeekPositionUs = 0L;
        this.extractedSamplesCountAtStartOfLoad = 0;
        for (v0 v0Var : this.sampleQueues) {
            v0Var.N();
        }
        aVar.h(0L, 0L);
        return true;
    }

    private static Map<String, String> y() {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(map);
    }

    private int z() {
        int iA = 0;
        for (v0 v0Var : this.sampleQueues) {
            iA += v0Var.A();
        }
        return iA;
    }

    com.google.android.exoplayer2.extractor.e0 B() {
        return Q(new d(0, true));
    }

    void K() throws IOException {
        this.loader.k(this.loadErrorHandlingPolicy.b(this.dataType));
    }

    void L(int i10) throws IOException {
        this.sampleQueues[i10].G();
        K();
    }

    @Override // com.google.android.exoplayer2.upstream.g0.b
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void d(a aVar, long j6, long j10) {
        com.google.android.exoplayer2.extractor.b0 b0Var;
        if (this.durationUs == -9223372036854775807L && (b0Var = this.seekMap) != null) {
            boolean zIsSeekable = b0Var.isSeekable();
            long jA = A(true);
            long j11 = jA == Long.MIN_VALUE ? 0L : jA + 10000;
            this.durationUs = j11;
            this.listener.q(j11, zIsSeekable, this.isLive);
        }
        com.google.android.exoplayer2.upstream.l0 l0Var = aVar.dataSource;
        u uVar = new u(aVar.loadTaskId, aVar.dataSpec, l0Var.e(), l0Var.f(), j6, j10, l0Var.d());
        this.loadErrorHandlingPolicy.a(aVar.loadTaskId);
        this.mediaSourceEventDispatcher.q(uVar, 1, -1, null, 0, null, aVar.seekTimeUs, this.durationUs);
        this.loadingFinished = true;
        ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).c(this);
    }

    @Override // com.google.android.exoplayer2.upstream.g0.b
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public com.google.android.exoplayer2.upstream.g0.c g(a aVar, long j6, long j10, IOException iOException, int i10) {
        com.google.android.exoplayer2.upstream.g0.c cVarG;
        com.google.android.exoplayer2.upstream.l0 l0Var = aVar.dataSource;
        u uVar = new u(aVar.loadTaskId, aVar.dataSpec, l0Var.e(), l0Var.f(), j6, j10, l0Var.d());
        long jC = this.loadErrorHandlingPolicy.c(new com.google.android.exoplayer2.upstream.f0.a(uVar, new x(1, -1, null, 0, null, com.google.android.exoplayer2.util.o0.P0(aVar.seekTimeUs), com.google.android.exoplayer2.util.o0.P0(this.durationUs)), iOException, i10));
        if (jC == -9223372036854775807L) {
            cVarG = com.google.android.exoplayer2.upstream.g0.DONT_RETRY_FATAL;
        } else {
            int iZ = z();
            cVarG = x(aVar, iZ) ? com.google.android.exoplayer2.upstream.g0.g(iZ > this.extractedSamplesCountAtStartOfLoad, jC) : com.google.android.exoplayer2.upstream.g0.DONT_RETRY;
        }
        boolean z6 = !cVarG.c();
        this.mediaSourceEventDispatcher.s(uVar, 1, -1, null, 0, null, aVar.seekTimeUs, this.durationUs, iOException, z6);
        if (z6) {
            this.loadErrorHandlingPolicy.a(aVar.loadTaskId);
        }
        return cVarG;
    }

    public void S() {
        if (this.prepared) {
            for (v0 v0Var : this.sampleQueues) {
                v0Var.J();
            }
        }
        this.loader.m(this);
        this.handler.removeCallbacksAndMessages(null);
        this.callback = null;
        this.released = true;
    }

    @Override // com.google.android.exoplayer2.source.v0.d
    public void a(a2 a2Var) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean continueLoading(long j6) {
        if (this.loadingFinished || this.loader.h() || this.pendingDeferredRetry) {
            return false;
        }
        if (this.prepared && this.enabledTrackCount == 0) {
            return false;
        }
        boolean zE = this.loadCondition.e();
        if (this.loader.i()) {
            return zE;
        }
        W();
        return true;
    }

    @Override // com.google.android.exoplayer2.source.y
    public void f(y.a aVar, long j6) {
        this.callback = aVar;
        this.loadCondition.e();
        W();
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void h(final com.google.android.exoplayer2.extractor.b0 b0Var) {
        this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.p0
            @Override // java.lang.Runnable
            public final void run() {
                this.f1292a.G(b0Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean isLoading() {
        return this.loader.i() && this.loadCondition.d();
    }

    @Override // com.google.android.exoplayer2.upstream.g0.f
    public void onLoaderReleased() {
        for (v0 v0Var : this.sampleQueues) {
            v0Var.L();
        }
        this.progressiveMediaExtractor.release();
    }

    @Override // com.google.android.exoplayer2.source.y
    public long readDiscontinuity() {
        if (!this.notifyDiscontinuity) {
            return -9223372036854775807L;
        }
        if (!this.loadingFinished && z() <= this.extractedSamplesCountAtStartOfLoad) {
            return -9223372036854775807L;
        }
        this.notifyDiscontinuity = false;
        return this.lastSeekPositionUs;
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public com.google.android.exoplayer2.extractor.e0 track(int i10, int i11) {
        return Q(new d(i10, false));
    }

    public q0(Uri uri, com.google.android.exoplayer2.upstream.k kVar, l0 l0Var, com.google.android.exoplayer2.drm.x xVar, com.google.android.exoplayer2.drm.v.a aVar, com.google.android.exoplayer2.upstream.f0 f0Var, h0.a aVar2, b bVar, com.google.android.exoplayer2.upstream.b bVar2, @Nullable String str, int i10) {
        this.uri = uri;
        this.dataSource = kVar;
        this.drmSessionManager = xVar;
        this.drmEventDispatcher = aVar;
        this.loadErrorHandlingPolicy = f0Var;
        this.mediaSourceEventDispatcher = aVar2;
        this.listener = bVar;
        this.allocator = bVar2;
        this.customCacheKey = str;
        this.continueLoadingCheckIntervalBytes = i10;
        this.progressiveMediaExtractor = l0Var;
    }

    private void I(int i10) {
        w();
        e eVar = this.trackState;
        boolean[] zArr = eVar.trackNotifiedDownstreamFormats;
        if (!zArr[i10]) {
            a2 a2VarC = eVar.tracks.b(i10).c(0);
            this.mediaSourceEventDispatcher.h(com.google.android.exoplayer2.util.x.i(a2VarC.sampleMimeType), a2VarC, 0, null, this.lastSeekPositionUs);
            zArr[i10] = true;
        }
    }

    private void J(int i10) {
        w();
        boolean[] zArr = this.trackState.trackIsAudioVideoFlags;
        if (this.pendingDeferredRetry && zArr[i10]) {
            if (!this.sampleQueues[i10].D(false)) {
                this.pendingResetPositionUs = 0L;
                this.pendingDeferredRetry = false;
                this.notifyDiscontinuity = true;
                this.lastSeekPositionUs = 0L;
                this.extractedSamplesCountAtStartOfLoad = 0;
                for (v0 v0Var : this.sampleQueues) {
                    v0Var.N();
                }
                ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).c(this);
            }
        }
    }

    boolean D(int i10) {
        if (!X() && this.sampleQueues[i10].D(this.loadingFinished)) {
            return true;
        }
        return false;
    }

    int R(int i10, b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i11) {
        if (X()) {
            return -3;
        }
        I(i10);
        int iK = this.sampleQueues[i10].K(b2Var, gVar, i11, this.loadingFinished);
        if (iK == -3) {
            J(i10);
        }
        return iK;
    }

    int V(int i10, long j6) {
        if (X()) {
            return 0;
        }
        I(i10);
        v0 v0Var = this.sampleQueues[i10];
        int iY = v0Var.y(j6, this.loadingFinished);
        v0Var.U(iY);
        if (iY == 0) {
            J(i10);
        }
        return iY;
    }

    @Override // com.google.android.exoplayer2.source.y
    public long b(com.google.android.exoplayer2.trackselection.s[] sVarArr, boolean[] zArr, w0[] w0VarArr, boolean[] zArr2, long j6) {
        boolean z6;
        com.google.android.exoplayer2.trackselection.s sVar;
        boolean z10;
        boolean z11;
        w();
        e eVar = this.trackState;
        h1 h1Var = eVar.tracks;
        boolean[] zArr3 = eVar.trackEnabledStates;
        int i10 = this.enabledTrackCount;
        int i11 = 0;
        for (int i12 = 0; i12 < sVarArr.length; i12++) {
            w0 w0Var = w0VarArr[i12];
            if (w0Var != null && (sVarArr[i12] == null || !zArr[i12])) {
                int i13 = ((c) w0Var).track;
                com.google.android.exoplayer2.util.a.g(zArr3[i13]);
                this.enabledTrackCount--;
                zArr3[i13] = false;
                w0VarArr[i12] = null;
            }
        }
        if (!this.seenFirstTrackSelection ? j6 != 0 : i10 == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        for (int i14 = 0; i14 < sVarArr.length; i14++) {
            if (w0VarArr[i14] == null && (sVar = sVarArr[i14]) != null) {
                if (sVar.length() == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                com.google.android.exoplayer2.util.a.g(z10);
                if (sVar.getIndexInTrackGroup(0) == 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                com.google.android.exoplayer2.util.a.g(z11);
                int iC = h1Var.c(sVar.getTrackGroup());
                com.google.android.exoplayer2.util.a.g(!zArr3[iC]);
                this.enabledTrackCount++;
                zArr3[iC] = true;
                w0VarArr[i14] = new c(iC);
                zArr2[i14] = true;
                if (!z6) {
                    v0 v0Var = this.sampleQueues[iC];
                    if (!v0Var.Q(j6, true) && v0Var.w() != 0) {
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
                v0[] v0VarArr = this.sampleQueues;
                int length = v0VarArr.length;
                while (i11 < length) {
                    v0VarArr[i11].p();
                    i11++;
                }
                this.loader.e();
            } else {
                v0[] v0VarArr2 = this.sampleQueues;
                int length2 = v0VarArr2.length;
                while (i11 < length2) {
                    v0VarArr2[i11].N();
                    i11++;
                }
            }
        } else if (z6) {
            j6 = seekToUs(j6);
            while (i11 < w0VarArr.length) {
                if (w0VarArr[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.seenFirstTrackSelection = true;
        return j6;
    }

    @Override // com.google.android.exoplayer2.source.y
    public void discardBuffer(long j6, boolean z6) {
        w();
        if (C()) {
            return;
        }
        boolean[] zArr = this.trackState.trackEnabledStates;
        int length = this.sampleQueues.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.sampleQueues[i10].o(j6, z6, zArr[i10]);
        }
    }

    @Override // com.google.android.exoplayer2.source.y
    public long e(long j6, r3 r3Var) {
        w();
        if (!this.seekMap.isSeekable()) {
            return 0L;
        }
        com.google.android.exoplayer2.extractor.b0.a seekPoints = this.seekMap.getSeekPoints(j6);
        return r3Var.a(j6, seekPoints.first.timeUs, seekPoints.second.timeUs);
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getBufferedPositionUs() {
        long jA;
        w();
        if (this.loadingFinished || this.enabledTrackCount == 0) {
            return Long.MIN_VALUE;
        }
        if (C()) {
            return this.pendingResetPositionUs;
        }
        if (this.haveAudioVideoTracks) {
            int length = this.sampleQueues.length;
            jA = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                e eVar = this.trackState;
                if (eVar.trackIsAudioVideoFlags[i10] && eVar.trackEnabledStates[i10] && !this.sampleQueues[i10].C()) {
                    jA = Math.min(jA, this.sampleQueues[i10].t());
                }
            }
        } else {
            jA = Long.MAX_VALUE;
        }
        if (jA == Long.MAX_VALUE) {
            jA = A(false);
        }
        if (jA == Long.MIN_VALUE) {
            return this.lastSeekPositionUs;
        }
        return jA;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.y
    public h1 getTrackGroups() {
        w();
        return this.trackState.tracks;
    }

    @Override // com.google.android.exoplayer2.source.y
    public void maybeThrowPrepareError() throws IOException {
        K();
        if (this.loadingFinished && !this.prepared) {
            throw v2.a("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.exoplayer2.source.y
    public long seekToUs(long j6) {
        w();
        boolean[] zArr = this.trackState.trackIsAudioVideoFlags;
        if (!this.seekMap.isSeekable()) {
            j6 = 0;
        }
        int i10 = 0;
        this.notifyDiscontinuity = false;
        this.lastSeekPositionUs = j6;
        if (C()) {
            this.pendingResetPositionUs = j6;
            return j6;
        }
        if (this.dataType != 7 && T(zArr, j6)) {
            return j6;
        }
        this.pendingDeferredRetry = false;
        this.pendingResetPositionUs = j6;
        this.loadingFinished = false;
        if (this.loader.i()) {
            v0[] v0VarArr = this.sampleQueues;
            int length = v0VarArr.length;
            while (i10 < length) {
                v0VarArr[i10].p();
                i10++;
            }
            this.loader.e();
        } else {
            this.loader.f();
            v0[] v0VarArr2 = this.sampleQueues;
            int length2 = v0VarArr2.length;
            while (i10 < length2) {
                v0VarArr2[i10].N();
                i10++;
            }
        }
        return j6;
    }
}
