package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcps implements zzban<zzbpc> {
    private final /* synthetic */ zzbxo zzged;
    private final /* synthetic */ zzcpp zzgee;

    zzcps(zzcpp zzcppVar, zzbxo zzbxoVar) {
        this.zzgee = zzcppVar;
        this.zzged = zzbxoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        this.zzged.zzadb().onAdFailedToLoad(zzcgm.zze(th));
        zzcya.zzc(th, "AdLoaderShim.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzbpc zzbpcVar) {
        zzbpc zzbpcVar2 = zzbpcVar;
        synchronized (this.zzgee) {
            this.zzgee.zzgdy = zzbpcVar2.getMediationAdapterClassName();
            this.zzgee.zzgdz = zzbpcVar2.zzpj();
            zzbpcVar2.zzafl();
        }
    }
}
