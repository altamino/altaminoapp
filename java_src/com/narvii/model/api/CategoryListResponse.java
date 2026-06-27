package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.ItemCategory;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class CategoryListResponse extends ListResponse<ItemCategory> {
    public ItemCategory allEntriesItemCategory;

    @JsonDeserialize(contentAs = ItemCategory.class)
    public List<ItemCategory> itemCategoryList;

    @Override // com.narvii.model.api.ListResponse
    public List<ItemCategory> list() {
        return this.itemCategoryList;
    }

    public ItemCategory getCategory(String str) {
        for (ItemCategory itemCategory : this.itemCategoryList) {
            if (Utils.isEquals(itemCategory.categoryId, str)) {
                return itemCategory;
            }
        }
        return null;
    }

    public List<ItemCategory> getSubCategoryList(String str) {
        ArrayList arrayList = null;
        for (ItemCategory itemCategory : this.itemCategoryList) {
            if (Utils.isEquals(itemCategory.parentCategoryId, str)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemCategory);
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    public ItemCategory getRootCategory() {
        for (ItemCategory itemCategory : this.itemCategoryList) {
            if (itemCategory.parentCategoryId == null) {
                return itemCategory;
            }
        }
        return null;
    }

    public boolean isLeafCategory(String str) {
        return getSubCategoryList(str).isEmpty();
    }
}
