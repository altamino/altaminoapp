package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes3.dex */
public class ItemCategory extends NVObject {
    public User author;
    public String categoryId;
    public String content;
    public String createdTime;
    public String icon;
    public int itemsCount;
    public String label;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String parentCategoryId;
    public int position;
    public int subcategoriesCount;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 13;
    }

    @Override // com.narvii.model.NVObject
    public String objectTypeName() {
        return "itemCategory";
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    public Media firstMedia() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.mediaList.get(0);
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.categoryId;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return this.parentCategoryId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        if (user == null) {
            return null;
        }
        return user.uid();
    }

    public int uRole() {
        User user = this.author;
        if (user == null) {
            return 0;
        }
        return user.role;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ItemCategory) {
            return Utils.isEqualsNotNull(((ItemCategory) obj).categoryId, this.categoryId);
        }
        return false;
    }
}
