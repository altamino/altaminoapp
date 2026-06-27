package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzbqe implements zzbrl, zzbrw, zzbsr, zzbtk, zzxr {
    private final Clock zzbsa;
    private final zzawj zzfjk;

    public zzbqe(Clock clock, zzawj zzawjVar) {
        this.zzbsa = clock;
        this.zzfjk = zzawjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzb(zzarx zzarxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void zzb(zzasr zzasrVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzxr
    public final void onAdClicked() {
        this.zzfjk.zzuk();
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void onAdLoaded() {
        this.zzfjk.zzah(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbrw
    public final void onAdImpression() {
        this.zzfjk.zzuj();
    }

    public final void zzf(zzxz zzxzVar) {
        this.zzfjk.zze(zzxzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zza(zzcxu zzcxuVar) {
        this.zzfjk.zzfb(this.zzbsa.elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdClosed() {
        this.zzfjk.zzul();
    }

    public final String zzum() {
        return this.zzfjk.zzum();
    }
}
