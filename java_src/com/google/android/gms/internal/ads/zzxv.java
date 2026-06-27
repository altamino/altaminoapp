package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;

@zzard
/* loaded from: classes2.dex */
public final class zzxv extends zzza {
    private final AdListener zzcgl;

    public zzxv(AdListener adListener) {
        this.zzcgl = adListener;
    }

    @Override // com.google.android.gms.internal.ads.zzyz
    public final void onAdClosed() {
        this.zzcgl.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzyz
    public final void onAdFailedToLoad(int i) {
        this.zzcgl.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.zzyz
    public final void onAdLeftApplication() {
        this.zzcgl.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzyz
    public final void onAdLoaded() {
        this.zzcgl.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzyz
    public final void onAdOpened() {
        this.zzcgl.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.zzyz
    public final void onAdClicked() {
        this.zzcgl.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzyz
    public final void onAdImpression() {
        this.zzcgl.onAdImpression();
    }

    public final AdListener getAdListener() {
        return this.zzcgl;
    }
}
