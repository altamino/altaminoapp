package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes11.dex */
final class zzjn implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ String zzb = null;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ boolean zze;
    private final /* synthetic */ zziq zzf;

    zzjn(zziq zziqVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z6) {
        this.zzf = zziqVar;
        this.zza = atomicReference;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = z6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzf.zzu.zzr().zza(this.zza, null, this.zzc, this.zzd, this.zze);
    }
}
