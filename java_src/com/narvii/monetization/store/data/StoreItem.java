package com.narvii.monetization.store.data;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.ChatBubble;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.User;
import com.narvii.monetization.avatarframe.AvatarFrame;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.Date;

/* loaded from: classes.dex */
public class StoreItem extends NVObject {

    @JsonIgnore
    private NVObject cacheRefObject;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ItemBasicInfo itemBasicInfo;
    public RestrictionInfo itemRestrictionInfo;
    public JsonNode refObject;
    public String refObjectId;
    public int refObjectType;

    /* loaded from: classes3.dex */
    public static class ItemBasicInfo {
        public String icon;
        public String name;
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

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.refObjectId;
    }

    public NVObject getRefObject() {
        if (this.cacheRefObject == null) {
            this.cacheRefObject = parseRefObject(this.refObjectType, this.refObject);
        }
        return this.cacheRefObject;
    }

    public void setCachedRefObject(NVObject nVObject) {
        this.cacheRefObject = nVObject;
    }

    public void setChangedRefObject(NVObject nVObject) {
        this.cacheRefObject = nVObject;
        this.refObject = JacksonUtils.DEFAULT_MAPPER.valueToTree(nVObject);
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByLeader(User user) {
        NVObject refObject = getRefObject();
        if (refObject != null) {
            return refObject.isAccessibleByLeader(user);
        }
        return super.isAccessibleByLeader(user);
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByUser(User user) {
        NVObject refObject = getRefObject();
        if (refObject != null) {
            return refObject.isAccessibleByUser(user);
        }
        return super.isAccessibleByUser(user);
    }

    public static NVObject parseRefObject(int i, JsonNode jsonNode) {
        if (jsonNode == null) {
            return null;
        }
        try {
            if (i == 114) {
                return (NVObject) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, StickerCollection.class);
            }
            if (i == 116) {
                return (NVObject) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, ChatBubble.class);
            }
            if (i == 122) {
                return (NVObject) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, AvatarFrame.class);
            }
            Log.e("Unknown store item ref object type: " + jsonNode);
            return null;
        } catch (Exception e) {
            Log.e("store item ref object parse error: ", e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static StoreItem wrapStoreItem(IStoreItem iStoreItem) {
        StoreItem storeItem = new StoreItem();
        if (iStoreItem != 0) {
            storeItem.refObjectType = iStoreItem.objectType();
            storeItem.refObjectId = iStoreItem.id();
            storeItem.itemRestrictionInfo = iStoreItem.getRestrictionInfo();
            storeItem.refObject = JacksonUtils.DEFAULT_MAPPER.valueToTree(iStoreItem);
            storeItem.cacheRefObject = (NVObject) iStoreItem;
            storeItem.itemBasicInfo = new ItemBasicInfo();
            storeItem.itemBasicInfo.icon = iStoreItem.getStoreIcon();
            storeItem.itemBasicInfo.name = iStoreItem.getName();
        }
        return storeItem;
    }
}
