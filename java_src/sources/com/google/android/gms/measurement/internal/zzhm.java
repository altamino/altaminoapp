package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
final class zzhm implements Runnable {
    private final /* synthetic */ zzad zza;
    private final /* synthetic */ zzo zzb;
    private final /* synthetic */ zzhj zzc;

    zzhm(zzhj zzhjVar, zzad zzadVar, zzo zzoVar) {
        this.zzc = zzhjVar;
        this.zza = zzadVar;
        this.zzb = zzoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzr();
        if (this.zza.zzc.zza() == null) {
            this.zzc.zza.zza(this.zza, this.zzb);
        } else {
            this.zzc.zza.zzb(this.zza, this.zzb);
        }
    }
}
