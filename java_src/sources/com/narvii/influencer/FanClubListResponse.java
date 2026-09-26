package com.narvii.influencer;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class FanClubListResponse extends ListResponse<FanClub> {

    @JsonDeserialize(contentAs = FanClub.class)
    public List<FanClub> fanClubList;

    @Override // com.narvii.model.api.ListResponse
    public List<FanClub> list() {
        return this.fanClubList;
    }
}
