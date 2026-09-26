package com.narvii.master.invitation;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Community;
import com.narvii.model.api.ObjectResponse;

/* JADX INFO: loaded from: classes6.dex */
public class CommunityInviteResponse extends ObjectResponse<Community> {

    @JsonDeserialize(contentAs = Community.class)
    public Community community;

    @JsonDeserialize(contentAs = Invitation.class)
    public Invitation invitation;
    public String invitationId;
    public boolean isCurrentUserJoined;
    public boolean isMembershipRequestedByCurrentUser;
    public String path;

    @Override // com.narvii.model.api.ObjectResponse
    public Community object() {
        return this.community;
    }
}
