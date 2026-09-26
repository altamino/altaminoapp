package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzlv implements Runnable {
    private final /* synthetic */ zzmp zza;
    private final /* synthetic */ Runnable zzb;

    zzlv(zzlu zzluVar, zzmp zzmpVar, Runnable runnable) {
        this.zza = zzmpVar;
        this.zzb = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzr();
        this.zza.zza(this.zzb);
        this.zza.zzw();
    }
}
