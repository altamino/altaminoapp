package com.narvii.community.search;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class CommunityKeyPredictionListResponse extends ListResponse<CommunitySearchKeyPrediction> {

    @JsonDeserialize(contentAs = CommunitySearchKeyPrediction.class)
    public List<CommunitySearchKeyPrediction> suggestedKeywordList;

    @Override // com.narvii.model.api.ListResponse
    public List<CommunitySearchKeyPrediction> list() {
        return this.suggestedKeywordList;
    }
}
