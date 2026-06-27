package com.narvii.monetization.avatarframe;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.Date;

/* loaded from: classes.dex */
public class AvatarFrame extends StoreItemBaseObject implements User.IAvatarFrame {

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String description;
    public ObjectNode extensions;
    public String frameId;
    public int frameType;
    public String icon;
    public String md5;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public String name;
    public String resourceUrl;
    public int status;
    public String uid;
    public int version;

    @Override // com.narvii.model.StoreItemBaseObject, com.narvii.model.IStoreItem
    public boolean isActivated() {
        return true;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 122;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.IStoreItem
    public String getName() {
        return this.name;
    }

    @Override // com.narvii.model.IStoreItem
    public String getStoreIcon() {
        return this.icon;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.frameId;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    @Override // com.narvii.model.User.IAvatarFrame
    public String getFrameId() {
        return this.frameId;
    }

    @Override // com.narvii.model.User.IAvatarFrame
    public String getResourceUrl() {
        return this.resourceUrl;
    }

    @Override // com.narvii.model.User.IAvatarFrame
    public int getVersion() {
        return this.version;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof AvatarFrame) {
            return Utils.isEquals(((AvatarFrame) obj).frameId, this.frameId);
        }
        return false;
    }

    public static User.AvatarFrameLite parseToAvatarFrameLite(AvatarFrame avatarFrame) {
        if (avatarFrame == null || DefaultAvatarFrame.isDefaultAvatarFrame(avatarFrame)) {
            return null;
        }
        User.AvatarFrameLite avatarFrameLite = new User.AvatarFrameLite();
        avatarFrameLite.frameId = avatarFrame.frameId;
        avatarFrameLite.resourceUrl = avatarFrame.resourceUrl;
        avatarFrameLite.name = avatarFrame.name;
        avatarFrameLite.icon = avatarFrame.icon;
        avatarFrameLite.uid = avatarFrame.uid;
        avatarFrameLite.status = avatarFrame.status;
        avatarFrameLite.version = avatarFrame.version;
        OwnershipInfo ownershipInfo = avatarFrame.ownershipInfo;
        avatarFrameLite.ownershipStatus = ownershipInfo != null ? ownershipInfo.ownershipStatus : 1;
        return avatarFrameLite;
    }
}
