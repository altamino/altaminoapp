package com.narvii.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class ChatBubble extends StoreItemBaseObject {
    public static final int CHAT_BUBBLE_TYPE_CUSTOM = 1;
    public static final int CHAT_BUBBLE_TYPE_OFFICIAL = 2;
    public static final String DEFAULT_BUBBLE_ID = "default";
    public static final String EDIT_BUBBLE_ID = "edit";
    public static final int LOCAL_TYPE_DEFAULE = -1;
    public static final int LOCAL_TYPE_EDIT = -2;
    public String backgroundImage;
    public String bannerImage;
    public BubbleInfo config;
    public String coverImage;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public boolean deletable;

    @JsonProperty("bubbleId")
    public String id;
    public String md5;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public String name;
    public String resourceUrl;
    public int status;
    public String templateId;

    @JsonProperty("bubbleType")
    public int type;
    public int version;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 116;
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

    public String getPreviewUrl() {
        return this.coverImage;
    }

    public String getBackgroundUrl() {
        return this.backgroundImage;
    }

    public String getBannerUrl() {
        return this.bannerImage;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    @Override // com.narvii.model.IStoreItem
    public String getName() {
        return this.name;
    }

    @Override // com.narvii.model.IStoreItem
    public String getStoreIcon() {
        return this.coverImage;
    }

    public int version() {
        return this.version;
    }

    public Date getOwnTime() {
        Date date;
        OwnershipInfo ownershipInfo = this.ownershipInfo;
        return (ownershipInfo == null || (date = ownershipInfo.createdTime) == null) ? this.createdTime : date;
    }

    @Override // com.narvii.model.StoreItemBaseObject, com.narvii.model.IStoreItem
    public boolean isActivated() {
        return isTotalOwned();
    }
}
