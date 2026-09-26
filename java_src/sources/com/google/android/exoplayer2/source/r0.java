package com.google.android.exoplayer2.source;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.analytics.t1;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.z3;

/* JADX INFO: loaded from: classes8.dex */
public final class r0 extends com.google.android.exoplayer2.source.a implements q0.b {
    public static final int DEFAULT_LOADING_CHECK_INTERVAL_BYTES = 1048576;
    private final int continueLoadingCheckIntervalBytes;
    private final com.google.android.exoplayer2.upstream.k.a dataSourceFactory;
    private final com.google.android.exoplayer2.drm.x drmSessionManager;
    private final com.google.android.exoplayer2.upstream.f0 loadableLoadErrorHandlingPolicy;
    private final i2.h localConfiguration;
    private final i2 mediaItem;
    private final l0.a progressiveMediaExtractorFactory;
    private long timelineDurationUs;
    private boolean timelineIsLive;
    private boolean timelineIsPlaceholder;
    private boolean timelineIsSeekable;

    @Nullable
    private com.google.android.exoplayer2.upstream.m0 transferListener;

    public static final class b implements i0 {
        private int continueLoadingCheckIntervalBytes;

        @Nullable
        private String customCacheKey;
        private final com.google.android.exoplayer2.upstream.k.a dataSourceFactory;
        private com.google.android.exoplayer2.drm.a0 drmSessionManagerProvider;
        private com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy;
        private l0.a progressiveMediaExtractorFactory;

        @Nullable
        private Object tag;

        public b(com.google.android.exoplayer2.upstream.k.a aVar) {
            this(aVar, new com.google.android.exoplayer2.extractor.i());
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, final com.google.android.exoplayer2.extractor.r rVar) {
            this(aVar, new l0.a() { // from class: com.google.android.exoplayer2.source.s0
                @Override // com.google.android.exoplayer2.source.l0.a
                public final l0 a(t1 t1Var) {
                    return r0.b.f(rVar, t1Var);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ l0 f(com.google.android.exoplayer2.extractor.r rVar, t1 t1Var) {
            return new c(rVar);
        }

        @Override // com.google.android.exoplayer2.source.b0.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public r0 c(i2 i2Var) {
            com.google.android.exoplayer2.util.a.e(i2Var.localConfiguration);
            i2.h hVar = i2Var.localConfiguration;
            boolean z6 = false;
            boolean z10 = hVar.tag == null && this.tag != null;
            if (hVar.customCacheKey == null && this.customCacheKey != null) {
                z6 = true;
            }
            if (z10 && z6) {
                i2Var = i2Var.b().f(this.tag).b(this.customCacheKey).a();
            } else if (z10) {
                i2Var = i2Var.b().f(this.tag).a();
            } else if (z6) {
                i2Var = i2Var.b().b(this.customCacheKey).a();
            }
            i2 i2Var2 = i2Var;
            return new r0(i2Var2, this.dataSourceFactory, this.progressiveMediaExtractorFactory, this.drmSessionManagerProvider.a(i2Var2), this.loadErrorHandlingPolicy, this.continueLoadingCheckIntervalBytes, null);
        }

        @Override // com.google.android.exoplayer2.source.b0.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public b a(com.google.android.exoplayer2.drm.a0 a0Var) {
            this.drmSessionManagerProvider = (com.google.android.exoplayer2.drm.a0) com.google.android.exoplayer2.util.a.f(a0Var, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // com.google.android.exoplayer2.source.b0.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public b b(com.google.android.exoplayer2.upstream.f0 f0Var) {
            this.loadErrorHandlingPolicy = (com.google.android.exoplayer2.upstream.f0) com.google.android.exoplayer2.util.a.f(f0Var, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, l0.a aVar2) {
            this(aVar, aVar2, new com.google.android.exoplayer2.drm.l(), new com.google.android.exoplayer2.upstream.w(), 1048576);
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, l0.a aVar2, com.google.android.exoplayer2.drm.a0 a0Var, com.google.android.exoplayer2.upstream.f0 f0Var, int i10) {
            this.dataSourceFactory = aVar;
            this.progressiveMediaExtractorFactory = aVar2;
            this.drmSessionManagerProvider = a0Var;
            this.loadErrorHandlingPolicy = f0Var;
            this.continueLoadingCheckIntervalBytes = i10;
        }
    }

    /* synthetic */ r0(i2 i2Var, com.google.android.exoplayer2.upstream.k.a aVar, l0.a aVar2, com.google.android.exoplayer2.drm.x xVar, com.google.android.exoplayer2.upstream.f0 f0Var, int i10, a aVar3) {
        this(i2Var, aVar, aVar2, xVar, f0Var, i10);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public y c(b0.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6) {
        com.google.android.exoplayer2.upstream.k kVarCreateDataSource = this.dataSourceFactory.createDataSource();
        com.google.android.exoplayer2.upstream.m0 m0Var = this.transferListener;
        if (m0Var != null) {
            kVarCreateDataSource.b(m0Var);
        }
        return new q0(this.localConfiguration.uri, kVarCreateDataSource, this.progressiveMediaExtractorFactory.a(u()), this.drmSessionManager, m(bVar), this.loadableLoadErrorHandlingPolicy, p(bVar), this, bVar2, this.localConfiguration.customCacheKey, this.continueLoadingCheckIntervalBytes);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public i2 j() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public void maybeThrowSourceInfoRefreshError() {
    }

    class a extends s {
        a(r0 r0Var, z3 z3Var) {
            super(z3Var);
        }

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public z3.b k(int i10, z3.b bVar, boolean z6) {
            super.k(i10, bVar, z6);
            bVar.isPlaceholder = true;
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public z3.d s(int i10, z3.d dVar, long j6) {
            super.s(i10, dVar, j6);
            dVar.isPlaceholder = true;
            return dVar;
        }
    }

    private r0(i2 i2Var, com.google.android.exoplayer2.upstream.k.a aVar, l0.a aVar2, com.google.android.exoplayer2.drm.x xVar, com.google.android.exoplayer2.upstream.f0 f0Var, int i10) {
        this.localConfiguration = (i2.h) com.google.android.exoplayer2.util.a.e(i2Var.localConfiguration);
        this.mediaItem = i2Var;
        this.dataSourceFactory = aVar;
        this.progressiveMediaExtractorFactory = aVar2;
        this.drmSessionManager = xVar;
        this.loadableLoadErrorHandlingPolicy = f0Var;
        this.continueLoadingCheckIntervalBytes = i10;
        this.timelineIsPlaceholder = true;
        this.timelineDurationUs = -9223372036854775807L;
    }

    private void z() {
        z3 z0Var = new z0(this.timelineDurationUs, this.timelineIsSeekable, false, this.timelineIsLive, (Object) null, this.mediaItem);
        if (this.timelineIsPlaceholder) {
            z0Var = new a(this, z0Var);
        }
        x(z0Var);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public void f(y yVar) {
        ((q0) yVar).S();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void w(@Nullable com.google.android.exoplayer2.upstream.m0 m0Var) {
        this.transferListener = m0Var;
        this.drmSessionManager.prepare();
        this.drmSessionManager.d((Looper) com.google.android.exoplayer2.util.a.e(Looper.myLooper()), u());
        z();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void y() {
        this.drmSessionManager.release();
    }

    @Override // com.google.android.exoplayer2.source.q0.b
    public void q(long j6, boolean z6, boolean z10) {
        if (j6 == -9223372036854775807L) {
            j6 = this.timelineDurationUs;
        }
        if (!this.timelineIsPlaceholder && this.timelineDurationUs == j6 && this.timelineIsSeekable == z6 && this.timelineIsLive == z10) {
            return;
        }
        this.timelineDurationUs = j6;
        this.timelineIsSeekable = z6;
        this.timelineIsLive = z10;
        this.timelineIsPlaceholder = false;
        z();
    }
}
