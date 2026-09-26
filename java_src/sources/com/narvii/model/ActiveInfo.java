package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ActiveInfo {

    @JsonDeserialize(contentAs = User.class)
    public List<User> latestActiveUserList;
    public int memberCount;
}
