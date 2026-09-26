package com.narvii.monetization.store.data;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class StoreItemListResponse extends ListResponse<StoreItem> {

    @JsonDeserialize(contentAs = StoreItem.class)
    public List<StoreItem> storeItemList;
    public StoreSectionMini storeSection;

    @Override // com.narvii.model.api.ListResponse
    public List<StoreItem> list() {
        return this.storeItemList;
    }
}
