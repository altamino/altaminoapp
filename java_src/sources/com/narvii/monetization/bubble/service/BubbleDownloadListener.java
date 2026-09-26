package com.narvii.monetization.bubble.service;

import com.narvii.model.ChatBubble;
import java.io.File;

/* JADX INFO: loaded from: classes8.dex */
public interface BubbleDownloadListener {
    void onDownloadFail(String str);

    void onDownloadProgressUpdate(int i10, int i11);

    void onDownloadSuccess(ChatBubble chatBubble, File file);
}
