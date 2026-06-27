package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.logging.LoggingServiceImpl;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.logging.LoggingServiceWrapper;

/* loaded from: classes.dex */
public class AminoLoggingServiceProvider implements ServiceProvider<LoggingService> {
    LoggingServiceImpl loggingService;

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

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LoggingService create(final NVContext nVContext) {
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (this.loggingService == null) {
            this.loggingService = new LoggingServiceImpl(nVContext) { // from class: com.narvii.services.AminoLoggingServiceProvider.1
                @Override // com.narvii.logging.LoggingServiceImpl, com.narvii.util.logging.LoggingService
                /* renamed from: logEvent */
                public void lambda$logEvent$0$LoggingServiceImpl(String str, Object... objArr) {
                }
            };
        }
        return new LoggingServiceWrapper(this.loggingService, CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(configService.getCommunityId()));
    }
}
