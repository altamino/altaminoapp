package com.narvii.util.ws;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;

/* JADX INFO: loaded from: classes9.dex */
public class LogWsServiceProvider implements AutostartServiceProvider<LogWsService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LogWsService logWsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LogWsService logWsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LogWsService logWsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public LogWsService create(NVContext nVContext) {
        return new LogWsService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LogWsService logWsService) {
        logWsService.stopAfter(NVApplication.DEBUG ? 5000 : 15000);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LogWsService logWsService) {
        logWsService.start();
        logWsService.setKeepAlive(false);
    }
}
