package com.narvii.chat.service;

import com.narvii.chat.thread.ThreadListResponse;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface MyChatListObserver {
    void onMyChatListChanged(@NotNull MyChatListService myChatListService, @Nullable ThreadListResponse threadListResponse);
}
