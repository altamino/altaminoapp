package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.chat.MessageReadManager;

/* loaded from: classes.dex */
public class MessageReadServiceProvider implements ServiceProvider<MessageReadManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MessageReadManager messageReadManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MessageReadManager messageReadManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public MessageReadManager create(NVContext nVContext) {
        return new MessageReadManager(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MessageReadManager messageReadManager) {
        messageReadManager.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MessageReadManager messageReadManager) {
        messageReadManager.flush();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MessageReadManager messageReadManager) {
        messageReadManager.stop();
    }
}
