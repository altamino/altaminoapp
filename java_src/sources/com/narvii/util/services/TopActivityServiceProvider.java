package com.narvii.util.services;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
public class TopActivityServiceProvider implements AutostartServiceProvider<TopActivityService> {
    TopActivityService topActivityService;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, TopActivityService topActivityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, TopActivityService topActivityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, TopActivityService topActivityService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public TopActivityService create(NVContext nVContext) {
        if (this.topActivityService == null) {
            this.topActivityService = new TopActivityService();
        }
        return this.topActivityService;
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, TopActivityService topActivityService) {
        topActivityService.topActivity = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, TopActivityService topActivityService) {
        if (nVContext instanceof Activity) {
            topActivityService.topActivity = new WeakReference<>((Activity) nVContext);
        }
    }
}
