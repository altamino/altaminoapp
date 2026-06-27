package com.narvii.chat.template;

import com.narvii.model.NVObject;

/* loaded from: classes2.dex */
public class MessageTemplate extends NVObject {
    public String content;
    public int messageType;
    public String title;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return Integer.MAX_VALUE;
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
}
