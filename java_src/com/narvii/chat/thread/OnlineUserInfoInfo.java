package com.narvii.chat.thread;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.User;
import java.util.List;

/* loaded from: classes2.dex */
public class OnlineUserInfoInfo {
    public int userProfileCount;

    @JsonDeserialize(contentAs = User.class)
    public List<User> userProfileList;

    public interface OnlineUserInfoInfoKeeper {
        OnlineUserInfoInfo getOnlineUserInfoInfo();
    }
}
