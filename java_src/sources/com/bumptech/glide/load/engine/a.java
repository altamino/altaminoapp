package com.bumptech.glide.load.engine;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
final class a {

    @VisibleForTesting
    final Map<com.bumptech.glide.load.g, d> activeEngineResources;

    @Nullable
    private volatile c cb;
    private final boolean isActiveResourceRetentionAllowed;
    private volatile boolean isShutdown;
    private p.a listener;
    private final Executor monitorClearedResourcesExecutor;
    private final ReferenceQueue<p<?>> resourceReferenceQueue;

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.a$a, reason: collision with other inner class name */
    class ThreadFactoryC0119a implements ThreadFactory {

        /* JADX INFO: renamed from: com.bumptech.glide.load.engine.a$a$a, reason: collision with other inner class name */
        class RunnableC0120a implements Runnable {
            final /* synthetic */ Runnable val$r;

            RunnableC0120a(Runnable runnable) {
                this.val$r = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.val$r.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC0120a(runnable), "glide-active-resources");
        }

        ThreadFactoryC0119a() {
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b();
        }
    }

    @VisibleForTesting
    interface c {
    }

    a(boolean z6) {
        this(z6, Executors.newSingleThreadExecutor(new ThreadFactoryC0119a()));
    }

    synchronized void a(com.bumptech.glide.load.g gVar, p<?> pVar) {
        d dVarPut = this.activeEngineResources.put(gVar, new d(gVar, pVar, this.resourceReferenceQueue, this.isActiveResourceRetentionAllowed));
        if (dVarPut != null) {
            dVarPut.a();
        }
    }

    void c(@NonNull d dVar) {
        v<?> vVar;
        synchronized (this) {
            this.activeEngineResources.remove(dVar.key);
            if (dVar.isCacheable && (vVar = dVar.resource) != null) {
                this.listener.c(dVar.key, new p<>(vVar, true, false, dVar.key, this.listener));
            }
        }
    }

    synchronized void d(com.bumptech.glide.load.g gVar) {
        d dVarRemove = this.activeEngineResources.remove(gVar);
        if (dVarRemove != null) {
            dVarRemove.a();
        }
    }

    @Nullable
    synchronized p<?> e(com.bumptech.glide.load.g gVar) {
        d dVar = this.activeEngineResources.get(gVar);
        if (dVar == null) {
            return null;
        }
        p<?> pVar = dVar.get();
        if (pVar == null) {
            c(dVar);
        }
        return pVar;
    }

    void f(p.a aVar) {
        synchronized (aVar) {
            synchronized (this) {
                this.listener = aVar;
            }
        }
    }

    @VisibleForTesting
    static final class d extends WeakReference<p<?>> {
        final boolean isCacheable;
        final com.bumptech.glide.load.g key;

        @Nullable
        v<?> resource;

        void a() {
            this.resource = null;
            clear();
        }

        d(@NonNull com.bumptech.glide.load.g gVar, @NonNull p<?> pVar, @NonNull ReferenceQueue<? super p<?>> referenceQueue, boolean z6) {
            v<?> vVar;
            super(pVar, referenceQueue);
            this.key = (com.bumptech.glide.load.g) com.bumptech.glide.util.j.d(gVar);
            if (pVar.e() && z6) {
                vVar = (v) com.bumptech.glide.util.j.d(pVar.d());
            } else {
                vVar = null;
            }
            this.resource = vVar;
            this.isCacheable = pVar.e();
        }
    }

    void b() {
        while (!this.isShutdown) {
            try {
                c((d) this.resourceReferenceQueue.remove());
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @VisibleForTesting
    a(boolean z6, Executor executor) {
        this.activeEngineResources = new HashMap();
        this.resourceReferenceQueue = new ReferenceQueue<>();
        this.isActiveResourceRetentionAllowed = z6;
        this.monitorClearedResourcesExecutor = executor;
        executor.execute(new b());
    }
}
