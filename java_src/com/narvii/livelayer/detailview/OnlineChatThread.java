package com.narvii.livelayer.detailview;

import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.model.ChatThread;
import com.narvii.model.PlayList;

/* loaded from: classes3.dex */
public class OnlineChatThread extends ChatThread implements OnlineUserInfoInfo.OnlineUserInfoInfoKeeper {
    public PlayList playlistInThreadInfo;
    public OnlineUserInfoInfo userInfo;

    @Override // com.narvii.chat.thread.OnlineUserInfoInfo.OnlineUserInfoInfoKeeper
    public OnlineUserInfoInfo getOnlineUserInfoInfo() {
        return this.userInfo;
    }
}
