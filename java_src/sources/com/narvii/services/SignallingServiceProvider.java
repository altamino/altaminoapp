package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.chat.signalling.SignallingService;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class SignallingServiceProvider implements AutostartServiceProvider<SignallingService> {
    Runnable pendingPause;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, SignallingService signallingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, SignallingService signallingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, SignallingService signallingService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public SignallingService create(NVContext nVContext) {
        return new SignallingService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, final SignallingService signallingService) {
        Runnable runnable = new Runnable() { // from class: com.narvii.services.SignallingServiceProvider.1
            @Override // java.lang.Runnable
            public void run() {
                signallingService.leaveAllThreads(false);
            }
        };
        this.pendingPause = runnable;
        Utils.postDelayed(runnable, 2000L);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, SignallingService signallingService) {
        Runnable runnable = this.pendingPause;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.pendingPause = null;
        }
    }
}
