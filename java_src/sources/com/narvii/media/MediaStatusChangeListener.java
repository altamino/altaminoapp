package com.narvii.media;

/* JADX INFO: loaded from: classes9.dex */
public interface MediaStatusChangeListener {
    String getMediaUrl();

    void onProgressChange(String str, int i10, int i11);

    void onStatusChange(MediaStatus mediaStatus);
}
