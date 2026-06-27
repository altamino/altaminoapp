package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

@zzard
/* loaded from: classes2.dex */
public final class zzaul extends zzauc {
    private final RewardedAdLoadCallback zzdqy;

    public zzaul(RewardedAdLoadCallback rewardedAdLoadCallback) {
        this.zzdqy = rewardedAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzaub
    public final void onRewardedAdLoaded() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.zzdqy;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaub
    public final void onRewardedAdFailedToLoad(int i) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.zzdqy;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdFailedToLoad(i);
        }
    }
}
