package com.narvii.chat.global;

import android.content.Context;
import com.narvii.chat.util.ChatHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import java.util.List;

/* loaded from: classes2.dex */
public class GlobalChatThread extends NVObject {
    public List<String> avatarList;
    public ChatThread chatThread;
    public String chatThreadId;
    public int communityId;
    public String icon;
    public boolean isFansOnly;
    public int status;
    public User targetUser;
    public String title;
    public String uid;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    public static GlobalChatThread newGlobalChatThread(ChatThread chatThread, int i, Context context) {
        ChatHelper chatHelper = new ChatHelper(context);
        GlobalChatThread globalChatThread = new GlobalChatThread();
        globalChatThread.communityId = i;
        globalChatThread.chatThreadId = chatThread.id();
        globalChatThread.title = chatHelper.getThreadTitle(chatThread);
        globalChatThread.icon = chatThread.icon;
        globalChatThread.targetUser = chatHelper.getPrivateChatTargetUer(chatThread);
        globalChatThread.avatarList = chatHelper.getAvatarList(chatThread);
        globalChatThread.isFansOnly = chatThread.isFansOnly();
        globalChatThread.uid = chatThread.uid();
        globalChatThread.status = chatThread.status();
        return globalChatThread;
    }

    public GlobalChatThread() {
    }

    public GlobalChatThread(String str, User user, String str2, int i) {
        this.chatThreadId = str;
        this.communityId = i;
        this.icon = user.icon();
        this.title = str2;
        this.targetUser = user;
    }

    public String getKey() {
        return this.chatThreadId + "_" + this.communityId;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return getKey();
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.uid;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }
}
