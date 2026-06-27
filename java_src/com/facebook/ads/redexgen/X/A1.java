package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class A1 implements RewardedVideoAd.RewardedVideoAdLoadConfigBuilder, RewardedVideoAd.RewardedVideoLoadAdConfig {
    private A0 A00;

    @Nullable
    private String A01;
    private boolean A02;

    public A1(A0 a0) {
        this.A00 = a0;
    }

    public final void A00() {
        this.A00.A02(this.A01, this.A02);
    }

    public final RewardedVideoAd.RewardedVideoLoadAdConfig build() {
        return this;
    }

    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.A00.setAdListener(rewardedVideoAdListener);
        return this;
    }

    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withBid(String str) {
        this.A01 = str;
        return this;
    }

    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withFailOnCacheFailureEnabled(boolean z) {
        this.A02 = z;
        return this;
    }

    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withRVChainEnabled(boolean z) {
        this.A00.enableRVChain(z);
        return this;
    }

    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withRewardData(RewardData rewardData) {
        this.A00.setRewardData(rewardData);
        return this;
    }
}
