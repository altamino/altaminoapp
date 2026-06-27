package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.community.MyCommunityListService;

/* loaded from: classes.dex */
public class MyCommunityListServiceProvider implements ServiceProvider<MyCommunityListService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MyCommunityListService myCommunityListService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public MyCommunityListService create(NVContext nVContext) {
        return new MyCommunityListService(nVContext);
    }
}
