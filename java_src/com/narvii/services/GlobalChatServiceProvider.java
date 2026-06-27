package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.chat.util.GlobalChatService;

/* loaded from: classes.dex */
public class GlobalChatServiceProvider implements AutostartServiceProvider<GlobalChatService> {
    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, GlobalChatService globalChatService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, GlobalChatService globalChatService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, GlobalChatService globalChatService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public GlobalChatService create(NVContext nVContext) {
        return new GlobalChatService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, GlobalChatService globalChatService) {
        globalChatService.flush(true);
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, GlobalChatService globalChatService) {
        globalChatService.destroy();
    }
}
