package com.narvii.monetization.bubble;

import com.narvii.model.ChatBubble;
import com.narvii.model.api.ObjectResponse;

/* loaded from: classes3.dex */
public class ChatBubbleResponse extends ObjectResponse<ChatBubble> {
    public String allChatsBubbleId;
    public ChatBubble chatBubble;

    @Override // com.narvii.model.api.ObjectResponse
    public ChatBubble object() {
        return this.chatBubble;
    }
}
