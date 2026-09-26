package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes8.dex */
final class c implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f1434a;

    /* synthetic */ c(d dVar, b bVar) {
        this.f1434a = dVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f1434a.f1438c.c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f1434a.c().post(new f0(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f1434a.f1438c.c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f1434a.c().post(new g0(this));
    }
}
