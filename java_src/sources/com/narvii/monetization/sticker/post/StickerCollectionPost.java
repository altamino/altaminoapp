package com.narvii.monetization.sticker.post;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.Sticker;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class StickerCollectionPost implements PostObject {
    public int collectionType = 3;
    public String description;
    public int iconSourceStickerIndex;
    public String name;

    @JsonDeserialize(contentAs = StickerPost.class)
    public ArrayList<StickerPost> stickerList;

    public StickerCollectionPost() {
    }

    @Override // com.narvii.post.PostObject
    public String content() {
        return this.description;
    }

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return this.name;
    }

    public StickerCollectionPost(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return;
        }
        this.name = stickerCollection.name;
        this.description = stickerCollection.description;
        if (stickerCollection.stickerList != null) {
            this.stickerList = new ArrayList<>();
            for (Sticker sticker : stickerCollection.stickerList) {
                this.stickerList.add(new StickerPost(sticker, sticker.name));
            }
        }
        if (stickerCollection.stickerList != null) {
            int iIndexOfId = Utils.indexOfId(stickerCollection.stickerList, stickerCollection.getIconSourceStickerId());
            this.iconSourceStickerIndex = iIndexOfId;
            if (iIndexOfId == -1) {
                this.iconSourceStickerIndex = 0;
            }
        }
    }

    public StickerCollection getPreviewStickerCollection(NVContext nVContext, StickerCollection stickerCollection, String str) {
        StickerCollection stickerCollection2 = stickerCollection != null ? stickerCollection : new StickerCollection();
        stickerCollection2.collectionId = str;
        stickerCollection2.collectionType = 3;
        stickerCollection2.name = this.name;
        stickerCollection2.description = this.description;
        if (this.stickerList != null) {
            stickerCollection2.stickerList = new ArrayList<>();
            for (StickerPost stickerPost : this.stickerList) {
                Sticker sticker = new Sticker();
                sticker.name = stickerPost.name;
                String iconPreviewUrl = stickerPost.getIconPreviewUrl();
                sticker.icon = iconPreviewUrl;
                sticker.thumbnail = iconPreviewUrl;
                stickerCollection2.stickerList.add(sticker);
            }
        }
        stickerCollection2.author = ((AccountService) nVContext.getService("account")).getUserProfile();
        if (stickerCollection == null) {
            stickerCollection2.isActivated = true;
            OwnershipInfo ownershipInfo = new OwnershipInfo();
            ownershipInfo.ownershipStatus = 1;
            stickerCollection2.ownershipInfo = ownershipInfo;
            RestrictionInfo restrictionInfo = new RestrictionInfo();
            stickerCollection2.restrictionInfo = restrictionInfo;
            restrictionInfo.restrictType = 2;
        }
        return stickerCollection2;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        objectNode.remove("stickerList");
        if (this.stickerList != null) {
            ArrayNode arrayNodePutArray = objectNode.putArray("stickerList");
            for (StickerPost stickerPost : this.stickerList) {
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode.put("name", stickerPost.name);
                Sticker sticker = stickerPost.sticker;
                if (sticker != null) {
                    objectNodeCreateObjectNode.put("stickerId", sticker.id());
                }
                Sticker sticker2 = stickerPost.originalSticker;
                if (sticker2 != null) {
                    objectNodeCreateObjectNode.put("originalStickerId", sticker2.id());
                } else {
                    objectNodeCreateObjectNode.put("icon", stickerPost.getIconPreviewUrl());
                }
                arrayNodePutArray.add(objectNodeCreateObjectNode);
            }
        }
        return objectNode;
    }
}
