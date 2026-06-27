package com.narvii.semicontext;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.services.AutostartServiceProvider;

/* loaded from: classes3.dex */
public class SemiLiveLayerHostProvider implements AutostartServiceProvider<LiveLayerHost> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LiveLayerHost liveLayerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public LiveLayerHost create(NVContext nVContext) {
        return (LiveLayerHost) LayoutInflater.from(nVContext.getContext()).inflate(R.layout.live_layer_host, (ViewGroup) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LiveLayerHost liveLayerHost) {
        liveLayerHost.onResume();
        liveLayerHost.bind((Activity) nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LiveLayerHost liveLayerHost) {
        liveLayerHost.unbind();
        liveLayerHost.onPause();
    }
}
