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

/* JADX INFO: loaded from: classes5.dex */
public class IncubatorCommunityLoggingServiceProvider implements AutostartServiceProvider<CommunityLoggingService> {
    public static final TmpValue<Integer> HEADLINE_ENTER = new TmpValue<>();

    public static class CommunityLoggingService extends LoggingServiceWrapper {
        public boolean headlineEnter;
        public final int ndcId;

        public CommunityLoggingService(LoggingService loggingService, int i10) {
            super(loggingService, CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(i10));
            this.ndcId = i10;
        }
    }

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
    public void pause(NVContext nVContext, CommunityLoggingService communityLoggingService) {
        if (nVContext instanceof CommunityContext) {
            if (communityLoggingService.headlineEnter) {
                communityLoggingService.logEvent("AminoQuited", "eventOrigin", LoggingOrigin.Headlines.name());
            } else {
                communityLoggingService.logEvent("AminoQuited", new Object[0]);
            }
        }
        communityLoggingService.headlineEnter = false;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CommunityLoggingService communityLoggingService) {
        boolean zCompareAndRemove = HEADLINE_ENTER.compareAndRemove(Integer.valueOf(communityLoggingService.ndcId));
        communityLoggingService.headlineEnter = zCompareAndRemove;
        if (nVContext instanceof CommunityContext) {
            if (zCompareAndRemove) {
                communityLoggingService.logEvent("AminoEntered", "eventOrigin", LoggingOrigin.Headlines.name());
            } else {
                communityLoggingService.logEvent("AminoEntered", new Object[0]);
            }
        }
    }
}
