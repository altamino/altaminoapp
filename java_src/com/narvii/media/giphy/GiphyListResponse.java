package com.narvii.media.giphy;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class GiphyListResponse extends ListResponse<GiphyItem> {

    @JsonDeserialize(contentAs = GiphyItem.class)
    public List<GiphyItem> data;

    @Override // com.narvii.model.api.ListResponse
    public List<GiphyItem> list() {
        return this.data;
    }
}
