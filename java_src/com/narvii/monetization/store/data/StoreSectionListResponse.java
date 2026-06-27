package com.narvii.monetization.store.data;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class StoreSectionListResponse extends ApiResponse {

    @JsonDeserialize(contentAs = StoreSection.class)
    public List<StoreSection> storeSectionList;

    public List<StoreSection> getSectionList() {
        List<StoreSection> list = this.storeSectionList;
        if (list == null) {
            return null;
        }
        Iterator<StoreSection> it = list.iterator();
        while (it.hasNext()) {
            StoreSection next = it.next();
            if (next.previewStoreItemList.size() == 0 || next.allItemsCount == 0) {
                it.remove();
            }
        }
        return this.storeSectionList;
    }
}
