package com.narvii.media;

/* loaded from: classes3.dex */
public interface MediaStatusChangeListener {
    String getMediaUrl();

    void onProgressChange(String str, int i, int i2);

    void onStatusChange(MediaStatus mediaStatus);
}
