package com.narvii.invite;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class InvitationListResponse extends ListResponse<Invitation> {

    @JsonDeserialize(contentAs = Invitation.class)
    public List<Invitation> communityInvitationList;

    @Override // com.narvii.model.api.ListResponse
    public List<Invitation> list() {
        return this.communityInvitationList;
    }
}
