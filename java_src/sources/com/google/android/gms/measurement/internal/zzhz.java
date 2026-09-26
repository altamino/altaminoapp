package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes10.dex */
final class zzhz implements Callable<byte[]> {
    private final /* synthetic */ zzbg zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzhj zzc;

    zzhz(zzhj zzhjVar, zzbg zzbgVar, String str) {
        this.zzc = zzhjVar;
        this.zza = zzbgVar;
        this.zzb = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        this.zzc.zza.zzr();
        return this.zzc.zza.zzm().zza(this.zza, this.zzb);
    }
}
