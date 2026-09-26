package com.narvii.user.follow;

import com.narvii.model.User;

/* JADX INFO: loaded from: classes2.dex */
public interface IUserFollow {
    void follow(User user);

    void followFail();

    void followSuccess();

    boolean isSendingFollow(User user);

    boolean needUpdateUserAfterFollow();

    void onFollowStatusUpdated();
}
