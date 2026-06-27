package com.narvii.item.post;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.feed.BackgroundPost;
import com.narvii.influencer.FansOnlyPost;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ItemPost extends BackgroundPost implements FansOnlyPost {
    public String address;
    public String content;
    public String icon;
    public List<ItemCategory> itemCategoryList;
    public List<Item> itemList;
    public String keywords;
    public String label;
    public int latitude;
    public int longitude;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    public ItemPost() {
    }

    public ItemPost(NVContext nVContext, Item item, List<Item> list) {
        this.label = item.label;
        this.keywords = item.keywords;
        this.content = item.content;
        ObjectNode objectNode = item.extensions;
        String str = null;
        this.extensions = objectNode == null ? null : objectNode.deepCopy();
        List<Media> list2 = item.mediaList;
        if (list2 != null && list2.size() > 0) {
            str = item.mediaList.get(0).url;
        }
        this.icon = str;
        this.mediaList = new ArrayList();
        List<Media> list3 = item.mediaList;
        if (list3 != null && list3.size() > 1) {
            List<Media> list4 = this.mediaList;
            List<Media> list5 = item.mediaList;
            list4.addAll(list5.subList(1, list5.size()));
        }
        this.itemList = list;
        this.latitude = item.latitude;
        this.longitude = item.longitude;
        this.address = item.address;
    }

    public Item getPreviewItem(Item item, NVContext nVContext, String str) {
        Item item2 = item != null ? item : new Item();
        item2.itemId = str;
        item2.author = ((AccountService) nVContext.getService("account")).getUserProfile();
        item2.label = this.label;
        item2.keywords = this.keywords;
        item2.content = this.content;
        item2.extensions = this.extensions;
        if (this.icon != null) {
            ArrayList arrayList = new ArrayList();
            Media media = new Media();
            media.type = 100;
            media.url = this.icon;
            arrayList.add(media);
            List<Media> list = this.mediaList;
            if (list != null) {
                arrayList.addAll(list);
            }
            item2.mediaList = arrayList;
        }
        if (item == null) {
            item2.createdTime = new Date();
            item2.modifiedTime = new Date();
        } else {
            item2.modifiedTime = new Date();
        }
        item2.latitude = this.latitude;
        item2.longitude = this.longitude;
        item2.address = this.address;
        item2._isPreview = true;
        return item2;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return this.label;
    }

    @Override // com.narvii.post.PostObject
    public String content() {
        return this.content;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        return this.icon;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        objectNode.remove("itemList");
        objectNode.remove("firstImageTaken");
        objectNode.remove("itemCategoryList");
        if (this.icon != null) {
            objectNode.remove("mediaList");
            ArrayList arrayList = new ArrayList();
            Media media = new Media();
            media.type = 100;
            media.url = this.icon;
            arrayList.add(media);
            List<Media> list = this.mediaList;
            if (list != null) {
                arrayList.addAll(list);
            }
            objectNode.put("mediaList", (ArrayNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(arrayList));
        }
        if (this.itemList != null) {
            ArrayNode arrayNodePutArray = objectNode.putArray("taggedObjectInfo");
            for (Item item : this.itemList) {
                ArrayNode arrayNodeAddArray = arrayNodePutArray.addArray();
                arrayNodeAddArray.add(item.itemId);
                arrayNodeAddArray.add(2);
            }
        }
        if (this.itemCategoryList != null) {
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator<ItemCategory> it = this.itemCategoryList.iterator();
            while (it.hasNext()) {
                arrayNodeCreateArrayNode.add(it.next().categoryId);
            }
            objectNode.put("itemCategoryIdList", arrayNodeCreateArrayNode);
        }
        ObjectNode objectNode2 = (ObjectNode) JacksonUtils.nodePath(objectNode, "extensions");
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(objectNode2, "props");
        if (jsonNodeNodePath instanceof ArrayNode) {
            ArrayNode arrayNode = (ArrayNode) jsonNodeNodePath;
            for (int size = arrayNode.size() - 1; size >= 0; size--) {
                if (TextUtils.isEmpty(JacksonUtils.nodeString(arrayNode.get(size), "value"))) {
                    arrayNode.remove(size);
                }
            }
            if (arrayNode.size() == 0) {
                objectNode2.remove("info");
            }
        }
        return objectNode;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        List<Media> list;
        return StringUtils.isTrimEmpty(this.label) && StringUtils.isTrimEmpty(this.content) && ((list = this.mediaList) == null || list.size() == 0);
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        if (!(postObject instanceof ItemPost)) {
            return false;
        }
        ItemPost itemPost = (ItemPost) postObject;
        return Utils.isStringEquals(this.label, itemPost.label) && Utils.isStringEquals(this.content, itemPost.content) && Utils.isEquals(this.icon, itemPost.icon) && Utils.isListEquals(this.mediaList, itemPost.mediaList) && Utils.isStringEquals(this.keywords, itemPost.keywords) && Utils.isListEquals(this.itemList, itemPost.itemList) && this.latitude == itemPost.latitude && this.longitude == itemPost.longitude;
    }

    @Override // com.narvii.influencer.FansOnlyPost
    public boolean isFansOnly() {
        return JacksonUtils.nodeBoolean(this.extensions, "fansOnly");
    }

    @Override // com.narvii.influencer.FansOnlyPost
    public void setFansOnly(boolean z) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("fansOnly", z);
    }
}
