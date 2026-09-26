package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class k implements m, com.bumptech.glide.load.engine.cache.h.a, p.a {
    private static final int JOB_POOL_SIZE = 150;
    private static final String TAG = "Engine";
    private static final boolean VERBOSE_IS_LOGGABLE = Log.isLoggable(TAG, 2);
    private final com.bumptech.glide.load.engine.a activeResources;
    private final com.bumptech.glide.load.engine.cache.h cache;
    private final a decodeJobFactory;
    private final c diskCacheProvider;
    private final b engineJobFactory;
    private final s jobs;
    private final o keyFactory;
    private final y resourceRecycler;

    @VisibleForTesting
    static class b {
        final com.bumptech.glide.load.engine.executor.a animationExecutor;
        final com.bumptech.glide.load.engine.executor.a diskCacheExecutor;
        final m engineJobListener;
        final Pools.Pool<l<?>> pool = a1.a.d(150, new a());
        final p.a resourceListener;
        final com.bumptech.glide.load.engine.executor.a sourceExecutor;
        final com.bumptech.glide.load.engine.executor.a sourceUnlimitedExecutor;

        class a implements a1.a.d<l<?>> {
            a() {
            }

            @Override // a1.a.d
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public l<?> a() {
                b bVar = b.this;
                return new l<>(bVar.diskCacheExecutor, bVar.sourceExecutor, bVar.sourceUnlimitedExecutor, bVar.animationExecutor, bVar.engineJobListener, bVar.resourceListener, bVar.pool);
            }
        }

        <R> l<R> a(com.bumptech.glide.load.g gVar, boolean z6, boolean z10, boolean z11, boolean z12) {
            return ((l) com.bumptech.glide.util.j.d(this.pool.a())).l(gVar, z6, z10, z11, z12);
        }

        b(com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, m mVar, p.a aVar5) {
            this.diskCacheExecutor = aVar;
            this.sourceExecutor = aVar2;
            this.sourceUnlimitedExecutor = aVar3;
            this.animationExecutor = aVar4;
            this.engineJobListener = mVar;
            this.resourceListener = aVar5;
        }
    }

    private static class c implements h.e {
        private volatile com.bumptech.glide.load.engine.cache.a diskCache;
        private final com.bumptech.glide.load.engine.cache.a.InterfaceC0121a factory;

        @Override // com.bumptech.glide.load.engine.h.e
        public com.bumptech.glide.load.engine.cache.a a() {
            if (this.diskCache == null) {
                synchronized (this) {
                    try {
                        if (this.diskCache == null) {
                            this.diskCache = this.factory.build();
                        }
                        if (this.diskCache == null) {
                            this.diskCache = new com.bumptech.glide.load.engine.cache.b();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.diskCache;
        }

        c(com.bumptech.glide.load.engine.cache.a.InterfaceC0121a interfaceC0121a) {
            this.factory = interfaceC0121a;
        }
    }

    public class d {
        private final y0.g cb;
        private final l<?> engineJob;

        d(y0.g gVar, l<?> lVar) {
            this.cb = gVar;
            this.engineJob = lVar;
        }

        public void a() {
            synchronized (k.this) {
                this.engineJob.r(this.cb);
            }
        }
    }

    public k(com.bumptech.glide.load.engine.cache.h hVar, com.bumptech.glide.load.engine.cache.a.InterfaceC0121a interfaceC0121a, com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, boolean z6) {
        this(hVar, interfaceC0121a, aVar, aVar2, aVar3, aVar4, null, null, null, null, null, null, z6);
    }

    @Nullable
    private p<?> i(n nVar, boolean z6, long j6) {
        if (!z6) {
            return null;
        }
        p<?> pVarG = g(nVar);
        if (pVarG != null) {
            if (VERBOSE_IS_LOGGABLE) {
                j("Loaded resource from active resources", j6, nVar);
            }
            return pVarG;
        }
        p<?> pVarH = h(nVar);
        if (pVarH == null) {
            return null;
        }
        if (VERBOSE_IS_LOGGABLE) {
            j("Loaded resource from cache", j6, nVar);
        }
        return pVarH;
    }

    private <R> d l(com.bumptech.glide.d dVar, Object obj, com.bumptech.glide.load.g gVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.f fVar, j jVar, Map<Class<?>, com.bumptech.glide.load.m<?>> map, boolean z6, boolean z10, com.bumptech.glide.load.i iVar, boolean z11, boolean z12, boolean z13, boolean z14, y0.g gVar2, Executor executor, n nVar, long j6) {
        l<?> lVarA = this.jobs.a(nVar, z14);
        if (lVarA != null) {
            lVarA.a(gVar2, executor);
            if (VERBOSE_IS_LOGGABLE) {
                j("Added to existing load", j6, nVar);
            }
            return new d(gVar2, lVarA);
        }
        l<R> lVarA2 = this.engineJobFactory.a(nVar, z11, z12, z13, z14);
        h<R> hVarA = this.decodeJobFactory.a(dVar, obj, nVar, gVar, i10, i11, cls, cls2, fVar, jVar, map, z6, z10, z14, iVar, lVarA2);
        this.jobs.c(nVar, lVarA2);
        lVarA2.a(gVar2, executor);
        lVarA2.s(hVarA);
        if (VERBOSE_IS_LOGGABLE) {
            j("Started new load", j6, nVar);
        }
        return new d(gVar2, lVarA2);
    }

    @Override // com.bumptech.glide.load.engine.m
    public synchronized void a(l<?> lVar, com.bumptech.glide.load.g gVar, p<?> pVar) {
        if (pVar != null) {
            try {
                if (pVar.e()) {
                    this.activeResources.a(gVar, pVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.jobs.d(gVar, lVar);
    }

    @Override // com.bumptech.glide.load.engine.m
    public synchronized void b(l<?> lVar, com.bumptech.glide.load.g gVar) {
        this.jobs.d(gVar, lVar);
    }

    public <R> d f(com.bumptech.glide.d dVar, Object obj, com.bumptech.glide.load.g gVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.f fVar, j jVar, Map<Class<?>, com.bumptech.glide.load.m<?>> map, boolean z6, boolean z10, com.bumptech.glide.load.i iVar, boolean z11, boolean z12, boolean z13, boolean z14, y0.g gVar2, Executor executor) {
        long jB = VERBOSE_IS_LOGGABLE ? com.bumptech.glide.util.f.b() : 0L;
        n nVarA = this.keyFactory.a(obj, gVar, i10, i11, map, cls, cls2, iVar);
        synchronized (this) {
            try {
                p<?> pVarI = i(nVarA, z11, jB);
                if (pVarI == null) {
                    return l(dVar, obj, gVar, i10, i11, cls, cls2, fVar, jVar, map, z6, z10, iVar, z11, z12, z13, z14, gVar2, executor, nVarA, jB);
                }
                gVar2.c(pVarI, com.bumptech.glide.load.a.MEMORY_CACHE);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    static class a {
        private int creationOrder;
        final h.e diskCacheProvider;
        final Pools.Pool<h<?>> pool = a1.a.d(150, new C0127a());

        /* JADX INFO: renamed from: com.bumptech.glide.load.engine.k$a$a, reason: collision with other inner class name */
        class C0127a implements a1.a.d<h<?>> {
            C0127a() {
            }

            @Override // a1.a.d
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public h<?> a() {
                a aVar = a.this;
                return new h<>(aVar.diskCacheProvider, aVar.pool);
            }
        }

        <R> h<R> a(com.bumptech.glide.d dVar, Object obj, n nVar, com.bumptech.glide.load.g gVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.f fVar, j jVar, Map<Class<?>, com.bumptech.glide.load.m<?>> map, boolean z6, boolean z10, boolean z11, com.bumptech.glide.load.i iVar, h.b<R> bVar) {
            h hVar = (h) com.bumptech.glide.util.j.d(this.pool.a());
            int i12 = this.creationOrder;
            this.creationOrder = i12 + 1;
            return hVar.p(dVar, obj, nVar, gVar, i10, i11, cls, cls2, fVar, jVar, map, z6, z10, z11, iVar, bVar, i12);
        }

        a(h.e eVar) {
            this.diskCacheProvider = eVar;
        }
    }

    @VisibleForTesting
    k(com.bumptech.glide.load.engine.cache.h hVar, com.bumptech.glide.load.engine.cache.a.InterfaceC0121a interfaceC0121a, com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, s sVar, o oVar, com.bumptech.glide.load.engine.a aVar5, b bVar, a aVar6, y yVar, boolean z6) {
        this.cache = hVar;
        c cVar = new c(interfaceC0121a);
        this.diskCacheProvider = cVar;
        com.bumptech.glide.load.engine.a aVar7 = aVar5 == null ? new com.bumptech.glide.load.engine.a(z6) : aVar5;
        this.activeResources = aVar7;
        aVar7.f(this);
        this.keyFactory = oVar == null ? new o() : oVar;
        this.jobs = sVar == null ? new s() : sVar;
        this.engineJobFactory = bVar == null ? new b(aVar, aVar2, aVar3, aVar4, this, this) : bVar;
        this.decodeJobFactory = aVar6 == null ? new a(cVar) : aVar6;
        this.resourceRecycler = yVar == null ? new y() : yVar;
        hVar.f(this);
    }

    private p<?> e(com.bumptech.glide.load.g gVar) {
        v<?> vVarE = this.cache.e(gVar);
        if (vVarE == null) {
            return null;
        }
        return vVarE instanceof p ? (p) vVarE : new p<>(vVarE, true, true, gVar, this);
    }

    @Nullable
    private p<?> g(com.bumptech.glide.load.g gVar) {
        p<?> pVarE = this.activeResources.e(gVar);
        if (pVarE != null) {
            pVarE.c();
        }
        return pVarE;
    }

    private static void j(String str, long j6, com.bumptech.glide.load.g gVar) {
        Log.v(TAG, str + " in " + com.bumptech.glide.util.f.a(j6) + "ms, key: " + gVar);
    }

    @Override // com.bumptech.glide.load.engine.p.a
    public void c(com.bumptech.glide.load.g gVar, p<?> pVar) {
        this.activeResources.d(gVar);
        if (pVar.e()) {
            this.cache.c(gVar, pVar);
        } else {
            this.resourceRecycler.a(pVar, false);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.h.a
    public void d(@NonNull v<?> vVar) {
        this.resourceRecycler.a(vVar, true);
    }

    public void k(v<?> vVar) {
        if (!(vVar instanceof p)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((p) vVar).f();
    }

    private p<?> h(com.bumptech.glide.load.g gVar) {
        p<?> pVarE = e(gVar);
        if (pVarE != null) {
            pVarE.c();
            this.activeResources.a(gVar, pVarE);
        }
        return pVarE;
    }
}
