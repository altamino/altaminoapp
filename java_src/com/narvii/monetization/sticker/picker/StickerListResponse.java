package com.narvii.monetization.sticker.picker;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Sticker;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class StickerListResponse extends ListResponse<Sticker> {

    @JsonDeserialize(contentAs = Sticker.class)
    public List<Sticker> stickerList;

    @Override // com.narvii.model.api.ListResponse
    public List<Sticker> list() {
        return this.stickerList;
    }
}
