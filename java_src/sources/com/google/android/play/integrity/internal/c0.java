package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes11.dex */
final class c0 extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f1435a;

    c0(d dVar) {
        this.f1435a = dVar;
    }

    @Override // com.google.android.play.integrity.internal.y
    public final void b() {
        synchronized (this.f1435a.g) {
            try {
                if (this.f1435a.m.get() > 0 && this.f1435a.m.decrementAndGet() > 0) {
                    this.f1435a.f1438c.c("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                d dVar = this.f1435a;
                if (dVar.o != null) {
                    dVar.f1438c.c("Unbind from service.", new Object[0]);
                    d dVar2 = this.f1435a;
                    dVar2.f1437b.unbindService(dVar2.n);
                    this.f1435a.h = false;
                    this.f1435a.o = null;
                    this.f1435a.n = null;
                }
                this.f1435a.x();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
