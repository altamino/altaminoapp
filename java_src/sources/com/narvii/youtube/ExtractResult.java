package com.narvii.youtube;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes10.dex */
public class ExtractResult {
    public int errorCode;
    public String errorMsg;
    public YoutubeVideoList result;
    public long time = SystemClock.elapsedRealtime();

    void callback(String str, YoutubeVideoCallback youtubeVideoCallback) {
        if (youtubeVideoCallback == null) {
            return;
        }
        YoutubeVideoList youtubeVideoList = this.result;
        if (youtubeVideoList == null) {
            youtubeVideoCallback.onFail(str, this.errorCode, this.errorMsg);
        } else {
            youtubeVideoCallback.onFinish(str, youtubeVideoList);
        }
    }

    public String toString() {
        YoutubeVideoList youtubeVideoList = this.result;
        if (youtubeVideoList != null) {
            return youtubeVideoList.getUrl(0, 0);
        }
        return this.errorCode + ", " + this.errorMsg;
    }

    boolean isValid() {
        long j6;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.time;
        if (this.result == null) {
            j6 = 30000;
        } else {
            j6 = 21600000;
        }
        if (jElapsedRealtime >= 0 && jElapsedRealtime < j6) {
            return true;
        }
        return false;
    }
}
