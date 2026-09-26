package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzma implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzlx zzb;

    zzma(zzlx zzlxVar, long j6) {
        this.zzb = zzlxVar;
        this.zza = j6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlx.zzb(this.zzb, this.zza);
    }
}
