package com.narvii.flag.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.NVObject;
import com.narvii.model.User;

/* loaded from: classes2.dex */
public class FlagLog extends NVObject {
    public String createdTime;
    public int flagType;
    public String message;
    public String objectId;

    @JsonDeserialize(contentAs = User.class)
    public User reporter;

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

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.objectId;
    }
}
