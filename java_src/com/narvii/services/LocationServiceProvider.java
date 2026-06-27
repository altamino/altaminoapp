package com.narvii.services;

import android.app.Application;
import com.narvii.app.NVContext;
import com.narvii.location.LocationService;
import com.narvii.scene.poll.ScenePollPlayView;

/* loaded from: classes.dex */
public class LocationServiceProvider implements AutostartServiceProvider<LocationService> {
    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LocationService locationService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LocationService locationService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public LocationService create(NVContext nVContext) {
        return new LocationService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LocationService locationService) {
        if ((nVContext instanceof Application) && locationService.getCachedCoordinate() == null) {
            locationService.warmup(ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS, 10000L);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LocationService locationService) {
        if (nVContext instanceof Application) {
            locationService.dispose();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LocationService locationService) {
        locationService.dispose();
    }
}
