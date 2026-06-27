package com.narvii.model.api;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.CheckInRanking;
import com.narvii.model.User;
import java.util.List;

/* loaded from: classes.dex */
public class UserListResponse extends ListResponse<User> {

    @JsonProperty("accountList")
    @JsonDeserialize(contentAs = User.class)
    @Deprecated
    public List<User> accountList;

    @JsonDeserialize(contentAs = CheckInRanking.class)
    @JsonSerialize(contentAs = CheckInRanking.class)
    public List<CheckInRanking> groupedUserProfileList;

    @JsonProperty("memberList")
    @JsonDeserialize(contentAs = User.class)
    public List<User> memberList;

    @JsonProperty("userProfileList")
    @JsonDeserialize(contentAs = User.class)
    public List<User> userList;
    public int userProfileCount;

    @Override // com.narvii.model.api.ListResponse
    public List<User> list() {
        List<User> list = this.userList;
        if (list != null) {
            return list;
        }
        List<User> list2 = this.accountList;
        return list2 != null ? list2 : this.memberList;
    }
}
