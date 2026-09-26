package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzms implements Runnable {
    private final /* synthetic */ zzna zza;
    private final /* synthetic */ zzmp zzb;

    zzms(zzmp zzmpVar, zzna zznaVar) {
        this.zzb = zzmpVar;
        this.zza = zznaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmp.zza(this.zzb, this.zza);
        this.zzb.zzv();
    }
}
