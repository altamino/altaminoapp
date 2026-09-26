package com.bumptech.glide.load.engine;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
class l<R> implements h.b<R>, a1.a.f {
    private static final c DEFAULT_FACTORY = new c();
    private final com.bumptech.glide.load.engine.executor.a animationExecutor;
    final e cbs;
    com.bumptech.glide.load.a dataSource;
    private h<R> decodeJob;
    private final com.bumptech.glide.load.engine.executor.a diskCacheExecutor;
    private final m engineJobListener;
    p<?> engineResource;
    private final c engineResourceFactory;
    q exception;
    private boolean hasLoadFailed;
    private boolean hasResource;
    private boolean isCacheable;
    private volatile boolean isCancelled;
    private com.bumptech.glide.load.g key;
    private boolean onlyRetrieveFromCache;
    private final AtomicInteger pendingCallbacks;
    private final Pools.Pool<l<?>> pool;
    private v<?> resource;
    private final p.a resourceListener;
    private final com.bumptech.glide.load.engine.executor.a sourceExecutor;
    private final com.bumptech.glide.load.engine.executor.a sourceUnlimitedExecutor;
    private final a1.c stateVerifier;
    private boolean useAnimationPool;
    private boolean useUnlimitedSourceGeneratorPool;

    private class a implements Runnable {
        private final y0.g cb;

        a(y0.g gVar) {
            this.cb = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.cb.g()) {
                synchronized (l.this) {
                    try {
                        if (l.this.cbs.b(this.cb)) {
                            l.this.f(this.cb);
                        }
                        l.this.i();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    private class b implements Runnable {
        private final y0.g cb;

        b(y0.g gVar) {
            this.cb = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.cb.g()) {
                synchronized (l.this) {
                    try {
                        if (l.this.cbs.b(this.cb)) {
                            l.this.engineResource.c();
                            l.this.g(this.cb);
                            l.this.r(this.cb);
                        }
                        l.this.i();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    @VisibleForTesting
    static class c {
        public <R> p<R> a(v<R> vVar, boolean z6, com.bumptech.glide.load.g gVar, p.a aVar) {
            return new p<>(vVar, z6, true, gVar, aVar);
        }

        c() {
        }
    }

    static final class d {
        final y0.g cb;
        final Executor executor;

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.cb.equals(((d) obj).cb);
            }
            return false;
        }

        public int hashCode() {
            return this.cb.hashCode();
        }

        d(y0.g gVar, Executor executor) {
            this.cb = gVar;
            this.executor = executor;
        }
    }

    static final class e implements Iterable<d> {
        private final List<d> callbacksAndExecutors;

        e() {
            this(new ArrayList(2));
        }

        e(List<d> list) {
            this.callbacksAndExecutors = list;
        }

        private static d d(y0.g gVar) {
            return new d(gVar, com.bumptech.glide.util.e.a());
        }

        void a(y0.g gVar, Executor executor) {
            this.callbacksAndExecutors.add(new d(gVar, executor));
        }

        boolean b(y0.g gVar) {
            return this.callbacksAndExecutors.contains(d(gVar));
        }

        e c() {
            return new e(new ArrayList(this.callbacksAndExecutors));
        }

        void clear() {
            this.callbacksAndExecutors.clear();
        }

        void e(y0.g gVar) {
            this.callbacksAndExecutors.remove(d(gVar));
        }

        boolean isEmpty() {
            return this.callbacksAndExecutors.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<d> iterator() {
            return this.callbacksAndExecutors.iterator();
        }

        int size() {
            return this.callbacksAndExecutors.size();
        }
    }

    l(com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, m mVar, p.a aVar5, Pools.Pool<l<?>> pool) {
        this(aVar, aVar2, aVar3, aVar4, mVar, aVar5, pool, DEFAULT_FACTORY);
    }

    private com.bumptech.glide.load.engine.executor.a j() {
        if (this.useUnlimitedSourceGeneratorPool) {
            return this.sourceUnlimitedExecutor;
        }
        return this.useAnimationPool ? this.animationExecutor : this.sourceExecutor;
    }

    private boolean m() {
        return this.hasLoadFailed || this.hasResource || this.isCancelled;
    }

    private synchronized void q() {
        if (this.key == null) {
            throw new IllegalArgumentException();
        }
        this.cbs.clear();
        this.key = null;
        this.engineResource = null;
        this.resource = null;
        this.hasLoadFailed = false;
        this.isCancelled = false;
        this.hasResource = false;
        this.decodeJob.y(false);
        this.decodeJob = null;
        this.exception = null;
        this.dataSource = null;
        this.pool.b(this);
    }

    synchronized void a(y0.g gVar, Executor executor) {
        try {
            this.stateVerifier.c();
            this.cbs.a(gVar, executor);
            if (this.hasResource) {
                k(1);
                executor.execute(new b(gVar));
            } else if (this.hasLoadFailed) {
                k(1);
                executor.execute(new a(gVar));
            } else {
                com.bumptech.glide.util.j.a(!this.isCancelled, "Cannot add callbacks to a cancelled EngineJob");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.h.b
    public void b(q qVar) {
        synchronized (this) {
            this.exception = qVar;
        }
        n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.h.b
    public void c(v<R> vVar, com.bumptech.glide.load.a aVar) {
        synchronized (this) {
            this.resource = vVar;
            this.dataSource = aVar;
        }
        o();
    }

    @Override // a1.a.f
    @NonNull
    public a1.c e() {
        return this.stateVerifier;
    }

    void i() {
        p<?> pVar;
        synchronized (this) {
            try {
                this.stateVerifier.c();
                com.bumptech.glide.util.j.a(m(), "Not yet complete!");
                int iDecrementAndGet = this.pendingCallbacks.decrementAndGet();
                com.bumptech.glide.util.j.a(iDecrementAndGet >= 0, "Can't decrement below 0");
                if (iDecrementAndGet == 0) {
                    pVar = this.engineResource;
                    q();
                } else {
                    pVar = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (pVar != null) {
            pVar.f();
        }
    }

    synchronized void k(int i10) {
        p<?> pVar;
        com.bumptech.glide.util.j.a(m(), "Not yet complete!");
        if (this.pendingCallbacks.getAndAdd(i10) == 0 && (pVar = this.engineResource) != null) {
            pVar.c();
        }
    }

    @VisibleForTesting
    synchronized l<R> l(com.bumptech.glide.load.g gVar, boolean z6, boolean z10, boolean z11, boolean z12) {
        this.key = gVar;
        this.isCacheable = z6;
        this.useUnlimitedSourceGeneratorPool = z10;
        this.useAnimationPool = z11;
        this.onlyRetrieveFromCache = z12;
        return this;
    }

    void n() {
        synchronized (this) {
            try {
                this.stateVerifier.c();
                if (this.isCancelled) {
                    q();
                    return;
                }
                if (this.cbs.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.hasLoadFailed) {
                    throw new IllegalStateException("Already failed once");
                }
                this.hasLoadFailed = true;
                com.bumptech.glide.load.g gVar = this.key;
                e eVarC = this.cbs.c();
                k(eVarC.size() + 1);
                this.engineJobListener.a(this, gVar, null);
                for (d dVar : eVarC) {
                    dVar.executor.execute(new a(dVar.cb));
                }
                i();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void o() {
        synchronized (this) {
            try {
                this.stateVerifier.c();
                if (this.isCancelled) {
                    this.resource.a();
                    q();
                    return;
                }
                if (this.cbs.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.hasResource) {
                    throw new IllegalStateException("Already have resource");
                }
                this.engineResource = this.engineResourceFactory.a(this.resource, this.isCacheable, this.key, this.resourceListener);
                this.hasResource = true;
                e eVarC = this.cbs.c();
                k(eVarC.size() + 1);
                this.engineJobListener.a(this, this.key, this.engineResource);
                for (d dVar : eVarC) {
                    dVar.executor.execute(new b(dVar.cb));
                }
                i();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean p() {
        return this.onlyRetrieveFromCache;
    }

    synchronized void r(y0.g gVar) {
        try {
            this.stateVerifier.c();
            this.cbs.e(gVar);
            if (this.cbs.isEmpty()) {
                h();
                if (this.hasResource || this.hasLoadFailed) {
                    if (this.pendingCallbacks.get() == 0) {
                        q();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void s(h<R> hVar) {
        try {
            this.decodeJob = hVar;
            (hVar.E() ? this.diskCacheExecutor : j()).execute(hVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @VisibleForTesting
    l(com.bumptech.glide.load.engine.executor.a aVar, com.bumptech.glide.load.engine.executor.a aVar2, com.bumptech.glide.load.engine.executor.a aVar3, com.bumptech.glide.load.engine.executor.a aVar4, m mVar, p.a aVar5, Pools.Pool<l<?>> pool, c cVar) {
        this.cbs = new e();
        this.stateVerifier = a1.c.a();
        this.pendingCallbacks = new AtomicInteger();
        this.diskCacheExecutor = aVar;
        this.sourceExecutor = aVar2;
        this.sourceUnlimitedExecutor = aVar3;
        this.animationExecutor = aVar4;
        this.engineJobListener = mVar;
        this.resourceListener = aVar5;
        this.pool = pool;
        this.engineResourceFactory = cVar;
    }

    @GuardedBy
    void f(y0.g gVar) {
        try {
            gVar.b(this.exception);
        } catch (Throwable th) {
            throw new com.bumptech.glide.load.engine.b(th);
        }
    }

    @GuardedBy
    void g(y0.g gVar) {
        try {
            gVar.c(this.engineResource, this.dataSource);
        } catch (Throwable th) {
            throw new com.bumptech.glide.load.engine.b(th);
        }
    }

    @Override // com.bumptech.glide.load.engine.h.b
    public void d(h<?> hVar) {
        j().execute(hVar);
    }

    void h() {
        if (m()) {
            return;
        }
        this.isCancelled = true;
        this.decodeJob.a();
        this.engineJobListener.b(this, this.key);
    }
}
