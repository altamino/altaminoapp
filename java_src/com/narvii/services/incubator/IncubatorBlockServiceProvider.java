package com.narvii.services.incubator;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.services.ServiceProvider;
import com.narvii.userblock.CommunityBlockService;
import com.narvii.userblock.GlobalBlockService;

/* loaded from: classes.dex */
public class IncubatorBlockServiceProvider implements ServiceProvider<CommunityBlockService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CommunityBlockService communityBlockService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CommunityBlockService communityBlockService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CommunityBlockService communityBlockService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public CommunityBlockService create(NVContext nVContext) {
        return new CommunityBlockService(nVContext, (GlobalBlockService) NVApplication.instance().getService("block"), ((ConfigService) nVContext.getService("config")).getCommunityId());
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CommunityBlockService communityBlockService) {
        communityBlockService.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CommunityBlockService communityBlockService) {
        communityBlockService.stop();
    }
}
