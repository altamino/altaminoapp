package com.narvii.catalog.category;

import com.narvii.model.ItemCategory;
import com.narvii.model.api.ObjectResponse;

/* loaded from: classes2.dex */
public class CategoryResponse extends ObjectResponse<ItemCategory> {
    public ItemCategory itemCategory;

    @Override // com.narvii.model.api.ObjectResponse
    public ItemCategory object() {
        return this.itemCategory;
    }
}
