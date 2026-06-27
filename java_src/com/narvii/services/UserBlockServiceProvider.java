package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.userblock.CommunityBlockService;
import com.narvii.userblock.GlobalBlockService;

/* loaded from: classes.dex */
public class UserBlockServiceProvider implements ServiceProvider<CommunityBlockService> {
    private GlobalBlockService global;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CommunityBlockService communityBlockService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CommunityBlockService communityBlockService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public CommunityBlockService create(NVContext nVContext) {
        if (this.global == null) {
            this.global = new GlobalBlockService(nVContext);
        }
        return new CommunityBlockService(nVContext, this.global, ((ConfigService) nVContext.getService("config")).getCommunityId());
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CommunityBlockService communityBlockService) {
        this.global.start();
        communityBlockService.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CommunityBlockService communityBlockService) {
        this.global.refresh(false);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CommunityBlockService communityBlockService) {
        this.global.stop();
        communityBlockService.stop();
    }
}
