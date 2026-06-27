package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.util.logging.DetailLogging;
import java.io.IOException;

/* loaded from: classes.dex */
public class DetailLoggingHelper implements AutostartServiceProvider<DetailLoggingHelper>, Runnable {
    @Override // com.narvii.services.ServiceProvider
    public DetailLoggingHelper create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DetailLoggingHelper detailLoggingHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DetailLoggingHelper detailLoggingHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DetailLoggingHelper detailLoggingHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DetailLoggingHelper detailLoggingHelper) {
        Utils.handler.removeCallbacks(this);
        DetailLogging.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DetailLoggingHelper detailLoggingHelper) {
        Utils.postDelayed(this, 2000L);
    }

    @Override // java.lang.Runnable
    public void run() throws IOException {
        DetailLogging.stop();
    }
}
