package com.narvii.chat.core;

import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;

/* loaded from: classes2.dex */
public class ThreadUpdateObject extends NVObject {
    public static final int ACTION_DRAFT_CHANGED = 2;
    public static final int ACTION_MARK_AS_READ = 0;
    public static final int ACTION_MARK_AS_UNREAD = 1;
    public int action;
    public ChatThread chatThread;

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
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            return null;
        }
        return chatThread.id();
    }
}
