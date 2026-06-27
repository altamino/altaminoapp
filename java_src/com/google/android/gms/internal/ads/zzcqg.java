package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcqg implements zzban<zzcdb> {
    private final /* synthetic */ zzcdf zzgfh;
    private final /* synthetic */ zzcqf zzgfi;

    zzcqg(zzcqf zzcqfVar, zzcdf zzcdfVar) {
        this.zzgfi = zzcqfVar;
        this.zzgfh = zzcdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        synchronized (this.zzgfi) {
            zzcqf.zza(this.zzgfi, (zzbbh) null);
            this.zzgfh.zzadb().onAdFailedToLoad(zzcgm.zze(th));
            zzcya.zzc(th, "NonagonRewardedAdImpl.onFailure");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzcdb zzcdbVar) {
        zzcdb zzcdbVar2 = zzcdbVar;
        synchronized (this.zzgfi) {
            zzcqf.zza(this.zzgfi, (zzbbh) null);
            this.zzgfi.zzgfc = zzcdbVar2;
            zzcdbVar2.zzafl();
        }
    }
}
