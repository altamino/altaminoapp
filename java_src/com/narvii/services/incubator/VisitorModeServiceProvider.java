package com.narvii.services.incubator;

import com.narvii.app.NVContext;
import com.narvii.community.VisitorModeService;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
public class VisitorModeServiceProvider implements ServiceProvider<VisitorModeService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, VisitorModeService visitorModeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, VisitorModeService visitorModeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, VisitorModeService visitorModeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, VisitorModeService visitorModeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, VisitorModeService visitorModeService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public VisitorModeService create(NVContext nVContext) {
        return new VisitorModeService(nVContext);
    }
}
