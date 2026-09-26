package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class i implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1445a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile m f1446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Object f1447c = f1445a;

    private i(m mVar) {
        this.f1446b = mVar;
    }

    public static m b(m mVar) {
        return mVar instanceof i ? mVar : new i(mVar);
    }

    @Override // com.google.android.play.integrity.internal.m
    public final Object a() {
        Object objA = this.f1447c;
        Object obj = f1445a;
        if (objA == obj) {
            synchronized (this) {
                try {
                    objA = this.f1447c;
                    if (objA == obj) {
                        objA = this.f1446b.a();
                        Object obj2 = this.f1447c;
                        if (obj2 != obj && obj2 != objA) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + objA + ". This is likely due to a circular dependency.");
                        }
                        this.f1447c = objA;
                        this.f1446b = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return objA;
    }
}
