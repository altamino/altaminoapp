package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes11.dex */
final class zzkm implements Runnable {
    private final /* synthetic */ zzki zza;
    private final /* synthetic */ zzki zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ zzkh zze;

    zzkm(zzkh zzkhVar, zzki zzkiVar, zzki zzkiVar2, long j6, boolean z6) {
        this.zze = zzkhVar;
        this.zza = zzkiVar;
        this.zzb = zzkiVar2;
        this.zzc = j6;
        this.zzd = z6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza(this.zza, this.zzb, this.zzc, this.zzd, (Bundle) null);
    }
}
