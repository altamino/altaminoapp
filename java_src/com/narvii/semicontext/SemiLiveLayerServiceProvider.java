package com.narvii.semicontext;

import com.narvii.app.NVContext;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.services.ServiceProvider;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class SemiLiveLayerServiceProvider implements ServiceProvider<LiveLayerService> {
    public final List<String> actions = new ArrayList();

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LiveLayerService liveLayerService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LiveLayerService create(NVContext nVContext) {
        this.actions.clear();
        this.actions.add(LiveLayerService.ACTION_BROWSING);
        return new LiveLayerService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LiveLayerService liveLayerService) {
        liveLayerService.onStart();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LiveLayerService liveLayerService) {
        liveLayerService.reportActive(this.actions, "", (HashMap<String, Object>) null);
        liveLayerService.onResume();
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LiveLayerService liveLayerService) {
        liveLayerService.reportInactive(this.actions, "", (HashMap<String, Object>) null);
        liveLayerService.onPause();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LiveLayerService liveLayerService) {
        liveLayerService.onStop();
    }
}
