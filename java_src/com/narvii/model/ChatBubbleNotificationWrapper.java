package com.narvii.model;

/* loaded from: classes3.dex */
public class ChatBubbleNotificationWrapper extends NVObject {
    public static final int ACTION_ACTIVE = 1;
    public static final int ACTION_NORMAL = 0;
    public int action;
    public boolean applyForAll;
    public ChatBubble chatBubble;
    public String id;
    public String threadId;

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
        return this.id;
    }
}
