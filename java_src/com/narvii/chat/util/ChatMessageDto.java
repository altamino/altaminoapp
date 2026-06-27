package com.narvii.chat.util;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.ChatMessage;

/* loaded from: classes2.dex */
public class ChatMessageDto {

    @JsonDeserialize(contentAs = ChatMessage.class)
    public ChatMessage chatMessage;
    public int membershipStatus;
    public int ndcId;
}
