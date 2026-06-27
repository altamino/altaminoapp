package com.narvii.monetization.subscription;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.store.data.StoreSectionMini;
import java.util.List;

/* loaded from: classes3.dex */
public class StoreItemSubscriptionListResponse extends ListResponse<StoreItem> {
    public StoreSectionMini storeSection;

    @JsonDeserialize(contentAs = StoreItem.class)
    public List<StoreItem> storeSubscriptionItemList;

    @Override // com.narvii.model.api.ListResponse
    public List<StoreItem> list() {
        return this.storeSubscriptionItemList;
    }
}
