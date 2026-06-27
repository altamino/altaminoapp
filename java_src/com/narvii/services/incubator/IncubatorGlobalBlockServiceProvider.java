package com.narvii.services.incubator;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.userblock.GlobalBlockService;

/* loaded from: classes.dex */
public class IncubatorGlobalBlockServiceProvider implements AutostartServiceProvider<GlobalBlockService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, GlobalBlockService globalBlockService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, GlobalBlockService globalBlockService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, GlobalBlockService globalBlockService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public GlobalBlockService create(NVContext nVContext) {
        return new GlobalBlockService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, GlobalBlockService globalBlockService) {
        globalBlockService.start();
        globalBlockService.refresh(false);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, GlobalBlockService globalBlockService) {
        globalBlockService.stop();
    }
}
