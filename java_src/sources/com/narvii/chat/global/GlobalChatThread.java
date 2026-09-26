package com.narvii.chat.global;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.chat.util.ChatHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class GlobalChatThread extends NVObject {
    public List<String> avatarList;

    @Nullable
    public ChatThread chatThread;
    public String chatThreadId;
    public int communityId;
    public String icon;
    public boolean isFansOnly;
    public int status;

    @Nullable
    public User targetUser;
    public String title;
    public String uid;

    public GlobalChatThread() {
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.uid;
    }

    public GlobalChatThread(@NonNull String str, @NonNull User user, String str2, int i10) {
        this.chatThreadId = str;
        this.communityId = i10;
        this.icon = user.icon();
        this.title = str2;
        this.targetUser = user;
    }

    public static GlobalChatThread newGlobalChatThread(@NonNull ChatThread chatThread, int i10, Context context) {
        ChatHelper chatHelper = new ChatHelper(context);
        GlobalChatThread globalChatThread = new GlobalChatThread();
        globalChatThread.communityId = i10;
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

    public String getKey() {
        return this.chatThreadId + "_" + this.communityId;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return getKey();
    }
}
