package com.coloros.ocs.base.common.api;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.coloros.ocs.base.common.api.a.c;
import com.coloros.ocs.base.common.api.c;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c<O extends a.c, R extends c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    O f940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a<O> f942c;
    private j d;
    private f1.a e;

    @MainThread
    public c(@NonNull Activity activity, a<O> aVar, @Nullable O o, f1.a aVar2) {
        c1.b.a(activity, "Null activity is not permitted.");
        c1.b.a(aVar, "Api must not be null.");
        Context applicationContext = activity.getApplicationContext();
        this.f941b = applicationContext;
        c1.a.a(applicationContext);
        this.f942c = aVar;
        this.e = aVar2;
        j jVarB = j.b(this.f941b);
        this.d = jVarB;
        jVarB.g(this, this.e);
    }

    protected a<O> d() {
        return this.f942c;
    }

    public R a(f fVar) {
        return (R) b(fVar, new Handler(Looper.getMainLooper()));
    }

    public R b(f fVar, @Nullable Handler handler) {
        this.d.e(this, fVar, handler);
        return this;
    }

    protected <TResult> g1.a<TResult> c(Looper looper, g.b<TResult> bVar, g.a<TResult> aVar) {
        c1.a.b("color doRegisterListener");
        g1.b bVar2 = new g1.b();
        j.f(this, new g(looper, bVar2, bVar, aVar));
        return bVar2;
    }

    protected boolean e() {
        return j.i(this);
    }

    public c(@NonNull Context context, a<O> aVar, @Nullable O o, f1.a aVar2) {
        c1.b.a(context, "Null context is not permitted.");
        c1.b.a(aVar, "Api must not be null.");
        Context applicationContext = context.getApplicationContext();
        this.f941b = applicationContext;
        c1.a.a(applicationContext);
        this.f942c = aVar;
        this.e = aVar2;
        j jVarB = j.b(this.f941b);
        this.d = jVarB;
        jVarB.g(this, this.e);
    }
}
