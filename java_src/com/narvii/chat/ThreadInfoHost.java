package com.narvii.chat;

import com.narvii.model.ChatThread;

/* loaded from: classes2.dex */
public interface ThreadInfoHost {
    ChatThread getThread();

    String getThreadId();

    void onThreadChanged(ChatThread chatThread);
}
