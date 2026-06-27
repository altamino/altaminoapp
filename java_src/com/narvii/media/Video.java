package com.narvii.media;

import android.net.Uri;

/* loaded from: classes3.dex */
public class Video {
    public static final int STATUS_BUFFING = 1;
    public static final int STATUS_COMPLETE = 2;
    public static final int STATUS_ERROR = 3;
    public static final int STATUS_PLAYING = 0;
    public static final int STATUS_UNKNOW = 4;
    int status;
    Uri videoUri;

    public Video(Uri uri) {
        this.videoUri = uri;
    }

    public Uri getVideoUri() {
        return this.videoUri;
    }

    public void setVideoUri(Uri uri) {
        this.videoUri = uri;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
