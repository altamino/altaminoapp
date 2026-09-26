package com.narvii.ad;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class AdsModuleListResponse extends ListResponse<AdsModuleItem> {
    public int allItemCount;

    @JsonDeserialize(contentAs = AdsModuleItem.class)
    public List<AdsModuleItem> itemList;

    @Override // com.narvii.model.api.ListResponse
    public List<AdsModuleItem> list() {
        return this.itemList;
    }
}
