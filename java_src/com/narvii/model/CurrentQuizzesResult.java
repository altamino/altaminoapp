package com.narvii.model;

/* loaded from: classes3.dex */
public class CurrentQuizzesResult {
    public static final int MODE_HELL = 1;
    public static final int MODE_NORMAL = 0;
    public float beatRate;
    public boolean hellIsFinished;
    public int highestMode;
    public int highestScore;
    public boolean isFinished;
    public float lastBeatRate;
    public int latestMode;
    public int latestScore;
    public int totalTimes;

    public int getCurBeatRate() {
        int iRound = Math.round(this.beatRate * 100.0f);
        if (iRound > 100) {
            iRound = 100;
        }
        if (iRound < 0) {
            return 0;
        }
        return iRound;
    }

    public int getLastBeatRate() {
        int iRound = Math.round(this.lastBeatRate * 100.0f);
        if (iRound > 100) {
            iRound = 100;
        }
        if (iRound < 0) {
            return 0;
        }
        return iRound;
    }
}
