package com.narvii.chat;

import com.narvii.model.ChatThread;
import com.narvii.model.api.ObjectResponse;

/* loaded from: classes2.dex */
public class ThreadResponse extends ObjectResponse<ChatThread> {
    public ChatThread thread;

    @Override // com.narvii.model.api.ObjectResponse
    public ChatThread object() {
        return this.thread;
    }
}
