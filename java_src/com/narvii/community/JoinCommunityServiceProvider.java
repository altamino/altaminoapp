package com.narvii.community;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
public class JoinCommunityServiceProvider implements ServiceProvider<IJoinCommunityService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, IJoinCommunityService iJoinCommunityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, IJoinCommunityService iJoinCommunityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, IJoinCommunityService iJoinCommunityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, IJoinCommunityService iJoinCommunityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, IJoinCommunityService iJoinCommunityService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public IJoinCommunityService create(NVContext nVContext) {
        return new JoinCommunityService();
    }
}
