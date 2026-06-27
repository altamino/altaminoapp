package com.narvii.catalog;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Item;
import com.narvii.model.api.CategoryListResponse;
import java.util.HashMap;
import java.util.List;

/* compiled from: CategoryListAdapter.java */
/* loaded from: classes2.dex */
class SubCategoryChildWrapper extends CategoryListResponse {

    @JsonDeserialize(contentAs = Integer.class, keyAs = String.class)
    public HashMap<String, Integer> inMyFavoritesMapping;

    @JsonDeserialize(contentAs = Item.class)
    public List<Item> itemList;
    public String type;

    SubCategoryChildWrapper() {
    }
}
