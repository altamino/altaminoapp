package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdCallback;

@zzard
/* loaded from: classes2.dex */
public final class zzaui extends zzatx {
    private final RewardedAdCallback zzdqx;

    public zzaui(RewardedAdCallback rewardedAdCallback) {
        this.zzdqx = rewardedAdCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzatw
    public final void onRewardedAdOpened() {
        RewardedAdCallback rewardedAdCallback = this.zzdqx;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatw
    public final void onRewardedAdClosed() {
        RewardedAdCallback rewardedAdCallback = this.zzdqx;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatw
    public final void zza(zzatq zzatqVar) {
        RewardedAdCallback rewardedAdCallback = this.zzdqx;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onUserEarnedReward(new zzauh(zzatqVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatw
    public final void onRewardedAdFailedToShow(int i) {
        RewardedAdCallback rewardedAdCallback = this.zzdqx;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(i);
        }
    }
}
