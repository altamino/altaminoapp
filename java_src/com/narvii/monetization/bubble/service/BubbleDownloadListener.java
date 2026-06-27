package com.narvii.monetization.bubble.service;

import com.narvii.model.ChatBubble;
import java.io.File;

/* loaded from: classes3.dex */
public interface BubbleDownloadListener {
    void onDownloadFail(String str);

    void onDownloadProgressUpdate(int i, int i2);

    void onDownloadSuccess(ChatBubble chatBubble, File file);
}
