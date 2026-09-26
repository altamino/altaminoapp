package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
final class zzge implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzgb zzb;

    zzge(zzgb zzgbVar, boolean z6) {
        this.zzb = zzgbVar;
        this.zza = z6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb.zza(this.zza);
    }
}
