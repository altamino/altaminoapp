package com.narvii.invite;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class InvitationLogListResponse extends ListResponse<InvitationLog> {

    @JsonDeserialize(contentAs = InvitationLog.class)
    public List<InvitationLog> invitationLogList;

    @Override // com.narvii.model.api.ListResponse
    public List<InvitationLog> list() {
        return this.invitationLogList;
    }
}
