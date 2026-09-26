package com.narvii.chat.global;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.PlayList;
import com.narvii.model.api.Pagination;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GlobalThreadListWrapper extends NVObject {
    public GlobalThreadCategory threadCategory;
    public ThreadListWrapper threadListWrapper;

    public static class GlobalThreadCategory {
        public String categoryId;
        public String name;
    }

    public static class ThreadListWrapper {
        public Pagination paging;

        @JsonDeserialize(contentAs = PlayList.class)
        public Map<String, PlayList> playlistInThreadList;

        @JsonDeserialize(contentAs = ChatThread.class)
        public List<ChatThread> threadList;

        @JsonDeserialize(contentAs = OnlineUserInfoInfo.class, keyAs = String.class)
        public Map<String, OnlineUserInfoInfo> userInfoInThread;
    }

    public GlobalThreadListWrapper() {
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    public GlobalThreadListWrapper(ThreadListWrapper threadListWrapper, GlobalThreadCategory globalThreadCategory) {
        this.threadListWrapper = threadListWrapper;
        this.threadCategory = globalThreadCategory;
    }

    public String getCategoryId() {
        GlobalThreadCategory globalThreadCategory = this.threadCategory;
        if (globalThreadCategory == null) {
            return null;
        }
        return globalThreadCategory.categoryId;
    }

    public String getCategoryTitle() {
        GlobalThreadCategory globalThreadCategory = this.threadCategory;
        if (globalThreadCategory == null) {
            return null;
        }
        return globalThreadCategory.name;
    }

    public Pagination getPagingInfo() {
        ThreadListWrapper threadListWrapper = this.threadListWrapper;
        if (threadListWrapper == null) {
            return null;
        }
        return threadListWrapper.paging;
    }

    public Map<String, PlayList> getPlaylistInThread() {
        ThreadListWrapper threadListWrapper = this.threadListWrapper;
        return threadListWrapper == null ? new HashMap() : threadListWrapper.playlistInThreadList;
    }

    public List<ChatThread> getThreadList() {
        ThreadListWrapper threadListWrapper = this.threadListWrapper;
        return threadListWrapper == null ? new ArrayList() : threadListWrapper.threadList;
    }

    public Map<String, OnlineUserInfoInfo> getUserInfoInThread() {
        ThreadListWrapper threadListWrapper = this.threadListWrapper;
        return threadListWrapper == null ? new HashMap() : threadListWrapper.userInfoInThread;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return getCategoryId();
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return getCategoryId();
    }
}
