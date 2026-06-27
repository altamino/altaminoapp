package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.config.ConfigService;

/* loaded from: classes.dex */
public class AminoChatServiceProvider implements AutostartServiceProvider<ChatService> {
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
            this.chatService = new ChatService(nVContext);
        }
        int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        if (communityId != 0) {
            this.chatService.onOpenCommunity();
        }
        this.chatService.setCurCid(communityId);
        this.chatService.setCurCommunityContext(nVContext);
        return this.chatService;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ChatService chatService) {
        chatService.resume();
        int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        if (communityId != 0) {
            this.chatService.queryThreadCheckInfo(communityId);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ChatService chatService) {
        chatService.pause();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ChatService chatService) {
        int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        if (communityId != 0) {
            chatService.clearCommunityLevelData(communityId);
            chatService.storeDraft();
        }
    }
}
