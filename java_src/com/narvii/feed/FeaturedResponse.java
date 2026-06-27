package com.narvii.feed;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Feed;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class FeaturedResponse extends ListResponse<Feed> {

    @JsonDeserialize(contentAs = FeaturedFeed.class)
    public List<FeaturedFeed> featuredList;

    @Override // com.narvii.model.api.ListResponse
    public List<Feed> list() {
        ArrayList arrayList = new ArrayList();
        Iterator<FeaturedFeed> it = this.featuredList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().refObject);
        }
        return arrayList;
    }
}
