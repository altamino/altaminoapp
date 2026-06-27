package com.narvii.photos;

/* loaded from: classes3.dex */
public interface PhotoUploadListener {
    void onFail(String str, int i, String str2, Throwable th);

    void onFinish(String str, String str2);

    void onProgress(String str, int i, int i2);
}
