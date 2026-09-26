package com.narvii.wallet;

import androidx.annotation.Nullable;
import com.narvii.model.api.ApiResponse;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class BusinessCoinStatsResponse extends ApiResponse {
    public CoinStats coinStats;
    public Wallet wallet;

    @Nullable
    public ArrayList<CoinStats.DailyStats> getDailyStats() {
        CoinStats coinStats = this.coinStats;
        if (coinStats == null) {
            return null;
        }
        return coinStats.dailyStatsList;
    }

    public float getLast10DayTotal() {
        ArrayList<CoinStats.DailyStats> arrayList;
        ArrayList<CoinStats.StatsSection> arrayList2;
        CoinStats coinStats = this.coinStats;
        float f = 0.0f;
        if (coinStats != null && (arrayList = coinStats.dailyStatsList) != null) {
            for (CoinStats.DailyStats dailyStats : arrayList) {
                if (dailyStats != null && (arrayList2 = dailyStats.statsList) != null) {
                    for (CoinStats.StatsSection statsSection : arrayList2) {
                        if (statsSection != null) {
                            f = (float) (((double) f) + statsSection.totalCoins);
                        }
                    }
                }
            }
        }
        return f;
    }

    public double getTotalBalance() {
        Wallet wallet = this.wallet;
        return wallet == null ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : wallet.totalBusinessCoinsFloat;
    }

    public double getTotalEarning() {
        CoinStats coinStats = this.coinStats;
        return coinStats == null ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : coinStats.totalEarnings;
    }

    public double getTotalPaidOut() {
        CoinStats coinStats = this.coinStats;
        return coinStats == null ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : coinStats.totalPaidOut;
    }
}
