package com.narvii.story.vote;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class VotedUserListResponse extends ListResponse<User> {

    @JsonProperty("userProfileList")
    @JsonDeserialize(contentAs = User.class)
    public List<User> userList;

    @JsonProperty("votedValueMapV2")
    public HashMap<String, VotedTimeBean> votedTimeMap = new HashMap<>();

    @Override // com.narvii.model.api.ListResponse
    public List<User> list() {
        return this.userList;
    }
}
