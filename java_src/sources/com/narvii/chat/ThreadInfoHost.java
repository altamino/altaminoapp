package com.narvii.chat;

import androidx.annotation.Nullable;
import com.narvii.model.ChatThread;

/* JADX INFO: loaded from: classes9.dex */
public interface ThreadInfoHost {
    @Nullable
    ChatThread getThread();

    @Nullable
    String getThreadId();

    void onThreadChanged(ChatThread chatThread);
}
