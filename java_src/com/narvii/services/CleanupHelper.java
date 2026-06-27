package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.Utils;

/* loaded from: classes.dex */
public class CleanupHelper implements AutostartServiceProvider<Runnable>, Runnable {
    @Override // com.narvii.services.ServiceProvider
    public Runnable create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Runnable runnable) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Runnable runnable) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Runnable runnable) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Runnable runnable) {
        Utils.handler.removeCallbacks(runnable);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Runnable runnable) {
        Utils.postDelayed(runnable, 6000L);
    }

    @Override // java.lang.Runnable
    public void run() {
        Utils.cleanTmpFiles();
    }
}
