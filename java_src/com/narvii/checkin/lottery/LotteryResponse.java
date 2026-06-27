package com.narvii.checkin.lottery;

import com.narvii.model.api.ApiResponse;
import com.narvii.wallet.AdsVideoStats;
import com.narvii.wallet.Wallet;

/* loaded from: classes2.dex */
public class LotteryResponse extends ApiResponse {
    public LotteryLog lotteryLog;
    public Wallet wallet;

    public boolean canWatchVideo() {
        AdsVideoStats adsVideoStats;
        Wallet wallet = this.wallet;
        return (wallet == null || (adsVideoStats = wallet.adsVideoStats) == null || !adsVideoStats.canWatchVideo) ? false : true;
    }
}
