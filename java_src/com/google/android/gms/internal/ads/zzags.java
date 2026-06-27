package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

@zzard
/* loaded from: classes2.dex */
public final class zzags extends zzafy {
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener zzczm;

    public zzags(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.zzczm = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zza(zzagg zzaggVar) {
        this.zzczm.onUnifiedNativeAdLoaded(new zzagj(zzaggVar));
    }
}
