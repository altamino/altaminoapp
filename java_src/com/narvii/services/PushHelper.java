package com.narvii.services;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;

/* loaded from: classes.dex */
public class PushHelper implements AutostartServiceProvider<PushService.PushListener>, PushService.PushListener {
    @Override // com.narvii.services.ServiceProvider
    public PushService.PushListener create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PushService.PushListener pushListener) {
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        return false;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PushService.PushListener pushListener) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PushService.PushListener pushListener) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PushService.PushListener pushListener) {
        ((PushService) nVContext.getService("push")).addPushListener(pushListener);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PushService.PushListener pushListener) {
        ((PushService) nVContext.getService("push")).removePushListener(pushListener);
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
        DrawerHost drawerHost;
        if (pushPayload.isChat() || pushPayload.isMarketing() || (drawerHost = (DrawerHost) NVApplication.instance().peekService(pushPayload.ndcId, "drawerHost")) == null) {
            return;
        }
        drawerHost.refreshReminderCheck(30000L);
    }
}
