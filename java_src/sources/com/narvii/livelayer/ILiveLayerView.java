package com.narvii.livelayer;

import com.narvii.model.User;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
public interface ILiveLayerView {
    boolean disallowNewUserCome();

    int getAvatarCount();

    int getMinAvatarCount();

    void onMembersCountChanged(int i10);

    void onUserJoined(User user);

    void setUserList(List<User> list, int i10);
}
