package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcpu implements zzban<zzbnf> {
    private final /* synthetic */ zzboc zzgel;
    private final /* synthetic */ zzcpt zzgem;

    zzcpu(zzcpt zzcptVar, zzboc zzbocVar) {
        this.zzgem = zzcptVar;
        this.zzgel = zzbocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        synchronized (this.zzgem) {
            zzcpt.zza(this.zzgem, (zzbbh) null);
            this.zzgel.zzadb().onAdFailedToLoad(zzcgm.zze(th));
            this.zzgem.zzgei.zzdk(60);
            zzcya.zzc(th, "BannerAdManagerShim.onFailure");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzbnf zzbnfVar) {
        zzbnf zzbnfVar2 = zzbnfVar;
        synchronized (this.zzgem) {
            zzcpt.zza(this.zzgem, (zzbbh) null);
            if (this.zzgem.zzgdo != null) {
                this.zzgem.zzgdo.destroy();
            }
            this.zzgem.zzgdo = zzbnfVar2;
            this.zzgem.zzfgu.removeAllViews();
            this.zzgem.zzfgu.addView(zzbnfVar2.zzafi());
            zzbnfVar2.zzafl();
            this.zzgem.zzgei.zzdk(zzbnfVar2.zzafk());
        }
    }
}
