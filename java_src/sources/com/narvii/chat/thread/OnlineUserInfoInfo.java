package com.narvii.chat.thread;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.User;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class OnlineUserInfoInfo {
    public int userProfileCount;

    @JsonDeserialize(contentAs = User.class)
    public List<User> userProfileList;

    public interface OnlineUserInfoInfoKeeper {
        OnlineUserInfoInfo getOnlineUserInfoInfo();
    }
}
