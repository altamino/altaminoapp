package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Item;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ItemListResponse extends ListResponse<Item> {

    @JsonDeserialize(contentAs = SubCategoryChildWrapper.class)
    public SubCategoryChildWrapper childrenWrapper;

    @JsonDeserialize(contentAs = Integer.class, keyAs = String.class)
    public Map<String, Integer> inMyFavoritesMapping;

    @JsonDeserialize(contentAs = Item.class)
    public List<Item> itemList;

    @Override // com.narvii.model.api.ListResponse
    public List<Item> list() {
        List<Item> list;
        SubCategoryChildWrapper subCategoryChildWrapper = this.childrenWrapper;
        return (subCategoryChildWrapper == null || (list = subCategoryChildWrapper.itemList) == null) ? this.itemList : list;
    }
}
