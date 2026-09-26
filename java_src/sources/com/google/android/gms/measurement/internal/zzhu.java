package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes10.dex */
final class zzhu implements Callable<zzam> {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzhj zzb;

    zzhu(zzhj zzhjVar, zzo zzoVar) {
        this.zzb = zzhjVar;
        this.zza = zzoVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzam call() throws Exception {
        this.zzb.zza.zzr();
        return new zzam(this.zzb.zza.zza(this.zza.zza));
    }
}
