package com.narvii.monetization.avatarframe;

import com.narvii.model.RestrictionInfo;
import com.narvii.model.User;

/* JADX INFO: loaded from: classes7.dex */
public class StubCurrentAvatarFrame extends AvatarFrame {
    @Override // com.narvii.model.StoreItemBaseObject, com.narvii.model.IStoreItem
    public boolean isTotalOwned() {
        return true;
    }

    @Override // com.narvii.model.StoreItemBaseObject
    public boolean isUsable(boolean z6) {
        return true;
    }

    public StubCurrentAvatarFrame(User.AvatarFrameLite avatarFrameLite) {
        this.frameId = avatarFrameLite.frameId;
        this.icon = avatarFrameLite.icon;
        this.name = avatarFrameLite.name;
        this.isNew = false;
        RestrictionInfo restrictionInfo = new RestrictionInfo();
        this.restrictionInfo = restrictionInfo;
        restrictionInfo.restrictType = 3;
    }
}
