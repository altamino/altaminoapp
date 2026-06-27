package com.narvii.asset;

/* loaded from: classes2.dex */
public class DownloadStatusInfo {
    public static final int STATUS_DOWNLOADING = 1;
    public static final int STATUS_FAIL = -1;
    public static final int STATUS_IDLE = 0;
    public static final int STATUS_READY = 2;
    public float progress;
    public int status;
    public static final DownloadStatusInfo READY = new DownloadStatusInfo(2, 1.0f);
    public static final DownloadStatusInfo IDLE = new DownloadStatusInfo(0, 0.0f);
    public static final DownloadStatusInfo FAIL = new DownloadStatusInfo(-1, 0.0f);

    public DownloadStatusInfo(int i, float f) {
        this.status = i;
        this.progress = f;
    }

    public boolean isFinished() {
        int i = this.status;
        return i == 2 || i == -1;
    }

    public boolean isReady() {
        return this.status == 2;
    }

    public boolean isDownloading() {
        return this.status == 1;
    }

    public boolean isFailed() {
        return this.status == -1;
    }

    public boolean isIdle() {
        return this.status == 0;
    }
}
