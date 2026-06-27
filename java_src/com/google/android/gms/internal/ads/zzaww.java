package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzaww implements Runnable {
    private final /* synthetic */ zzawv zzduv;

    zzaww(zzawv zzawvVar) {
        this.zzduv = zzawvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzduv.zzdut = Thread.currentThread();
        this.zzduv.zzto();
    }
}
