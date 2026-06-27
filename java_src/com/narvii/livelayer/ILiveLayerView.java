package com.narvii.livelayer;

import com.narvii.model.User;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface ILiveLayerView {
    boolean disallowNewUserCome();

    int getAvatarCount();

    int getMinAvatarCount();

    void onMembersCountChanged(int i);

    void onUserJoined(User user);

    void setUserList(List<User> list, int i);
}
