package com.narvii.monetization.avatarframe;

import android.content.Context;
import com.narvii.amino.master.R;
import com.narvii.model.RestrictionInfo;

/* JADX INFO: loaded from: classes8.dex */
public class DefaultAvatarFrame extends AvatarFrame {
    public static final String DEFAULT_AVATARFRAME_ID = "default";
    public boolean isMembership;

    @Override // com.narvii.model.StoreItemBaseObject, com.narvii.model.IStoreItem
    public boolean isTotalOwned() {
        return true;
    }

    @Override // com.narvii.model.StoreItemBaseObject
    public boolean isUsable(boolean z6) {
        return true;
    }

    public static boolean isDefaultAvatarFrame(AvatarFrame avatarFrame) {
        return (avatarFrame instanceof DefaultAvatarFrame) || (avatarFrame != null && "default".equals(avatarFrame.frameId));
    }

    public DefaultAvatarFrame(boolean z6, Context context) {
        String str;
        int i10;
        int i11;
        this.isMembership = z6;
        this.frameId = "default";
        if (z6) {
            str = "res://ic_default_avatar_frame_membership";
        } else {
            str = "res://ic_default_avatar_frame";
        }
        this.icon = str;
        if (z6) {
            i10 = R.string.amino_plus;
        } else {
            i10 = R.string.no_frame;
        }
        this.name = context.getString(i10);
        this.isNew = false;
        RestrictionInfo restrictionInfo = new RestrictionInfo();
        this.restrictionInfo = restrictionInfo;
        if (z6) {
            i11 = 2;
        } else {
            i11 = 3;
        }
        restrictionInfo.restrictType = i11;
    }
}
