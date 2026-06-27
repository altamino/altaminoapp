package com.narvii.chat;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Log;
import java.util.Date;

/* loaded from: classes.dex */
public class ChatPushProvider implements AutostartServiceProvider<PushService.PushListener>, PushService.PushListener {
    @Override // com.narvii.services.ServiceProvider
    public PushService.PushListener create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PushService.PushListener pushListener) {
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
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
    public boolean onInterceptNotification(PushPayload pushPayload) {
        ChatService chatService;
        Date date;
        if (!pushPayload.isChat() || (chatService = (ChatService) NVApplication.instance().peekService(pushPayload.ndcId, "chat")) == null || pushPayload.threadId == null || (date = pushPayload.threadTime) == null || date.getTime() >= chatService.getReadTime(pushPayload.threadId)) {
            return false;
        }
        Log.w("filter out dated chat push payload");
        return true;
    }
}
