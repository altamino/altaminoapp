package com.narvii.chat.video;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
public class RtcChatManagerService implements ServiceProvider<RtcChatManager> {
    RtcChatManager rtcManager;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, RtcChatManager rtcChatManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, RtcChatManager rtcChatManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, RtcChatManager rtcChatManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, RtcChatManager rtcChatManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, RtcChatManager rtcChatManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public RtcChatManager create(NVContext nVContext) {
        this.rtcManager = new RtcChatManager(nVContext);
        return this.rtcManager;
    }
}
