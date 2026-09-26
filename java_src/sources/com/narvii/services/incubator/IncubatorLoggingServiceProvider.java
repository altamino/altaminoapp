package com.narvii.services.incubator;

import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.logging.LoggingServiceImpl;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TeaManager;

/* JADX INFO: loaded from: classes7.dex */
public class IncubatorLoggingServiceProvider implements AutostartServiceProvider<LoggingService> {
    long appLaunchTime;
    LoggingServiceImpl loggingServiceImpl;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LoggingService loggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LoggingService loggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LoggingService loggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public LoggingService create(final NVContext nVContext) {
        if (this.loggingServiceImpl == null) {
            this.loggingServiceImpl = new LoggingServiceImpl(nVContext) { // from class: com.narvii.services.incubator.IncubatorLoggingServiceProvider.1
                @Override // com.narvii.logging.LoggingServiceImpl, com.narvii.util.logging.LoggingService
                /* JADX INFO: renamed from: logEvent */
                public void lambda$logEvent$0(String str, Object... objArr) {
                    super.lambda$logEvent$0(str, objArr);
                    TeaManager.logEvent(nVContext, str, objArr);
                }
            };
        }
        return this.loggingServiceImpl;
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LoggingService loggingService) {
        StatisticsService statisticsService;
        int iElapsedRealtime = (int) ((SystemClock.elapsedRealtime() - this.appLaunchTime) / 1000);
        loggingService.lambda$logEvent$0("AppQuited", TypedValues.TransitionType.S_DURATION, Integer.valueOf(iElapsedRealtime));
        if (iElapsedRealtime <= 0 || (statisticsService = (StatisticsService) NVApplication.instance().peekService(0, "statistics")) == null) {
            return;
        }
        statisticsService.event(null).userPropInc("Time Spent Total", iElapsedRealtime);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LoggingService loggingService) {
        loggingService.lambda$logEvent$0("AppLaunched", new Object[0]);
        this.appLaunchTime = SystemClock.elapsedRealtime();
    }
}
