package com.narvii.master.invitation;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.CommunityMemRequest;
import com.narvii.model.api.ObjectResponse;

/* loaded from: classes3.dex */
public class CommunityMemRequestResponse extends ObjectResponse<CommunityMemRequest> {

    @JsonDeserialize(contentAs = CommunityMemRequest.class)
    public CommunityMemRequest communityMembershipRequest;

    @Override // com.narvii.model.api.ObjectResponse
    public CommunityMemRequest object() {
        return this.communityMembershipRequest;
    }
}
