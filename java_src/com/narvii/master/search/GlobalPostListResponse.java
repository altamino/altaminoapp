package com.narvii.master.search;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.headlines.Headline;
import com.narvii.headlines.HeadlineListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class GlobalPostListResponse extends HeadlineListResponse {

    @JsonDeserialize(contentAs = Headline.class)
    public List<Headline> postList;

    @Override // com.narvii.headlines.HeadlineListResponse
    protected List<Headline> getHeadlinePostList() {
        return this.postList;
    }
}
