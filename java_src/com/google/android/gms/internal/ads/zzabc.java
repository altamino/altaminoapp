package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzabc extends zzyv {
    private final /* synthetic */ zzabb zzcjl;

    zzabc(zzabb zzabbVar) {
        this.zzcjl = zzabbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyv, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.zzcjl.zzcje.zza(this.zzcjl.zzdh());
        super.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzyv, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        this.zzcjl.zzcje.zza(this.zzcjl.zzdh());
        super.onAdFailedToLoad(i);
    }
}
