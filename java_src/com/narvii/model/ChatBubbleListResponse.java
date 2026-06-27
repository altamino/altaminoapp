package com.narvii.model;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class ChatBubbleListResponse extends ListResponse<ChatBubble> {
    public String allChatsBubbleId;
    public List<ChatBubble> chatBubbleList;
    public String currentSelectedBubbleId;

    @Override // com.narvii.model.api.ListResponse
    public List<ChatBubble> list() {
        return this.chatBubbleList;
    }
}
