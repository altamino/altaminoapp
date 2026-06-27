package com.narvii.model.api;

import com.narvii.model.Item;

/* loaded from: classes3.dex */
public class ItemResponse extends FeedResponse<Item> {
    public int inMyFavorites;
    public Item item;

    @Override // com.narvii.model.api.FeedResponse, com.narvii.model.api.ObjectResponse
    public Item object() {
        return this.item;
    }
}
