package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
final class zzhx implements Runnable {
    private final /* synthetic */ zzbg zza;
    private final /* synthetic */ zzo zzb;
    private final /* synthetic */ zzhj zzc;

    zzhx(zzhj zzhjVar, zzbg zzbgVar, zzo zzoVar) {
        this.zzc = zzhjVar;
        this.zza = zzbgVar;
        this.zzb = zzoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzc(this.zzc.zzb(this.zza, this.zzb), this.zzb);
    }
}
