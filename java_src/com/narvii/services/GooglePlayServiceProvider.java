package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.DateUtils;
import com.narvii.util.googleplay.GooglePlayService;

/* loaded from: classes.dex */
public class GooglePlayServiceProvider implements AutostartServiceProvider<GooglePlayService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, GooglePlayService googlePlayService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, GooglePlayService googlePlayService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, GooglePlayService googlePlayService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, GooglePlayService googlePlayService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public GooglePlayService create(NVContext nVContext) {
        return new GooglePlayService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, GooglePlayService googlePlayService) {
        googlePlayService.update(DateUtils.ONE_DAY);
    }
}
