package com.narvii.youtube;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public class ExtractResult {
    public int errorCode;
    public String errorMsg;
    public YoutubeVideoList result;
    public long time = SystemClock.elapsedRealtime();

    boolean isValid() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.time;
        return jElapsedRealtime >= 0 && jElapsedRealtime < (this.result == null ? 30000L : 21600000L);
    }

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
}
