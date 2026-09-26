package com.narvii.util.statistics;

import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes9.dex */
public class TeaManagerStatisticsService extends StatisticsServiceImpl {
    @Override // com.narvii.util.statistics.StatisticsServiceImpl
    protected void logEvent(StatisticsEventBuilder statisticsEventBuilder) {
        TeaManager.logEvent(this.context, statisticsEventBuilder);
    }

    public TeaManagerStatisticsService(NVContext nVContext, String str) {
        super(nVContext, str);
    }
}
