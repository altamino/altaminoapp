package com.narvii.monetization.avatarframe;

import android.content.Context;
import com.narvii.amino.mastes.R;
import com.narvii.model.RestrictionInfo;

/* loaded from: classes3.dex */
public class DefaultAvatarFrame extends AvatarFrame {
    public static final String DEFAULT_AVATARFRAME_ID = "default";
    public boolean isMembership;

    @Override // com.narvii.model.StoreItemBaseObject, com.narvii.model.IStoreItem
    public boolean isTotalOwned() {
        return true;
    }

    @Override // com.narvii.model.StoreItemBaseObject
    public boolean isUsable(boolean z) {
        return true;
    }

    public DefaultAvatarFrame(boolean z, Context context) {
        this.isMembership = z;
        this.frameId = "default";
        this.icon = z ? "res://ic_default_avatar_frame_membership" : "res://ic_default_avatar_frame";
        this.name = context.getString(z ? R.string.amino_plus : R.string.no_frame);
        this.isNew = false;
        this.restrictionInfo = new RestrictionInfo();
        this.restrictionInfo.restrictType = z ? 2 : 3;
    }

    public static boolean isDefaultAvatarFrame(AvatarFrame avatarFrame) {
        return (avatarFrame instanceof DefaultAvatarFrame) || (avatarFrame != null && "default".equals(avatarFrame.frameId));
    }
}
