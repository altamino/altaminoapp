package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.chat.MessageReadManager;

/* loaded from: classes.dex */
public class MessageReadCleanHelper implements AutostartServiceProvider<Object> {
    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
        MessageReadManager.cleanCache(nVContext.getContext());
    }
}
