package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardedVideoAd;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class A2 implements RewardedVideoAd.RewardedVideoAdShowConfigBuilder, RewardedVideoAd.RewardedVideoShowAdConfig {
    private int A00 = -1;

    public final int A00() {
        return this.A00;
    }

    public final RewardedVideoAd.RewardedVideoShowAdConfig build() {
        return this;
    }

    public final RewardedVideoAd.RewardedVideoAdShowConfigBuilder withAppOrientation(int i) {
        this.A00 = i;
        return this;
    }
}
