package com.narvii.community;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.master.CommunityListResponse;
import java.util.Map;

/* loaded from: classes2.dex */
public class MyCommunityListResponse extends CommunityListResponse {

    @JsonDeserialize(contentAs = CommunityUserInfo.class, keyAs = Integer.class)
    public Map<Integer, CommunityUserInfo> userInfoInCommunities;
}
