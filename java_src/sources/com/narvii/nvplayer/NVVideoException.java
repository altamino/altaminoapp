package com.narvii.nvplayer;

/* JADX INFO: loaded from: classes11.dex */
public class NVVideoException extends Exception {
    public static final int YOUTUBE_EXEC_FAIL = 1;
    private int failType;
    private String failUrl;

    public NVVideoException() {
    }

    public int getFailType() {
        return this.failType;
    }

    public String getFailUrl() {
        return this.failUrl;
    }

    public void setFailType(int i10) {
        this.failType = i10;
    }

    public void setFailUrl(String str) {
        this.failUrl = str;
    }

    public NVVideoException(String str) {
        super(str);
    }
}
