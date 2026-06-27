package com.narvii.monetization.store.data;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class ShareRequestListResponse extends ListResponse<ShareRequest> {
    public int shareRequestCount;

    @JsonDeserialize(contentAs = ShareRequest.class)
    public List<ShareRequest> shareRequestList;

    @Override // com.narvii.model.api.ListResponse
    public List<ShareRequest> list() {
        return this.shareRequestList;
    }
}
