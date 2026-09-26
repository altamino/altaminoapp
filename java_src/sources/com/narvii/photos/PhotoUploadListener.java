package com.narvii.photos;

/* JADX INFO: loaded from: classes11.dex */
public interface PhotoUploadListener {
    void onFail(String str, int i10, String str2, Throwable th);

    void onFinish(String str, String str2);

    void onProgress(String str, int i10, int i11);
}
