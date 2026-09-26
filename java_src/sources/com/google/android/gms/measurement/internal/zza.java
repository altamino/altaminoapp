package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
final class zza implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ zzb zzc;

    zza(zzb zzbVar, String str, long j6) {
        this.zzc = zzbVar;
        this.zza = str;
        this.zzb = j6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb.zza(this.zzc, this.zza, this.zzb);
    }
}
