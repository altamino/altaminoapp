package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbxc implements zzbrl {
    private final zzbrt zzfij;
    private final zzcxm zzflu;

    public zzbxc(zzbrt zzbrtVar, zzcxm zzcxmVar) {
        this.zzfij = zzbrtVar;
        this.zzflu = zzcxmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void zzb(zzasr zzasrVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdOpened() {
        int i = this.zzflu.zzgkp;
        if (i == 0 || i == 1) {
            this.zzfij.onAdImpression();
        }
    }
}
