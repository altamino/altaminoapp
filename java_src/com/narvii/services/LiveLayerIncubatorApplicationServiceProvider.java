package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.livelayer.LiveLayerService;

/* loaded from: classes.dex */
public class LiveLayerIncubatorApplicationServiceProvider implements ServiceProvider<LiveLayerService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LiveLayerService liveLayerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LiveLayerService liveLayerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LiveLayerService liveLayerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LiveLayerService liveLayerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LiveLayerService liveLayerService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LiveLayerService create(NVContext nVContext) {
        return new LiveLayerService(nVContext);
    }
}
