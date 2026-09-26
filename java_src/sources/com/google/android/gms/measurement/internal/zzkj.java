package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes11.dex */
final class zzkj implements Runnable {
    private final /* synthetic */ Bundle zza;
    private final /* synthetic */ zzki zzb;
    private final /* synthetic */ zzki zzc;
    private final /* synthetic */ long zzd;
    private final /* synthetic */ zzkh zze;

    zzkj(zzkh zzkhVar, Bundle bundle, zzki zzkiVar, zzki zzkiVar2, long j6) {
        this.zze = zzkhVar;
        this.zza = bundle;
        this.zzb = zzkiVar;
        this.zzc = zzkiVar2;
        this.zzd = j6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkh.zza(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
