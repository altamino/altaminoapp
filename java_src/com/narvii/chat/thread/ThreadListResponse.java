package com.narvii.chat.thread;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.PlayList;
import com.narvii.model.api.ListResponse;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class ThreadListResponse extends ListResponse<ChatThread> {
    public int allItemCount;

    @JsonDeserialize(contentAs = Community.class)
    public Map<String, Community> communityInfoMapping;

    @JsonDeserialize(contentAs = PlayList.class)
    public Map<String, PlayList> playlistInThreadList;

    @JsonDeserialize(contentAs = ChatThread.class)
    public List<ChatThread> threadList;

    @JsonDeserialize(contentAs = OnlineUserInfoInfo.class, keyAs = String.class)
    public Map<String, OnlineUserInfoInfo> userInfoInThread;

    @Override // com.narvii.model.api.ListResponse
    public List<ChatThread> list() {
        return this.threadList;
    }
}
