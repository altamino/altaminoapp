package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzlz implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzlx zzb;

    zzlz(zzlx zzlxVar, long j6) {
        this.zzb = zzlxVar;
        this.zza = j6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlx.zza(this.zzb, this.zza);
    }
}
