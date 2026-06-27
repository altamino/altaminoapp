package com.narvii.catalog.category;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes2.dex */
public class CategoryPost implements PostObject {
    public String content;
    public String icon;
    public String label;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String parentCategoryId;

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    public CategoryPost() {
    }

    public CategoryPost(ItemCategory itemCategory) {
        this.parentCategoryId = itemCategory.parentCategoryId;
        this.label = itemCategory.label;
        this.icon = itemCategory.icon;
        this.content = itemCategory.content;
        this.mediaList = itemCategory.mediaList;
    }

    public Media firstMedia() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.mediaList.get(0);
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
        List<Media> list = this.mediaList;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.mediaList.get(0).url;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        return (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        List<Media> list;
        return StringUtils.isTrimEmpty(this.label) && StringUtils.isTrimEmpty(this.content) && ((list = this.mediaList) == null || list.size() == 0);
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        if (!(postObject instanceof CategoryPost)) {
            return false;
        }
        CategoryPost categoryPost = (CategoryPost) postObject;
        return Utils.isStringEquals(this.label, categoryPost.label) && Utils.isStringEquals(this.icon, categoryPost.icon) && Utils.isStringEquals(this.content, categoryPost.content) && Utils.isListEquals(this.mediaList, categoryPost.mediaList);
    }
}
