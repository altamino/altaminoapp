package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcql implements zzban<zzcdb> {
    private final /* synthetic */ zzcdf zzgfh;
    private final /* synthetic */ zzcqj zzgfo;

    zzcql(zzcqj zzcqjVar, zzcdf zzcdfVar) {
        this.zzgfo = zzcqjVar;
        this.zzgfh = zzcdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        synchronized (this.zzgfo) {
            zzcqj.zza(this.zzgfo, (zzbbh) null);
            this.zzgfh.zzadb().onAdFailedToLoad(zzcgm.zze(th));
            zzcya.zzc(th, "NonagonRewardedVideoAdImpl.onFailure");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzcdb zzcdbVar) {
        zzcdb zzcdbVar2 = zzcdbVar;
        synchronized (this.zzgfo) {
            zzcqj.zza(this.zzgfo, (zzbbh) null);
            this.zzgfo.zzgfc = zzcdbVar2;
            zzcdbVar2.zzafl();
        }
    }
}
