package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes10.dex */
final class zzia implements Callable<List<zzne>> {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzhj zzb;

    zzia(zzhj zzhjVar, String str) {
        this.zzb = zzhjVar;
        this.zza = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzne> call() throws Exception {
        this.zzb.zza.zzr();
        return this.zzb.zza.zzf().zzi(this.zza);
    }
}
