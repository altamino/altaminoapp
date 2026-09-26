package com.narvii.services.incubator;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.services.ServiceProvider;

/* JADX INFO: loaded from: classes10.dex */
public class IncubatorLiveLayerHostActivityProvider implements ServiceProvider<LiveLayerHost> {
    private IncubatorLiveLayerHostCommunityProvider parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LiveLayerHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LiveLayerHost liveLayerHost) {
        if (liveLayerHost != null) {
            liveLayerHost.unbind();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LiveLayerHost liveLayerHost) {
        if (liveLayerHost != null) {
            liveLayerHost.bind((Activity) nVContext);
        }
    }

    public IncubatorLiveLayerHostActivityProvider(IncubatorLiveLayerHostCommunityProvider incubatorLiveLayerHostCommunityProvider) {
        this.parent = incubatorLiveLayerHostCommunityProvider;
    }
}
