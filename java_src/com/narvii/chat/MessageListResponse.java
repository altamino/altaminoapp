package com.narvii.chat;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.ChatMessage;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class MessageListResponse extends ListResponse<ChatMessage> {

    @JsonDeserialize(contentAs = ChatMessage.class)
    public List<ChatMessage> messageList;

    @Override // com.narvii.model.api.ListResponse
    public List<ChatMessage> list() {
        return this.messageList;
    }
}
