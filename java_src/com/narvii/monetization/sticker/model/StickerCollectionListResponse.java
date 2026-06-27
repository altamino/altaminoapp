package com.narvii.monetization.sticker.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class StickerCollectionListResponse extends ListResponse<StickerCollection> {
    public int stickerCollectionCount;

    @JsonDeserialize(contentAs = StickerCollection.class)
    public List<StickerCollection> stickerCollectionList;

    @Override // com.narvii.model.api.ListResponse
    public List<StickerCollection> list() {
        return this.stickerCollectionList;
    }
}
