package com.narvii.services.incubator;

import android.app.Application;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorConfigService;
import com.narvii.config.ConfigService;
import com.narvii.services.AutostartServiceProvider;

/* loaded from: classes.dex */
public class IncubatorConfigProvider implements AutostartServiceProvider<ConfigService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ConfigService configService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ConfigService configService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ConfigService configService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ConfigService configService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public ConfigService create(NVContext nVContext) {
        return new IncubatorConfigService(nVContext, nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ConfigService configService) {
        if (nVContext instanceof Application) {
            configService.update(NVApplication.DEBUG ? 300000L : 3600000L);
        }
    }
}
