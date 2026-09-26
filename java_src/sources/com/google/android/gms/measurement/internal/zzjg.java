package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes11.dex */
final class zzjg implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ Bundle zzd;
    private final /* synthetic */ boolean zze;
    private final /* synthetic */ boolean zzf;
    private final /* synthetic */ boolean zzg;
    private final /* synthetic */ String zzh;
    private final /* synthetic */ zziq zzi;

    zzjg(zziq zziqVar, String str, String str2, long j6, Bundle bundle, boolean z6, boolean z10, boolean z11, String str3) {
        this.zzi = zziqVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = j6;
        this.zzd = bundle;
        this.zze = z6;
        this.zzf = z10;
        this.zzg = z11;
        this.zzh = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzi.zza(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh);
    }
}
