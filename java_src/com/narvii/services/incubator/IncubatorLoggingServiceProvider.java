package com.narvii.services.incubator;

import com.narvii.app.NVContext;
import com.narvii.logging.LoggingServiceImpl;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.logging.LoggingService;

/* loaded from: classes.dex */
public class IncubatorLoggingServiceProvider implements AutostartServiceProvider<LoggingService> {
    LoggingServiceImpl loggingServiceImpl;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LoggingService loggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LoggingService loggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LoggingService loggingService) {
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
                /* renamed from: logEvent */
                public void lambda$logEvent$0$LoggingServiceImpl(String str, Object... objArr) {
                }
            };
        }
        return this.loggingServiceImpl;
    }
}
