package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
final class zzhp implements Runnable {
    private final /* synthetic */ zzad zza;
    private final /* synthetic */ zzhj zzb;

    zzhp(zzhj zzhjVar, zzad zzadVar) {
        this.zzb = zzhjVar;
        this.zza = zzadVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzr();
        if (this.zza.zzc.zza() == null) {
            this.zzb.zza.zza(this.zza);
        } else {
            this.zzb.zza.zzb(this.zza);
        }
    }
}
