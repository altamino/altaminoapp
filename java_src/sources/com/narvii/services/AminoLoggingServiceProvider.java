package com.narvii.services;

import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.logging.LoggingServiceImpl;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.logging.LoggingServiceWrapper;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TeaManager;

/* JADX INFO: loaded from: classes6.dex */
public class AminoLoggingServiceProvider implements ServiceProvider<LoggingService> {
    long appLaunchTime;
    LoggingServiceImpl loggingService;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LoggingService loggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LoggingService loggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LoggingService loggingService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LoggingService create(final NVContext nVContext) {
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (this.loggingService == null) {
            this.loggingService = new LoggingServiceImpl(nVContext) { // from class: com.narvii.services.AminoLoggingServiceProvider.1
                @Override // com.narvii.logging.LoggingServiceImpl, com.narvii.util.logging.LoggingService
                /* JADX INFO: renamed from: logEvent */
                public void lambda$logEvent$0(String str, Object... objArr) {
                    super.lambda$logEvent$0(str, objArr);
                    TeaManager.logEvent(nVContext, str, objArr);
                }
            };
        }
        return new LoggingServiceWrapper(this.loggingService, CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(configService.getCommunityId()));
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
