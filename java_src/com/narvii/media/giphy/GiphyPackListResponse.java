package com.narvii.media.giphy;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class GiphyPackListResponse extends ListResponse<GiphyPack> {

    @JsonDeserialize(contentAs = GiphyPack.class)
    public List<GiphyPack> data;

    @Override // com.narvii.model.api.ListResponse
    public List<GiphyPack> list() {
        return this.data;
    }
}
