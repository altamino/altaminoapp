package com.narvii.util.debug;

import android.app.Activity;
import android.app.Application;
import android.hardware.SensorManager;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class DebugServiceProvider implements AutostartServiceProvider<DebugService> {
    protected DebugService instance;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DebugService debugService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DebugService debugService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DebugService debugService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public DebugService create(NVContext nVContext) {
        if (this.instance == null) {
            this.instance = new DebugService(nVContext);
        }
        return this.instance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DebugService debugService) {
        if (nVContext instanceof Application) {
            debugService.shakeDetector.start((SensorManager) nVContext.getContext().getSystemService("sensor"));
        }
        if (nVContext instanceof Activity) {
            debugService.topActivity = new WeakReference<>((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DebugService debugService) {
        debugService.topActivity = null;
        if (nVContext instanceof NVApplication) {
            debugService.shakeDetector.stop();
        }
    }
}
