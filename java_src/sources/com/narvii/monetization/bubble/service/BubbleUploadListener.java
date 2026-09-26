package com.narvii.monetization.bubble.service;

import com.narvii.model.ChatBubble;

/* JADX INFO: loaded from: classes8.dex */
public interface BubbleUploadListener {
    void onUploadFail(String str);

    void onUploadSuccess(ChatBubble chatBubble);

    void onZipFail();
}
