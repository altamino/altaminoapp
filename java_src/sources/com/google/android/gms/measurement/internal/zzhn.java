package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
final class zzhn implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ long zzd;
    private final /* synthetic */ zzhj zze;

    zzhn(zzhj zzhjVar, String str, String str2, String str3, long j6) {
        this.zze = zzhjVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zza;
        if (str == null) {
            this.zze.zza.zza(this.zzb, (zzki) null);
        } else {
            this.zze.zza.zza(this.zzb, new zzki(this.zzc, str, this.zzd));
        }
    }
}
