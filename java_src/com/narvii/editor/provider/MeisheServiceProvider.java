package com.narvii.editor.provider;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;

/* loaded from: classes.dex */
public class MeisheServiceProvider implements AutostartServiceProvider<MeisheService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MeisheService meisheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MeisheService meisheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MeisheService meisheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MeisheService meisheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MeisheService meisheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public MeisheService create(NVContext nVContext) {
        MeisheService meisheService = new MeisheService(nVContext);
        meisheService.init();
        return meisheService;
    }
}
