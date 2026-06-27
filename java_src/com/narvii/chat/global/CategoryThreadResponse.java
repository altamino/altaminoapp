package com.narvii.chat.global;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.chat.global.GlobalThreadListWrapper;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.PlayList;
import com.narvii.model.api.ListResponse;
import com.narvii.model.api.Pagination;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class CategoryThreadResponse extends ListResponse<ChatThread> {

    @JsonDeserialize(contentAs = Community.class, keyAs = String.class)
    public Map<String, Community> communityInfoMapping;
    public GlobalThreadListWrapper.GlobalThreadCategory threadCategory;
    public GlobalThreadListWrapper.ThreadListWrapper threadListWrapper;

    @Override // com.narvii.model.api.ListResponse
    public List<ChatThread> list() {
        GlobalThreadListWrapper.ThreadListWrapper threadListWrapper = this.threadListWrapper;
        return threadListWrapper == null ? new ArrayList() : threadListWrapper.threadList;
    }

    @Override // com.narvii.model.api.ListResponse
    public Pagination getPaging() {
        GlobalThreadListWrapper.ThreadListWrapper threadListWrapper = this.threadListWrapper;
        if (threadListWrapper == null) {
            return null;
        }
        return threadListWrapper.paging;
    }

    public Map<String, OnlineUserInfoInfo> getOnlineUserInfo() {
        GlobalThreadListWrapper.ThreadListWrapper threadListWrapper = this.threadListWrapper;
        return threadListWrapper == null ? new HashMap() : threadListWrapper.userInfoInThread;
    }

    public Map<String, PlayList> getPlayList() {
        GlobalThreadListWrapper.ThreadListWrapper threadListWrapper = this.threadListWrapper;
        return threadListWrapper == null ? new HashMap() : threadListWrapper.playlistInThreadList;
    }
}
