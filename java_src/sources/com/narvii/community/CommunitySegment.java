package com.narvii.community;

import com.narvii.model.NVObject;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes11.dex */
public class CommunitySegment extends NVObject {
    public boolean canBeDisabled;
    public boolean pinned;
    public int status;
    public int type;

    public CommunitySegment(boolean z6, int i10, boolean z10, int i11) {
        this.pinned = z6;
        this.type = i10;
        this.canBeDisabled = z10;
        this.status = i11;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CommunitySegment)) {
            return super.equals(obj);
        }
        CommunitySegment communitySegment = (CommunitySegment) obj;
        return Utils.isEqualsNotNull(Boolean.valueOf(this.canBeDisabled), Boolean.valueOf(communitySegment.canBeDisabled)) && Utils.isEqualsNotNull(Boolean.valueOf(this.pinned), Boolean.valueOf(communitySegment.pinned)) && Utils.isEqualsNotNull(Integer.valueOf(this.type), Integer.valueOf(communitySegment.type)) && Utils.isEqualsNotNull(Integer.valueOf(this.status), Integer.valueOf(communitySegment.status));
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 101;
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

    public CommunitySegment(int i10, int i11) {
        this.type = i10;
        this.status = i11;
    }

    public CommunitySegment() {
    }
}
