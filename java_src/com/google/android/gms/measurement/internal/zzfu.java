package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzfu implements Runnable {
    private final /* synthetic */ zzfy zzsq;
    private final /* synthetic */ zzft zzsr;

    zzfu(zzft zzftVar, zzfy zzfyVar) {
        this.zzsr = zzftVar;
        this.zzsq = zzfyVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzsr.zza(this.zzsq);
        this.zzsr.start();
    }
}
