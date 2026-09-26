package com.narvii.photos;

import com.narvii.model.Media;

/* JADX INFO: loaded from: classes5.dex */
public interface VideoUploadListener {
    void onFail(String str, int i10, String str2, Throwable th);

    void onFinish(String str, Media media);

    void onProgress(String str, int i10, int i11);
}
