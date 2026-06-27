package com.narvii.services.incubator;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.services.util.HostCommunityProvider;

/* loaded from: classes.dex */
public class IncubatorLiveLayerHostCommunityProvider extends HostCommunityProvider<LiveLayerHost> {
    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.services.util.HostCommunityProvider
    public LiveLayerHost createProxyHost(Context context) {
        return (LiveLayerHost) LayoutInflater.from(context).inflate(R.layout.live_layer_host, (ViewGroup) null);
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LiveLayerHost liveLayerHost) {
        liveLayerHost.onResume();
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LiveLayerHost liveLayerHost) {
        liveLayerHost.onPause();
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LiveLayerHost liveLayerHost) {
        liveLayerHost.onStop();
    }
}
