package com.narvii.chat.util;

import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;

/* compiled from: IMyChatList.kt */
/* loaded from: classes2.dex */
public interface IMyChatList {
    ChatThread getMappedThreadFromList(String str);

    void onThreadUpdateInfo(ThreadUpdateObject threadUpdateObject);

    void onUnknownThreadMessageCome(ChatMessage chatMessage);

    void refreshList();
}
