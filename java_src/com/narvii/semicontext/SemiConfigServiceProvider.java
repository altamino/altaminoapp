package com.narvii.semicontext;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;

/* loaded from: classes3.dex */
public class SemiConfigServiceProvider implements ServiceProvider<SemiConfigService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, SemiConfigService semiConfigService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, SemiConfigService semiConfigService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, SemiConfigService semiConfigService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, SemiConfigService semiConfigService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, SemiConfigService semiConfigService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public SemiConfigService create(NVContext nVContext) {
        return new SemiConfigService(nVContext, ((SemiActivity) nVContext).communityId());
    }
}
