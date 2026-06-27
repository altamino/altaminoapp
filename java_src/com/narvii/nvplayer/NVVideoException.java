package com.narvii.nvplayer;

/* loaded from: classes3.dex */
public class NVVideoException extends Exception {
    public static final int YOUTUBE_EXEC_FAIL = 1;
    private int failType;
    private String failUrl;

    public NVVideoException() {
    }

    public NVVideoException(String str) {
        super(str);
    }

    public int getFailType() {
        return this.failType;
    }

    public void setFailType(int i) {
        this.failType = i;
    }

    public String getFailUrl() {
        return this.failUrl;
    }

    public void setFailUrl(String str) {
        this.failUrl = str;
    }
}
