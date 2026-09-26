package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
final class zzav implements Runnable {
    private final /* synthetic */ zzif zza;
    private final /* synthetic */ zzaw zzb;

    zzav(zzaw zzawVar, zzif zzifVar) {
        this.zzb = zzawVar;
        this.zza = zzifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzd();
        if (zzae.zza()) {
            this.zza.zzl().zzb(this);
            return;
        }
        boolean zZzc = this.zzb.zzc();
        this.zzb.zzd = 0L;
        if (zZzc) {
            this.zzb.zzb();
        }
    }
}
