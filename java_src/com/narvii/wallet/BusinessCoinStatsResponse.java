package com.narvii.wallet;

import com.narvii.model.api.ApiResponse;
import com.narvii.wallet.CoinStats;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class BusinessCoinStatsResponse extends ApiResponse {
    public CoinStats coinStats;
    public Wallet wallet;

    public double getTotalPaidOut() {
        CoinStats coinStats = this.coinStats;
        if (coinStats == null) {
            return 0.0d;
        }
        return coinStats.totalPaidOut;
    }

    public double getTotalEarning() {
        CoinStats coinStats = this.coinStats;
        if (coinStats == null) {
            return 0.0d;
        }
        return coinStats.totalEarnings;
    }

    public ArrayList<CoinStats.DailyStats> getDailyStats() {
        CoinStats coinStats = this.coinStats;
        if (coinStats == null) {
            return null;
        }
        return coinStats.dailyStatsList;
    }

    public double getTotalBalance() {
        Wallet wallet = this.wallet;
        if (wallet == null) {
            return 0.0d;
        }
        return wallet.totalBusinessCoinsFloat;
    }

    public float getLast10DayTotal() {
        ArrayList<CoinStats.DailyStats> arrayList;
        ArrayList<CoinStats.StatsSection> arrayList2;
        CoinStats coinStats = this.coinStats;
        float f = 0.0f;
        if (coinStats != null && (arrayList = coinStats.dailyStatsList) != null) {
            Iterator<CoinStats.DailyStats> it = arrayList.iterator();
            while (it.hasNext()) {
                CoinStats.DailyStats next = it.next();
                if (next != null && (arrayList2 = next.statsList) != null) {
                    Iterator<CoinStats.StatsSection> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        CoinStats.StatsSection next2 = it2.next();
                        if (next2 != null) {
                            double d = f;
                            double d2 = next2.totalCoins;
                            Double.isNaN(d);
                            f = (float) (d + d2);
                        }
                    }
                }
            }
        }
        return f;
    }
}
