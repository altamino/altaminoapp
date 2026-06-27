package com.narvii.community.search;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.community.CommunityUserInfo;
import com.narvii.model.Community;
import com.narvii.model.api.ListResponse;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class SearchCommunityListResponse extends ListResponse<Community> {
    public int allItemCount;

    @JsonDeserialize(contentAs = Community.class)
    public List<Community> communityList;
    public String communitySource;
    public Community endpointMatchedCommunity;
    public String invitationId;

    @JsonDeserialize(contentAs = CommunityUserInfo.class, keyAs = Integer.class)
    public Map<Integer, CommunityUserInfo> userInfoInJoinedCommunities;
    public List<Community> userJoinedCommunityList;

    @Override // com.narvii.model.api.ListResponse
    public List<Community> list() {
        return this.communityList;
    }
}
