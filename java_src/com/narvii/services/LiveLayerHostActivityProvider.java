package com.narvii.services;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.livelayer.LiveLayerHost;

/* loaded from: classes.dex */
public class LiveLayerHostActivityProvider implements ServiceProvider<LiveLayerHost> {
    ServiceProvider<LiveLayerHost> parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    public LiveLayerHostActivityProvider(ServiceProvider<LiveLayerHost> serviceProvider) {
        this.parent = serviceProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LiveLayerHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LiveLayerHost liveLayerHost) {
        liveLayerHost.bind((Activity) nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LiveLayerHost liveLayerHost) {
        liveLayerHost.unbind();
    }
}
