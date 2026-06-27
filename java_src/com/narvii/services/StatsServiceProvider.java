package com.narvii.services;

import android.app.Application;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.util.stats.StatsService;

/* loaded from: classes.dex */
public class StatsServiceProvider implements AutostartServiceProvider<StatsService> {
    StatsService stats;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, StatsService statsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, StatsService statsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, StatsService statsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public StatsService create(NVContext nVContext) {
        if (this.stats == null) {
            this.stats = new StatsService(nVContext, 30, 300000);
        }
        return this.stats;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, StatsService statsService) {
        if (nVContext instanceof NVActivity) {
            statsService.touchOrResume(((ConfigService) nVContext.getService("config")).getCommunityId());
        } else if (nVContext instanceof Application) {
            statsService.start();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, StatsService statsService) {
        if (nVContext instanceof NVActivity) {
            statsService.pause(((ConfigService) nVContext.getService("config")).getCommunityId());
        } else if (nVContext instanceof Application) {
            statsService.stop();
        }
    }
}
