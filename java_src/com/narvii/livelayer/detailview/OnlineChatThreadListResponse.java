package com.narvii.livelayer.detailview;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.model.PlayList;
import com.narvii.model.api.ListResponse;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class OnlineChatThreadListResponse extends ListResponse<OnlineChatThread> implements OnlineDataResponse<OnlineChatThread> {

    @JsonDeserialize(contentAs = PlayList.class)
    public Map<String, PlayList> playlistInThreadList;

    @JsonDeserialize(contentAs = OnlineChatThread.class)
    public List<OnlineChatThread> recommendedThreadList;

    @JsonDeserialize(contentAs = OnlineChatThread.class)
    public List<OnlineChatThread> threadList;

    @JsonDeserialize(contentAs = OnlineUserInfoInfo.class)
    public Map<String, OnlineUserInfoInfo> userInfoInThread;

    @Override // com.narvii.model.api.ListResponse
    public List<OnlineChatThread> list() {
        String str;
        PlayList playList;
        String str2;
        OnlineUserInfoInfo onlineUserInfoInfo;
        List<OnlineChatThread> list = this.threadList;
        if (list != null && this.userInfoInThread != null) {
            for (OnlineChatThread onlineChatThread : list) {
                if (onlineChatThread != null && (str2 = onlineChatThread.threadId) != null && (onlineUserInfoInfo = this.userInfoInThread.get(str2)) != null) {
                    onlineChatThread.userInfo = onlineUserInfoInfo;
                }
            }
        }
        List<OnlineChatThread> list2 = this.threadList;
        if (list2 != null && this.playlistInThreadList != null) {
            for (OnlineChatThread onlineChatThread2 : list2) {
                if (onlineChatThread2 != null && (str = onlineChatThread2.threadId) != null && (playList = this.playlistInThreadList.get(str)) != null) {
                    onlineChatThread2.playlistInThreadInfo = playList;
                }
            }
        }
        return this.threadList;
    }

    @Override // com.narvii.livelayer.detailview.OnlineDataResponse
    public List<OnlineChatThread> getRecommendedList() {
        return this.recommendedThreadList;
    }
}
