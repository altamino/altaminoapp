package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;

/* loaded from: classes.dex */
public class AffiliationsServiceProvider implements AutostartServiceProvider<AffiliationsService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AffiliationsService affiliationsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public AffiliationsService create(NVContext nVContext) {
        return new AffiliationsService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AffiliationsService affiliationsService) {
        affiliationsService.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AffiliationsService affiliationsService) {
        affiliationsService.refresh(false);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AffiliationsService affiliationsService) {
        affiliationsService.refresh(false);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AffiliationsService affiliationsService) {
        affiliationsService.stop();
    }
}
