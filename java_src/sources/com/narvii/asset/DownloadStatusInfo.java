package com.narvii.asset;

/* JADX INFO: loaded from: classes.dex */
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

    public boolean isDownloading() {
        return this.status == 1;
    }

    public boolean isFailed() {
        return this.status == -1;
    }

    public boolean isFinished() {
        int i10 = this.status;
        return i10 == 2 || i10 == -1;
    }

    public boolean isIdle() {
        return this.status == 0;
    }

    public boolean isReady() {
        return this.status == 2;
    }

    public DownloadStatusInfo(int i10, float f) {
        this.status = i10;
        this.progress = f;
    }
}
