package com.narvii.services.incubator;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
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

    public IncubatorLiveLayerHostActivityProvider(IncubatorLiveLayerHostCommunityProvider incubatorLiveLayerHostCommunityProvider) {
        this.parent = incubatorLiveLayerHostCommunityProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LiveLayerHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LiveLayerHost liveLayerHost) {
        if (liveLayerHost != null) {
            liveLayerHost.bind((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LiveLayerHost liveLayerHost) {
        if (liveLayerHost != null) {
            liveLayerHost.unbind();
        }
    }
}
