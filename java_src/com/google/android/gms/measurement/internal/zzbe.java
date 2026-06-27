package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzbe implements Runnable {
    private final /* synthetic */ boolean zzkw;
    private final /* synthetic */ zzbd zzkx;

    zzbe(zzbd zzbdVar, boolean z) {
        this.zzkx = zzbdVar;
        this.zzkw = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzkx.zzkt.zzj(this.zzkw);
    }
}
