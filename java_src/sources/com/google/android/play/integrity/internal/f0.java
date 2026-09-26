package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;

/* JADX INFO: loaded from: classes11.dex */
final class f0 extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ IBinder f1441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f1442b;

    f0(c cVar, IBinder iBinder) {
        this.f1442b = cVar;
        this.f1441a = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.y
    public final void b() {
        d dVar = this.f1442b.f1434a;
        dVar.o = (IInterface) dVar.f1440j.a(this.f1441a);
        d.r(this.f1442b.f1434a);
        this.f1442b.f1434a.h = false;
        Iterator it = this.f1442b.f1434a.e.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f1442b.f1434a.e.clear();
    }
}
