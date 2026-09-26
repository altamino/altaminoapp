package com.narvii.wallet;

import androidx.annotation.Nullable;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class CoinStats {

    @JsonDeserialize(contentAs = DailyStats.class)
    public ArrayList<DailyStats> dailyStatsList;
    public double totalEarnings;
    public double totalPaidOut;

    public static class DailyStats {

        @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
        public Date startTime;

        @Nullable
        @JsonDeserialize(contentAs = StatsSection.class)
        public ArrayList<StatsSection> statsList;
    }

    public static class StatsSection {
        public int sourceType;
        public double totalCoins;
    }
}
