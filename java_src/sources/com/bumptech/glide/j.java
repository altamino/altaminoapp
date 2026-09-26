package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.manager.m;
import com.bumptech.glide.manager.n;
import com.bumptech.glide.manager.p;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class j implements ComponentCallbacks2, com.bumptech.glide.manager.i {
    private static final y0.f DECODE_TYPE_BITMAP = y0.f.b0(Bitmap.class).J();
    private static final y0.f DECODE_TYPE_GIF = y0.f.b0(com.bumptech.glide.load.resource.gif.c.class).J();
    private static final y0.f DOWNLOAD_ONLY_OPTIONS = y0.f.c0(com.bumptech.glide.load.engine.j.DATA).N(f.LOW).V(true);
    private final Runnable addSelfToLifecycle;
    private final com.bumptech.glide.manager.c connectivityMonitor;
    protected final Context context;
    private final CopyOnWriteArrayList<y0.e<Object>> defaultRequestListeners;
    protected final com.bumptech.glide.b glide;
    final com.bumptech.glide.manager.h lifecycle;
    private final Handler mainHandler;
    private boolean pauseAllRequestsOnTrimMemoryModerate;

    @GuardedBy
    private y0.f requestOptions;

    @GuardedBy
    private final n requestTracker;

    @GuardedBy
    private final p targetTracker;

    @GuardedBy
    private final m treeNode;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVar = j.this;
            jVar.lifecycle.b(jVar);
        }
    }

    private class b implements com.bumptech.glide.manager.c.a {

        @GuardedBy
        private final n requestTracker;

        b(n nVar) {
            this.requestTracker = nVar;
        }

        @Override // com.bumptech.glide.manager.c.a
        public void a(boolean z6) {
            if (z6) {
                synchronized (j.this) {
                    this.requestTracker.e();
                }
            }
        }
    }

    public j(@NonNull com.bumptech.glide.b bVar, @NonNull com.bumptech.glide.manager.h hVar, @NonNull m mVar, @NonNull Context context) {
        this(bVar, hVar, mVar, new n(), bVar.g(), context);
    }

    List<y0.e<Object>> m() {
        return this.defaultRequestListeners;
    }

    synchronized y0.f n() {
        return this.requestOptions;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.bumptech.glide.manager.i
    public synchronized void onDestroy() {
        try {
            this.targetTracker.onDestroy();
            Iterator<com.bumptech.glide.request.target.e<?>> it = this.targetTracker.j().iterator();
            while (it.hasNext()) {
                l(it.next());
            }
            this.targetTracker.i();
            this.requestTracker.b();
            this.lifecycle.a(this);
            this.lifecycle.a(this.connectivityMonitor);
            this.mainHandler.removeCallbacks(this.addSelfToLifecycle);
            this.glide.s(this);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // com.bumptech.glide.manager.i
    public synchronized void onStart() {
        t();
        this.targetTracker.onStart();
    }

    @Override // com.bumptech.glide.manager.i
    public synchronized void onStop() {
        s();
        this.targetTracker.onStop();
    }

    public synchronized void q() {
        this.requestTracker.c();
    }

    public synchronized void r() {
        q();
        Iterator<j> it = this.treeNode.a().iterator();
        while (it.hasNext()) {
            it.next().q();
        }
    }

    public synchronized void s() {
        this.requestTracker.d();
    }

    public synchronized void t() {
        this.requestTracker.f();
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.requestTracker + ", treeNode=" + this.treeNode + "}";
    }

    protected synchronized void u(@NonNull y0.f fVar) {
        this.requestOptions = fVar.e().c();
    }

    synchronized void v(@NonNull com.bumptech.glide.request.target.e<?> eVar, @NonNull y0.c cVar) {
        this.targetTracker.k(eVar);
        this.requestTracker.g(cVar);
    }

    synchronized boolean w(@NonNull com.bumptech.glide.request.target.e<?> eVar) {
        y0.c cVarA = eVar.a();
        if (cVarA == null) {
            return true;
        }
        if (!this.requestTracker.a(cVarA)) {
            return false;
        }
        this.targetTracker.l(eVar);
        eVar.c(null);
        return true;
    }

    @NonNull
    @CheckResult
    public <ResourceType> i<ResourceType> i(@NonNull Class<ResourceType> cls) {
        return new i<>(this.glide, this, cls, this.context);
    }

    @NonNull
    @CheckResult
    public i<Bitmap> j() {
        return i(Bitmap.class).b(DECODE_TYPE_BITMAP);
    }

    @NonNull
    @CheckResult
    public i<Drawable> k() {
        return i(Drawable.class);
    }

    public void l(@Nullable com.bumptech.glide.request.target.e<?> eVar) {
        if (eVar == null) {
            return;
        }
        x(eVar);
    }

    @NonNull
    <T> k<?, T> o(Class<T> cls) {
        return this.glide.i().d(cls);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        if (i10 == 60 && this.pauseAllRequestsOnTrimMemoryModerate) {
            r();
        }
    }

    private void x(@NonNull com.bumptech.glide.request.target.e<?> eVar) {
        boolean zW = w(eVar);
        y0.c cVarA = eVar.a();
        if (!zW && !this.glide.p(eVar) && cVarA != null) {
            eVar.c(null);
            cVarA.clear();
        }
    }

    @NonNull
    @CheckResult
    public i<Drawable> p(@Nullable String str) {
        return k().o0(str);
    }

    j(com.bumptech.glide.b bVar, com.bumptech.glide.manager.h hVar, m mVar, n nVar, com.bumptech.glide.manager.d dVar, Context context) {
        this.targetTracker = new p();
        a aVar = new a();
        this.addSelfToLifecycle = aVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.mainHandler = handler;
        this.glide = bVar;
        this.lifecycle = hVar;
        this.treeNode = mVar;
        this.requestTracker = nVar;
        this.context = context;
        com.bumptech.glide.manager.c cVarA = dVar.a(context.getApplicationContext(), new b(nVar));
        this.connectivityMonitor = cVarA;
        if (com.bumptech.glide.util.k.o()) {
            handler.post(aVar);
        } else {
            hVar.b(this);
        }
        hVar.b(cVarA);
        this.defaultRequestListeners = new CopyOnWriteArrayList<>(bVar.i().b());
        u(bVar.i().c());
        bVar.o(this);
    }
}
