package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.livelayer.LiveLayerService;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class IncubatorLiveLayerCommunityServiceProvider implements ServiceProvider<LiveLayerService> {
    final HashMap<Integer, WeakReference<LiveLayerService>> cache = new HashMap<>();
    public final List<String> actions = new ArrayList();

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LiveLayerService liveLayerService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public LiveLayerService create(NVContext nVContext) {
        this.actions.clear();
        this.actions.add(LiveLayerService.ACTION_BROWSING);
        int communityId = IncubatorApplication.getCommunityId(nVContext);
        if (communityId == 0) {
            return null;
        }
        WeakReference<LiveLayerService> weakReference = this.cache.get(Integer.valueOf(communityId));
        LiveLayerService liveLayerService = weakReference != null ? weakReference.get() : null;
        if (liveLayerService != null) {
            return liveLayerService;
        }
        LiveLayerService liveLayerService2 = new LiveLayerService(nVContext);
        this.cache.put(Integer.valueOf(communityId), new WeakReference<>(liveLayerService2));
        return liveLayerService2;
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
