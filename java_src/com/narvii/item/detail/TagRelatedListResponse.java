package com.narvii.item.detail;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Feed;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes.dex */
public class TagRelatedListResponse extends ListResponse<Feed> {

    @JsonDeserialize(contentUsing = Feed.FeedDeserializer.class)
    public List<Feed> tagRelatedObjects;

    @Override // com.narvii.model.api.ListResponse
    public List<Feed> list() {
        return this.tagRelatedObjects;
    }
}
