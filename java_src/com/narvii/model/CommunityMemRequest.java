package com.narvii.model;

/* loaded from: classes3.dex */
public class CommunityMemRequest extends NVObject {
    public User applicant;
    public String createdTime;
    public String message;
    public String modifiedTime;
    public int ndcId;
    public String requestId;
    public int status;
    public String uid;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 19;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.uid;
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
