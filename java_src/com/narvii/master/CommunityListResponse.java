package com.narvii.master;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Community;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class CommunityListResponse extends ListResponse<Community> {

    @JsonDeserialize(contentAs = Community.class)
    public List<Community> communityList;
    public String invitationId;
    public String tags;

    @Override // com.narvii.model.api.ListResponse
    public List<Community> list() {
        return this.communityList;
    }
}
