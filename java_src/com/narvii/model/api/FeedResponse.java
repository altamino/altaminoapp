package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class FeedResponse<T extends Feed> extends ObjectResponse<T> {
    public boolean isBookmarked;

    @JsonDeserialize(contentAs = Item.class)
    public List<Item> taggedObjects;

    @Override // com.narvii.model.api.ObjectResponse
    public abstract T object();
}
