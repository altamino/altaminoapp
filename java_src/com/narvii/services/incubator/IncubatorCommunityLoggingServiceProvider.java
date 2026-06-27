package com.narvii.services.incubator;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.logging.LoggingServiceWrapper;
import com.narvii.util.statistics.TmpValue;

/* loaded from: classes.dex */
public class IncubatorCommunityLoggingServiceProvider implements AutostartServiceProvider<CommunityLoggingService> {
    public static final TmpValue<Integer> HEADLINE_ENTER = new TmpValue<>();

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CommunityLoggingService communityLoggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CommunityLoggingService communityLoggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CommunityLoggingService communityLoggingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public CommunityLoggingService create(NVContext nVContext) {
        return new CommunityLoggingService((LoggingService) NVApplication.instance().getService("logging"), ((ConfigService) nVContext.getService("config")).getCommunityId());
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CommunityLoggingService communityLoggingService) {
        communityLoggingService.headlineEnter = HEADLINE_ENTER.compareAndRemove(Integer.valueOf(communityLoggingService.ndcId));
        if (nVContext instanceof CommunityContext) {
            if (communityLoggingService.headlineEnter) {
                communityLoggingService.lambda$logEvent$0$LoggingServiceImpl("AminoEntered", "eventOrigin", LoggingOrigin.Headlines.name());
            } else {
                communityLoggingService.lambda$logEvent$0$LoggingServiceImpl("AminoEntered", new Object[0]);
            }
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CommunityLoggingService communityLoggingService) {
        if (nVContext instanceof CommunityContext) {
            if (communityLoggingService.headlineEnter) {
                communityLoggingService.lambda$logEvent$0$LoggingServiceImpl("AminoQuited", "eventOrigin", LoggingOrigin.Headlines.name());
            } else {
                communityLoggingService.lambda$logEvent$0$LoggingServiceImpl("AminoQuited", new Object[0]);
            }
        }
        communityLoggingService.headlineEnter = false;
    }

    public static class CommunityLoggingService extends LoggingServiceWrapper {
        public boolean headlineEnter;
        public final int ndcId;

        public CommunityLoggingService(LoggingService loggingService, int i) {
            super(loggingService, CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(i));
            this.ndcId = i;
        }
    }
}
