package com.narvii.monetization.store.data;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class RecommendStoreItemListResponse extends ListResponse<StoreItem> {

    @JsonDeserialize(contentAs = StoreItem.class)
    public List<StoreItem> recommendStoreItemList;

    @Override // com.narvii.model.api.ListResponse
    public List<StoreItem> list() {
        return this.recommendStoreItemList;
    }
}
