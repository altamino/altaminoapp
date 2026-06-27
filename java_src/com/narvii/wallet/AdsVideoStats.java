package com.narvii.wallet;

/* loaded from: classes3.dex */
public class AdsVideoStats {
    public int canEarnedCoins;
    public String canNotWatchVideoReason;
    public boolean canWatchVideo;
    public double nextWatchVideoInterval;
    public int watchedVideoCount = -1;
    public int watchVideoMaxCount = -1;

    public long getNextWatchVideoInterval() {
        return (long) (this.nextWatchVideoInterval * 1000.0d);
    }
}
