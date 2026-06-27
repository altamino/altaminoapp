package com.narvii.user.follow;

import com.narvii.model.User;

/* loaded from: classes3.dex */
public interface IUserFollow {

    /* renamed from: com.narvii.user.follow.IUserFollow$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$followFail(IUserFollow iUserFollow) {
        }

        public static void $default$followSuccess(IUserFollow iUserFollow) {
        }

        public static boolean $default$needUpdateUserAfterFollow(IUserFollow iUserFollow) {
            return false;
        }
    }

    void follow(User user);

    void followFail();

    void followSuccess();

    boolean isSendingFollow(User user);

    boolean needUpdateUserAfterFollow();

    void onFollowStatusUpdated();
}
