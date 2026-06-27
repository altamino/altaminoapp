package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;

/* loaded from: classes.dex */
public class CommunityServiceProvider implements AutostartServiceProvider<CommunityService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CommunityService communityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CommunityService communityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CommunityService communityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CommunityService communityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CommunityService communityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public CommunityService create(NVContext nVContext) {
        return new CommunityService(nVContext, false);
    }
}
