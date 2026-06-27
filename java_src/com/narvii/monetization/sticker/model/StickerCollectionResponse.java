package com.narvii.monetization.sticker.model;

import com.narvii.model.api.ObjectResponse;

/* loaded from: classes3.dex */
public class StickerCollectionResponse extends ObjectResponse<StickerCollection> {
    public StickerCollection stickerCollection;

    @Override // com.narvii.model.api.ObjectResponse
    public StickerCollection object() {
        return this.stickerCollection;
    }
}
