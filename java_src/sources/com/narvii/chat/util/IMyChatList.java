package com.narvii.chat.util;

import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface IMyChatList {
    @Nullable
    ChatThread getMappedThreadFromList(@Nullable String str);

    void onThreadUpdateInfo(@NotNull ThreadUpdateObject threadUpdateObject);

    void onUnknownThreadMessageCome(@NotNull ChatMessage chatMessage);

    void refreshList();
}
