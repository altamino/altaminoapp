package com.narvii.services;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.chat.core.ChatService;
import com.narvii.services.incubator.CommunityContext;

/* loaded from: classes.dex */
public class ChatServiceProvider implements AutostartServiceProvider<ChatService> {
    ChatService chatService;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ChatService chatService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ChatService chatService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public ChatService create(NVContext nVContext) {
        if (this.chatService == null) {
            this.chatService = new ChatService(NVApplication.instance());
        }
        int i = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        if (i != 0) {
            this.chatService.onOpenCommunity();
        }
        this.chatService.setCurCid(i);
        this.chatService.setCurCommunityContext(nVContext);
        return this.chatService;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ChatService chatService) {
        int i = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        chatService.setCurCid(i);
        chatService.setCurCommunityContext(nVContext);
        chatService.resume();
        if (i != 0) {
            this.chatService.queryThreadCheckInfo(i);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ChatService chatService) {
        chatService.pause();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ChatService chatService) {
        int i = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        if (i != 0) {
            chatService.clearCommunityLevelData(i);
            chatService.storeDraft();
        }
        if ((nVContext.getContext() instanceof IncubatorApplication) && ((IncubatorApplication) nVContext.getContext()).hasNoLiveCommunity()) {
            chatService.setCurCid(0);
            chatService.setCurCommunityContext(null);
        }
    }
}
