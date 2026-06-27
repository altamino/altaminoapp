package com.narvii.chat.detail;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class MemberListResponse extends ListResponse<User> {

    @JsonDeserialize(contentAs = User.class)
    public List<User> memberList;

    @Override // com.narvii.model.api.ListResponse
    public List<User> list() {
        return this.memberList;
    }
}
