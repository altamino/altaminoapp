package com.google.android.exoplayer2.source;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.i2;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class q implements i0 {
    private static final String TAG = "DMediaSourceFactory";

    @Nullable
    private com.google.android.exoplayer2.ui.b adViewProvider;

    @Nullable
    private x2.d adsLoaderProvider;
    private com.google.android.exoplayer2.upstream.k.a dataSourceFactory;
    private final a delegateFactoryLoader;
    private long liveMaxOffsetMs;
    private float liveMaxSpeed;
    private long liveMinOffsetMs;
    private float liveMinSpeed;
    private long liveTargetOffsetMs;

    @Nullable
    private com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy;

    @Nullable
    private b0.a serverSideAdInsertionMediaSourceFactory;
    private boolean useProgressiveMediaSourceForSubtitles;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {
        private com.google.android.exoplayer2.upstream.k.a dataSourceFactory;

        @Nullable
        private com.google.android.exoplayer2.drm.a0 drmSessionManagerProvider;
        private final com.google.android.exoplayer2.extractor.r extractorsFactory;

        @Nullable
        private com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy;
        private final Map<Integer, com.google.common.base.u<b0.a>> mediaSourceFactorySuppliers = new HashMap();
        private final Set<Integer> supportedTypes = new HashSet();
        private final Map<Integer, b0.a> mediaSourceFactories = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ b0.a k(com.google.android.exoplayer2.upstream.k.a aVar) {
            return new r0.b(aVar, this.extractorsFactory);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0086  */
        @Nullable
        private com.google.common.base.u<b0.a> l(int i10) {
            com.google.common.base.u<b0.a> uVar;
            com.google.common.base.u<b0.a> uVar2;
            if (this.mediaSourceFactorySuppliers.containsKey(Integer.valueOf(i10))) {
                return this.mediaSourceFactorySuppliers.get(Integer.valueOf(i10));
            }
            final com.google.android.exoplayer2.upstream.k.a aVar = (com.google.android.exoplayer2.upstream.k.a) com.google.android.exoplayer2.util.a.e(this.dataSourceFactory);
            com.google.common.base.u<b0.a> uVar3 = null;
            try {
                if (i10 == 0) {
                    final Class<? extends U> clsAsSubclass = Class.forName("com.google.android.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(b0.a.class);
                    uVar = new com.google.common.base.u() { // from class: com.google.android.exoplayer2.source.l
                        @Override // com.google.common.base.u
                        public final Object get() {
                            return q.f(clsAsSubclass, aVar);
                        }
                    };
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 == 3) {
                                final Class<? extends U> clsAsSubclass2 = Class.forName("com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory").asSubclass(b0.a.class);
                                uVar2 = new com.google.common.base.u() { // from class: com.google.android.exoplayer2.source.o
                                    @Override // com.google.common.base.u
                                    public final Object get() {
                                        return q.e(clsAsSubclass2);
                                    }
                                };
                            } else if (i10 == 4) {
                                uVar2 = new com.google.common.base.u() { // from class: com.google.android.exoplayer2.source.p
                                    @Override // com.google.common.base.u
                                    public final Object get() {
                                        return this.f1290a.k(aVar);
                                    }
                                };
                            }
                            uVar3 = uVar2;
                        } else {
                            final Class<? extends U> clsAsSubclass3 = Class.forName("com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(b0.a.class);
                            uVar = new com.google.common.base.u() { // from class: com.google.android.exoplayer2.source.n
                                @Override // com.google.common.base.u
                                public final Object get() {
                                    return q.f(clsAsSubclass3, aVar);
                                }
                            };
                        }
                        this.mediaSourceFactorySuppliers.put(Integer.valueOf(i10), uVar3);
                        if (uVar3 != null) {
                            this.supportedTypes.add(Integer.valueOf(i10));
                        }
                        return uVar3;
                    }
                    final Class<? extends U> clsAsSubclass4 = Class.forName("com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(b0.a.class);
                    uVar = new com.google.common.base.u() { // from class: com.google.android.exoplayer2.source.m
                        @Override // com.google.common.base.u
                        public final Object get() {
                            return q.f(clsAsSubclass4, aVar);
                        }
                    };
                }
                uVar3 = uVar;
            } catch (ClassNotFoundException unused) {
            }
            this.mediaSourceFactorySuppliers.put(Integer.valueOf(i10), uVar3);
            if (uVar3 != null) {
                this.supportedTypes.add(Integer.valueOf(i10));
            }
            return uVar3;
        }

        @Nullable
        public b0.a f(int i10) {
            b0.a aVar = this.mediaSourceFactories.get(Integer.valueOf(i10));
            if (aVar != null) {
                return aVar;
            }
            com.google.common.base.u<b0.a> uVarL = l(i10);
            if (uVarL == null) {
                return null;
            }
            b0.a aVar2 = uVarL.get();
            com.google.android.exoplayer2.drm.a0 a0Var = this.drmSessionManagerProvider;
            if (a0Var != null) {
                aVar2.a(a0Var);
            }
            com.google.android.exoplayer2.upstream.f0 f0Var = this.loadErrorHandlingPolicy;
            if (f0Var != null) {
                aVar2.b(f0Var);
            }
            this.mediaSourceFactories.put(Integer.valueOf(i10), aVar2);
            return aVar2;
        }

        public void m(com.google.android.exoplayer2.upstream.k.a aVar) {
            if (aVar != this.dataSourceFactory) {
                this.dataSourceFactory = aVar;
                this.mediaSourceFactorySuppliers.clear();
                this.mediaSourceFactories.clear();
            }
        }

        public void n(com.google.android.exoplayer2.drm.a0 a0Var) {
            this.drmSessionManagerProvider = a0Var;
            Iterator<b0.a> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().a(a0Var);
            }
        }

        public void o(com.google.android.exoplayer2.upstream.f0 f0Var) {
            this.loadErrorHandlingPolicy = f0Var;
            Iterator<b0.a> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().b(f0Var);
            }
        }

        public a(com.google.android.exoplayer2.extractor.r rVar) {
            this.extractorsFactory = rVar;
        }
    }

    public q(Context context) {
        this(new com.google.android.exoplayer2.upstream.s.a(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.l[] g(a2 a2Var) {
        com.google.android.exoplayer2.extractor.l[] lVarArr = new com.google.android.exoplayer2.extractor.l[1];
        com.google.android.exoplayer2.text.l lVar = com.google.android.exoplayer2.text.l.DEFAULT;
        lVarArr[0] = lVar.a(a2Var) ? new com.google.android.exoplayer2.text.m(lVar.b(a2Var), a2Var) : new b(a2Var);
        return lVarArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static b0.a j(Class<? extends b0.a> cls) {
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static b0.a k(Class<? extends b0.a> cls, com.google.android.exoplayer2.upstream.k.a aVar) {
        try {
            return cls.getConstructor(com.google.android.exoplayer2.upstream.k.a.class).newInstance(aVar);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private static final class b implements com.google.android.exoplayer2.extractor.l {
        private final a2 format;

        @Override // com.google.android.exoplayer2.extractor.l
        public boolean b(com.google.android.exoplayer2.extractor.m mVar) {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.l
        public void d(com.google.android.exoplayer2.extractor.n nVar) {
            com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(0, 3);
            nVar.h(new com.google.android.exoplayer2.extractor.b0.b(-9223372036854775807L));
            nVar.endTracks();
            e0VarTrack.d(this.format.b().e0("text/x-unknown").I(this.format.sampleMimeType).E());
        }

        @Override // com.google.android.exoplayer2.extractor.l
        public void release() {
        }

        @Override // com.google.android.exoplayer2.extractor.l
        public void seek(long j6, long j10) {
        }

        public b(a2 a2Var) {
            this.format = a2Var;
        }

        @Override // com.google.android.exoplayer2.extractor.l
        public int c(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
            if (mVar.skip(Integer.MAX_VALUE) == -1) {
                return -1;
            }
            return 0;
        }
    }

    public q(Context context, com.google.android.exoplayer2.extractor.r rVar) {
        this(new com.google.android.exoplayer2.upstream.s.a(context), rVar);
    }

    private static b0 h(i2 i2Var, b0 b0Var) {
        i2.d dVar = i2Var.clippingConfiguration;
        if (dVar.startPositionMs == 0 && dVar.endPositionMs == Long.MIN_VALUE && !dVar.relativeToDefaultPosition) {
            return b0Var;
        }
        long jW0 = com.google.android.exoplayer2.util.o0.w0(i2Var.clippingConfiguration.startPositionMs);
        long jW1 = com.google.android.exoplayer2.util.o0.w0(i2Var.clippingConfiguration.endPositionMs);
        i2.d dVar2 = i2Var.clippingConfiguration;
        return new e(b0Var, jW0, jW1, !dVar2.startsAtKeyFrame, dVar2.relativeToLiveWindow, dVar2.relativeToDefaultPosition);
    }

    private b0 i(i2 i2Var, b0 b0Var) {
        com.google.android.exoplayer2.util.a.e(i2Var.localConfiguration);
        if (i2Var.localConfiguration.adsConfiguration == null) {
            return b0Var;
        }
        com.google.android.exoplayer2.util.t.i(TAG, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider.");
        return b0Var;
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    public b0 c(i2 i2Var) {
        com.google.android.exoplayer2.util.a.e(i2Var.localConfiguration);
        String scheme = i2Var.localConfiguration.uri.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            return ((b0.a) com.google.android.exoplayer2.util.a.e(this.serverSideAdInsertionMediaSourceFactory)).c(i2Var);
        }
        i2.h hVar = i2Var.localConfiguration;
        int iK0 = com.google.android.exoplayer2.util.o0.k0(hVar.uri, hVar.mimeType);
        b0.a aVarF = this.delegateFactoryLoader.f(iK0);
        com.google.android.exoplayer2.util.a.j(aVarF, "No suitable media source factory found for content type: " + iK0);
        i2.g.a aVarB = i2Var.liveConfiguration.b();
        if (i2Var.liveConfiguration.targetOffsetMs == -9223372036854775807L) {
            aVarB.k(this.liveTargetOffsetMs);
        }
        if (i2Var.liveConfiguration.minPlaybackSpeed == -3.4028235E38f) {
            aVarB.j(this.liveMinSpeed);
        }
        if (i2Var.liveConfiguration.maxPlaybackSpeed == -3.4028235E38f) {
            aVarB.h(this.liveMaxSpeed);
        }
        if (i2Var.liveConfiguration.minOffsetMs == -9223372036854775807L) {
            aVarB.i(this.liveMinOffsetMs);
        }
        if (i2Var.liveConfiguration.maxOffsetMs == -9223372036854775807L) {
            aVarB.g(this.liveMaxOffsetMs);
        }
        i2.g gVarF = aVarB.f();
        if (!gVarF.equals(i2Var.liveConfiguration)) {
            i2Var = i2Var.b().c(gVarF).a();
        }
        b0 b0VarC = aVarF.c(i2Var);
        com.google.common.collect.a0<i2.l> a0Var = ((i2.h) com.google.android.exoplayer2.util.o0.j(i2Var.localConfiguration)).subtitleConfigurations;
        if (!a0Var.isEmpty()) {
            b0[] b0VarArr = new b0[a0Var.size() + 1];
            b0VarArr[0] = b0VarC;
            for (int i10 = 0; i10 < a0Var.size(); i10++) {
                if (this.useProgressiveMediaSourceForSubtitles) {
                    final a2 a2VarE = new a2.b().e0(a0Var.get(i10).mimeType).V(a0Var.get(i10).language).g0(a0Var.get(i10).selectionFlags).c0(a0Var.get(i10).roleFlags).U(a0Var.get(i10).label).S(a0Var.get(i10).id).E();
                    r0.b bVar = new r0.b(this.dataSourceFactory, new com.google.android.exoplayer2.extractor.r() { // from class: com.google.android.exoplayer2.source.k
                        @Override // com.google.android.exoplayer2.extractor.r
                        public /* synthetic */ com.google.android.exoplayer2.extractor.l[] a(Uri uri, Map map) {
                            return com.google.android.exoplayer2.extractor.q.a(this, uri, map);
                        }

                        @Override // com.google.android.exoplayer2.extractor.r
                        public final com.google.android.exoplayer2.extractor.l[] createExtractors() {
                            return q.g(a2VarE);
                        }
                    });
                    com.google.android.exoplayer2.upstream.f0 f0Var = this.loadErrorHandlingPolicy;
                    if (f0Var != null) {
                        bVar.b(f0Var);
                    }
                    b0VarArr[i10 + 1] = bVar.c(i2.d(a0Var.get(i10).uri.toString()));
                } else {
                    b1.b bVar2 = new b1.b(this.dataSourceFactory);
                    com.google.android.exoplayer2.upstream.f0 f0Var2 = this.loadErrorHandlingPolicy;
                    if (f0Var2 != null) {
                        bVar2.b(f0Var2);
                    }
                    b0VarArr[i10 + 1] = bVar2.a(a0Var.get(i10), -9223372036854775807L);
                }
            }
            b0VarC = new k0(b0VarArr);
        }
        return i(i2Var, h(i2Var, b0VarC));
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public q a(com.google.android.exoplayer2.drm.a0 a0Var) {
        this.delegateFactoryLoader.n((com.google.android.exoplayer2.drm.a0) com.google.android.exoplayer2.util.a.f(a0Var, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public q b(com.google.android.exoplayer2.upstream.f0 f0Var) {
        this.loadErrorHandlingPolicy = (com.google.android.exoplayer2.upstream.f0) com.google.android.exoplayer2.util.a.f(f0Var, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.delegateFactoryLoader.o(f0Var);
        return this;
    }

    public q(com.google.android.exoplayer2.upstream.k.a aVar) {
        this(aVar, new com.google.android.exoplayer2.extractor.i());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ b0.a e(Class cls) {
        return j(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ b0.a f(Class cls, com.google.android.exoplayer2.upstream.k.a aVar) {
        return k(cls, aVar);
    }

    public q(com.google.android.exoplayer2.upstream.k.a aVar, com.google.android.exoplayer2.extractor.r rVar) {
        this.dataSourceFactory = aVar;
        a aVar2 = new a(rVar);
        this.delegateFactoryLoader = aVar2;
        aVar2.m(aVar);
        this.liveTargetOffsetMs = -9223372036854775807L;
        this.liveMinOffsetMs = -9223372036854775807L;
        this.liveMaxOffsetMs = -9223372036854775807L;
        this.liveMinSpeed = -3.4028235E38f;
        this.liveMaxSpeed = -3.4028235E38f;
    }
}
