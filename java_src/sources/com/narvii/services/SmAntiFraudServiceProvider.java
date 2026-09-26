package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.sm.SmAntiFraudManager;

/* JADX INFO: loaded from: classes10.dex */
public class SmAntiFraudServiceProvider implements ServiceProvider<SmAntiFraudManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, SmAntiFraudManager smAntiFraudManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, SmAntiFraudManager smAntiFraudManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, SmAntiFraudManager smAntiFraudManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, SmAntiFraudManager smAntiFraudManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, SmAntiFraudManager smAntiFraudManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public SmAntiFraudManager create(NVContext nVContext) {
        return new SmAntiFraudManager(nVContext);
    }
}
