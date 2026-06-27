package com.narvii.community;

import com.narvii.model.NVObject;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class CommunitySegment extends NVObject {
    public boolean canBeDisabled;
    public boolean pinned;
    public int status;
    public int type;

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

    public CommunitySegment(boolean z, int i, boolean z2, int i2) {
        this.pinned = z;
        this.type = i;
        this.canBeDisabled = z2;
        this.status = i2;
    }

    public CommunitySegment(int i, int i2) {
        this.type = i;
        this.status = i2;
    }

    public CommunitySegment() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CommunitySegment) {
            CommunitySegment communitySegment = (CommunitySegment) obj;
            return Utils.isEqualsNotNull(Boolean.valueOf(this.canBeDisabled), Boolean.valueOf(communitySegment.canBeDisabled)) && Utils.isEqualsNotNull(Boolean.valueOf(this.pinned), Boolean.valueOf(communitySegment.pinned)) && Utils.isEqualsNotNull(Integer.valueOf(this.type), Integer.valueOf(communitySegment.type)) && Utils.isEqualsNotNull(Integer.valueOf(this.status), Integer.valueOf(communitySegment.status));
        }
        return super.equals(obj);
    }
}
