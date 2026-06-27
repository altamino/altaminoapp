package com.narvii.chat.util;

import com.narvii.model.NVObject;

/* loaded from: classes2.dex */
public class ThreadNotification extends NVObject {
    public static final int ACTION_ADD_MEMBER = 2;
    public static final int ACTION_REMOVE_MEMBER = 1;
    public int action;
    public Object targetObj;
    public String threadId;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 12;
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
        return this.threadId;
    }
}
