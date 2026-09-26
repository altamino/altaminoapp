package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzkn implements Runnable {
    private final /* synthetic */ zzki zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ zzkh zzc;

    zzkn(zzkh zzkhVar, zzki zzkiVar, long j6) {
        this.zzc = zzkhVar;
        this.zza = zzkiVar;
        this.zzb = j6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza(this.zza, false, this.zzb);
        zzkh zzkhVar = this.zzc;
        zzkhVar.zza = null;
        zzkhVar.zzo().zza((zzki) null);
    }
}
