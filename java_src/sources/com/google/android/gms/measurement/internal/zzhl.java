package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
final class zzhl implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzhj zzb;

    zzhl(zzhj zzhjVar, zzo zzoVar) {
        this.zzb = zzhjVar;
        this.zza = zzoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzr();
        zzmp zzmpVar = this.zzb.zza;
        zzo zzoVar = this.zza;
        zzmpVar.zzl().zzt();
        zzmpVar.zzs();
        Preconditions.checkNotEmpty(zzoVar.zza);
        zzmpVar.zza(zzoVar);
    }
}
