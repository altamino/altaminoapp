package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.attribute.AttributeService;

/* loaded from: classes.dex */
public class AttributeServiceProvider implements ServiceProvider<AttributeService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AttributeService attributeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AttributeService attributeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AttributeService attributeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AttributeService attributeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AttributeService attributeService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public AttributeService create(NVContext nVContext) {
        return new AttributeService(nVContext);
    }
}
