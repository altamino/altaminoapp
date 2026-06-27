package com.narvii.media;

/* loaded from: classes3.dex */
public class MediaStatus {
    public static final int STATUS_DOWNLOADING = 3;
    public static final int STATUS_IDLE = 0;
    public static final int STATUS_PAUSING = 2;
    public static final int STATUS_PLAYING = 1;
    public int position;
    public int status;
    public static final MediaStatus IDLE = new MediaStatus(0, 0);
    public static final MediaStatus DOWNLOADING = new MediaStatus(3, 0);

    public MediaStatus(int i, int i2) {
        this.status = i;
        this.position = i2;
    }
}
