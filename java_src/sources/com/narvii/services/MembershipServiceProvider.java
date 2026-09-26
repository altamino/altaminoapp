package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.wallet.MembershipService;

/* JADX INFO: loaded from: classes8.dex */
public class MembershipServiceProvider implements AutostartServiceProvider<MembershipService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MembershipService membershipService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MembershipService membershipService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MembershipService membershipService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public MembershipService create(NVContext nVContext) {
        return new MembershipService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MembershipService membershipService) {
        membershipService.stop();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MembershipService membershipService) {
        membershipService.start();
    }
}
