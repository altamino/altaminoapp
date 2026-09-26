package com.narvii.feed;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.narvii.app.NVContext;
import com.narvii.model.Feed;
import com.narvii.model.api.ListResponse;

/* JADX INFO: loaded from: classes6.dex */
public abstract class FeedListAdapter extends BaseFeedListAdapter<Feed, ListResponse<? extends Feed>> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<Feed> dataType() {
        return Feed.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public JsonDeserializer<Feed> dataDeserializer() {
        return new Feed.FeedDeserializer();
    }

    public FeedListAdapter(NVContext nVContext) {
        super(nVContext);
    }
}
