package com.narvii.monetization.sticker.model;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.Community;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.Sticker;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
public class StickerCollection extends StoreItemBaseObject {
    public static final int STICKER_COLLECTION_TYPE_NORMAL = 1;
    public static final int STICKER_COLLECTION_TYPE_PERSONAL = 2;
    public static final int STICKER_COLLECTION_TYPE_USER_CREATED = 3;
    public User author;
    public String bannerUrl;
    public String collectionId;
    public int collectionType;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String description;
    public ObjectNode extensions;
    public String icon;
    public String name;
    public String smallIcon;
    public int status;

    @JsonDeserialize(contentAs = Sticker.class)
    public ArrayList<Sticker> stickerList;
    public int stickersCount;
    public String uid;
    public long usedCount;

    public static StickerCollection getUpdatedStickerCollection(StickerCollection stickerCollection, StickerCollection stickerCollection2) {
        if (stickerCollection == null || stickerCollection2 == null || !Utils.isEqualsNotNull(stickerCollection.id(), stickerCollection2.id())) {
            return null;
        }
        StickerCollection stickerCollection3 = (StickerCollection) stickerCollection2.m1622clone();
        if (stickerCollection3.stickerList == null) {
            stickerCollection3.stickerList = stickerCollection.stickerList;
        }
        return stickerCollection3;
    }

    public String getBannerUrl() {
        return this.bannerUrl;
    }

    public String getDescription() {
        return this.description;
    }

    @Override // com.narvii.model.IStoreItem
    public String getName() {
        return this.name;
    }

    public User getOriginalAuthor() {
        try {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "originalAuthor");
            if (jsonNodeNodePath == null) {
                return null;
            }
            return (User) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, User.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Community getOriginalCommunity() {
        try {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "originalCommunity");
            if (jsonNodeNodePath == null) {
                return null;
            }
            return (Community) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Community.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.narvii.model.IStoreItem
    public String getStoreIcon() {
        return this.icon;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.collectionId;
    }

    public boolean isClosed() {
        return this.status == 3;
    }

    @Override // com.narvii.model.NVObject
    public boolean isDeleted() {
        return this.status == 10;
    }

    @Override // com.narvii.model.NVObject
    public boolean isDisabled() {
        return this.status == 9;
    }

    public boolean isNormal() {
        return this.collectionType == 1;
    }

    public boolean isPersonal() {
        return this.collectionType == 2;
    }

    public boolean isUserCreated() {
        return this.collectionType == 3;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 114;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.uid;
    }

    private boolean isClosedAccessible(User user, boolean z6) {
        if (user == null) {
            return false;
        }
        if (z6) {
            if (user.isLeader()) {
                return true;
            }
        } else if (user.isCurator()) {
            return true;
        }
        return Utils.isEqualsNotNull(uid(), user.uid);
    }

    public String getIconSourceStickerId() {
        return JacksonUtils.nodeString(this.extensions, "iconSourceStickerId");
    }

    public Date getOwnTime() {
        Date date;
        OwnershipInfo ownershipInfo = this.ownershipInfo;
        return (ownershipInfo == null || (date = ownershipInfo.createdTime) == null) ? this.createdTime : date;
    }

    public boolean isLocalMood() {
        return this instanceof MoodStickerCollection;
    }

    public boolean isShared() {
        User user = this.author;
        return user != null && user.isSystem();
    }

    @Override // com.narvii.model.StoreItemBaseObject, com.narvii.model.IStoreItem
    public boolean isTotalOwned() {
        if (this.ownershipInfo == null && isPersonal()) {
            return true;
        }
        return super.isTotalOwned();
    }

    public boolean canBeFlagged() {
        if (!isPersonal() && !isUserCreated()) {
            return false;
        }
        return true;
    }

    public StickerCollection getLiteStickerCollection() {
        StickerCollection stickerCollection = (StickerCollection) m1622clone();
        stickerCollection.stickerList = null;
        return stickerCollection;
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByLeader(User user) {
        if (status() == 3) {
            return isClosedAccessible(user, true);
        }
        return super.isAccessibleByLeader(user);
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByUser(User user) {
        if (status() == 3) {
            return isClosedAccessible(user, false);
        }
        return super.isAccessibleByUser(user);
    }

    public boolean notAvailable() {
        if (!isDeleted() && !isDisabled()) {
            return false;
        }
        return true;
    }
}
