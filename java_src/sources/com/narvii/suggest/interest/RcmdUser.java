package com.narvii.suggest.interest;

import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class RcmdUser extends NVObject {
    public String displayName;
    public String interestId;
    public String interestName;
    public List<User> rcmdUsers;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
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
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    public String getDisplayName() {
        return !TextUtils.isEmpty(this.displayName) ? this.displayName : this.interestName;
    }
}
