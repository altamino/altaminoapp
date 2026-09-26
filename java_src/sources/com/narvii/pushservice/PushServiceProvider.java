package com.narvii.pushservice;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import org.apache.http.entity.mime.HeaderEntity;

/* JADX INFO: loaded from: classes4.dex */
public class PushServiceProvider implements AutostartServiceProvider<PushService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PushService pushService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PushService pushService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PushService pushService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public PushService create(NVContext nVContext) {
        return new PushService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PushService pushService) {
        pushService.resumed = false;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PushService pushService) {
        pushService.resumed = true;
    }

    public PushServiceProvider() {
        new HeaderEntity();
    }
}
