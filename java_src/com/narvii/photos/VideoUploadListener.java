package com.narvii.photos;

import com.narvii.model.Media;

/* loaded from: classes3.dex */
public interface VideoUploadListener {
    void onFail(String str, int i, String str2, Throwable th);

    void onFinish(String str, Media media);

    void onProgress(String str, int i, int i2);
}
