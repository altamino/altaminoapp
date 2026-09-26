package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.wallet.AdsService;

/* JADX INFO: loaded from: classes7.dex */
public class AdsServiceProvider implements AutostartServiceProvider<AdsService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AdsService adsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public AdsService create(NVContext nVContext) {
        return new AdsService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AdsService adsService) {
        adsService.pause();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AdsService adsService) {
        adsService.resume();
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AdsService adsService) {
        adsService.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AdsService adsService) {
        adsService.stop();
    }
}
