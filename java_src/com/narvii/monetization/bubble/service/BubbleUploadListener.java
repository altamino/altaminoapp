package com.narvii.monetization.bubble.service;

import com.narvii.model.ChatBubble;

/* loaded from: classes3.dex */
public interface BubbleUploadListener {
    void onUploadFail(String str);

    void onUploadSuccess(ChatBubble chatBubble);

    void onZipFail();
}
