package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzps;

/* JADX INFO: loaded from: classes11.dex */
final class zzjv implements Runnable {
    private final /* synthetic */ zzih zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ zzih zze;
    private final /* synthetic */ zziq zzf;

    zzjv(zziq zziqVar, zzih zzihVar, long j6, long j10, boolean z6, zzih zzihVar2) {
        this.zzf = zziqVar;
        this.zza = zzihVar;
        this.zzb = j6;
        this.zzc = j10;
        this.zzd = z6;
        this.zze = zzihVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzf.zza(this.zza);
        this.zzf.zza(this.zzb, false);
        zziq.zza(this.zzf, this.zza, this.zzc, true, this.zzd);
        if (zzps.zza() && this.zzf.zze().zza(zzbi.zzbs)) {
            zziq.zza(this.zzf, this.zza, this.zze);
        }
    }
}
