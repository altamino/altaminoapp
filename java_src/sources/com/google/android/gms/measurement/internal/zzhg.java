package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
final class zzhg implements Runnable {
    private final /* synthetic */ zzio zza;
    private final /* synthetic */ zzhf zzb;

    zzhg(zzhf zzhfVar, zzio zzioVar) {
        this.zzb = zzhfVar;
        this.zza = zzioVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhf.zza(this.zzb, this.zza);
        this.zzb.zza(this.zza.zzg);
    }
}
