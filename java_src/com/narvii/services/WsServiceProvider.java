package com.narvii.services;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.util.ws.WsService;

/* loaded from: classes.dex */
public class WsServiceProvider implements AutostartServiceProvider<WsService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, WsService wsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, WsService wsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, WsService wsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public WsService create(NVContext nVContext) {
        return new WsService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, WsService wsService) {
        wsService.start();
        wsService.setKeepAlive(false);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, WsService wsService) {
        wsService.stopAfter(NVApplication.DEBUG ? 5000 : 15000);
    }
}
