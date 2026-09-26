package com.narvii.media;

import android.net.Uri;

/* JADX INFO: loaded from: classes9.dex */
public class Video {
    public static final int STATUS_BUFFING = 1;
    public static final int STATUS_COMPLETE = 2;
    public static final int STATUS_ERROR = 3;
    public static final int STATUS_PLAYING = 0;
    public static final int STATUS_UNKNOW = 4;
    int status;
    Uri videoUri;

    public int getStatus() {
        return this.status;
    }

    public Uri getVideoUri() {
        return this.videoUri;
    }

    public void setStatus(int i10) {
        this.status = i10;
    }

    public void setVideoUri(Uri uri) {
        this.videoUri = uri;
    }

    public Video(Uri uri) {
        this.videoUri = uri;
    }
}
