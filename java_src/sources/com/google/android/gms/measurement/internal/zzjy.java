package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzps;

/* JADX INFO: loaded from: classes11.dex */
final class zzjy implements Runnable {
    private final /* synthetic */ zzih zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzih zzd;
    private final /* synthetic */ zziq zze;

    zzjy(zziq zziqVar, zzih zzihVar, long j6, boolean z6, zzih zzihVar2) {
        this.zze = zziqVar;
        this.zza = zzihVar;
        this.zzb = j6;
        this.zzc = z6;
        this.zzd = zzihVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza(this.zza);
        zziq.zza(this.zze, this.zza, this.zzb, false, this.zzc);
        if (zzps.zza() && this.zze.zze().zza(zzbi.zzbs)) {
            zziq.zza(this.zze, this.zza, this.zzd);
        }
    }
}
