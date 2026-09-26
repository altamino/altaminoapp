package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzjd implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zziq zzb;

    zzjd(zziq zziqVar, long j6) {
        this.zzb = zziqVar;
        this.zza = j6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzk().zzf.zza(this.zza);
        this.zzb.zzj().zzc().zza("Session timeout duration set", Long.valueOf(this.zza));
    }
}
