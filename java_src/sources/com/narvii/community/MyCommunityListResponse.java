package com.narvii.community;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.master.CommunityListResponse;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class MyCommunityListResponse extends CommunityListResponse {
    public boolean showStoreBadge;

    @JsonDeserialize(contentAs = CommunityUserInfo.class, keyAs = Integer.class)
    public Map<Integer, CommunityUserInfo> userInfoInCommunities;
}
