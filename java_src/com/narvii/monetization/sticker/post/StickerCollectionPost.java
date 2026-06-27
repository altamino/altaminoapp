package com.narvii.monetization.sticker.post;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
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
import java.util.Iterator;

/* loaded from: classes3.dex */
public class StickerCollectionPost implements PostObject {
    public int collectionType = 3;
    public String description;
    public int iconSourceStickerIndex;
    public String name;

    @JsonDeserialize(contentAs = StickerPost.class)
    public ArrayList<StickerPost> stickerList;

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

    public StickerCollectionPost() {
    }

    public StickerCollectionPost(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return;
        }
        this.name = stickerCollection.name;
        this.description = stickerCollection.description;
        if (stickerCollection.stickerList != null) {
            this.stickerList = new ArrayList<>();
            Iterator<Sticker> it = stickerCollection.stickerList.iterator();
            while (it.hasNext()) {
                Sticker next = it.next();
                this.stickerList.add(new StickerPost(next, next.name));
            }
        }
        if (stickerCollection.stickerList != null) {
            this.iconSourceStickerIndex = Utils.indexOfId(stickerCollection.stickerList, stickerCollection.getIconSourceStickerId());
            if (this.iconSourceStickerIndex == -1) {
                this.iconSourceStickerIndex = 0;
            }
        }
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return this.name;
    }

    @Override // com.narvii.post.PostObject
    public String content() {
        return this.description;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        objectNode.remove("stickerList");
        if (this.stickerList != null) {
            ArrayNode arrayNodePutArray = objectNode.putArray("stickerList");
            Iterator<StickerPost> it = this.stickerList.iterator();
            while (it.hasNext()) {
                StickerPost next = it.next();
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode.put(AppMeasurementSdk.ConditionalUserProperty.NAME, next.name);
                Sticker sticker = next.sticker;
                if (sticker != null) {
                    objectNodeCreateObjectNode.put("stickerId", sticker.id());
                }
                Sticker sticker2 = next.originalSticker;
                if (sticker2 != null) {
                    objectNodeCreateObjectNode.put("originalStickerId", sticker2.id());
                } else {
                    objectNodeCreateObjectNode.put("icon", next.getIconPreviewUrl());
                }
                arrayNodePutArray.add(objectNodeCreateObjectNode);
            }
        }
        return objectNode;
    }

    public StickerCollection getPreviewStickerCollection(NVContext nVContext, StickerCollection stickerCollection, String str) {
        StickerCollection stickerCollection2 = stickerCollection != null ? stickerCollection : new StickerCollection();
        stickerCollection2.collectionId = str;
        stickerCollection2.collectionType = 3;
        stickerCollection2.name = this.name;
        stickerCollection2.description = this.description;
        if (this.stickerList != null) {
            stickerCollection2.stickerList = new ArrayList<>();
            Iterator<StickerPost> it = this.stickerList.iterator();
            while (it.hasNext()) {
                StickerPost next = it.next();
                Sticker sticker = new Sticker();
                sticker.name = next.name;
                sticker.icon = next.getIconPreviewUrl();
                sticker.thumbnail = sticker.icon;
                stickerCollection2.stickerList.add(sticker);
            }
        }
        stickerCollection2.author = ((AccountService) nVContext.getService("account")).getUserProfile();
        if (stickerCollection == null) {
            stickerCollection2.isActivated = true;
            OwnershipInfo ownershipInfo = new OwnershipInfo();
            ownershipInfo.ownershipStatus = 1;
            stickerCollection2.ownershipInfo = ownershipInfo;
            stickerCollection2.restrictionInfo = new RestrictionInfo();
            stickerCollection2.restrictionInfo.restrictType = 2;
        }
        return stickerCollection2;
    }
}
