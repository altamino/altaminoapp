package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcky implements zzban<zzbnf> {
    private final /* synthetic */ zzckv zzgag;

    zzcky(zzckv zzckvVar) {
        this.zzgag = zzckvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        this.zzgag.zzfkw.onAdFailedToLoad(zzcgm.zze(th));
        zzcya.zzc(th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzbnf zzbnfVar) {
        zzbnfVar.zzafl();
    }
}
