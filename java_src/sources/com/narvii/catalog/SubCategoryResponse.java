package com.narvii.catalog;

import com.narvii.model.ItemCategory;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ItemListResponse;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
class SubCategoryResponse extends ApiResponse {
    public SubCategoryChildWrapper childrenWrapper;
    public ItemCategory itemCategory;

    public ItemListResponse getItemListResponse() {
        ItemListResponse itemListResponse = new ItemListResponse();
        itemListResponse.statusCode = this.statusCode;
        itemListResponse.timestamp = this.timestamp;
        itemListResponse.duration = this.duration;
        itemListResponse.message = this.message;
        SubCategoryChildWrapper subCategoryChildWrapper = this.childrenWrapper;
        itemListResponse.itemList = subCategoryChildWrapper.itemList;
        itemListResponse.inMyFavoritesMapping = subCategoryChildWrapper.inMyFavoritesMapping;
        return itemListResponse;
    }

    public List<ItemCategory> getSubCategoryList(String str) {
        SubCategoryChildWrapper subCategoryChildWrapper = this.childrenWrapper;
        return (subCategoryChildWrapper == null || !"itemCategory".equals(subCategoryChildWrapper.type)) ? Collections.emptyList() : this.childrenWrapper.getSubCategoryList(str);
    }

    public String type() {
        SubCategoryChildWrapper subCategoryChildWrapper = this.childrenWrapper;
        if (subCategoryChildWrapper == null) {
            return null;
        }
        return subCategoryChildWrapper.type;
    }

    SubCategoryResponse() {
    }
}
