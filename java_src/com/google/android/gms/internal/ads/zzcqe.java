package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcqe implements zzban<zzbvx> {
    private final /* synthetic */ zzbws zzgfa;
    private final /* synthetic */ zzcqd zzgfb;

    zzcqe(zzcqd zzcqdVar, zzbws zzbwsVar) {
        this.zzgfb = zzcqdVar;
        this.zzgfa = zzbwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        synchronized (this.zzgfb) {
            zzcqd.zza(this.zzgfb, (zzbbh) null);
            this.zzgfa.zzadb().onAdFailedToLoad(zzcgm.zze(th));
            zzcya.zzc(th, "InterstitialAdManagerShim.onFailure");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzbvx zzbvxVar) {
        zzbvx zzbvxVar2 = zzbvxVar;
        synchronized (this.zzgfb) {
            zzcqd.zza(this.zzgfb, (zzbbh) null);
            this.zzgfb.zzgey = zzbvxVar2;
            zzbvxVar2.zzafl();
        }
    }
}
