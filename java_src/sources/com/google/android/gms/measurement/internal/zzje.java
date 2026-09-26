package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzje implements Runnable {
    private final /* synthetic */ zziq zza;

    zzje(zziq zziqVar) {
        this.zza = zziqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb.zza();
    }
}
