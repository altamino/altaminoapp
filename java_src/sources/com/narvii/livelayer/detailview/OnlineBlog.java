package com.narvii.livelayer.detailview;

import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.model.Blog;

/* JADX INFO: loaded from: classes8.dex */
public class OnlineBlog extends Blog implements OnlineUserInfoInfo.OnlineUserInfoInfoKeeper {
    public OnlineUserInfoInfo userInfo;

    @Override // com.narvii.chat.thread.OnlineUserInfoInfo.OnlineUserInfoInfoKeeper
    public OnlineUserInfoInfo getOnlineUserInfoInfo() {
        return this.userInfo;
    }
}
