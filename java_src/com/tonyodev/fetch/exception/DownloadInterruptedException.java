package com.tonyodev.fetch.exception;

/* loaded from: classes3.dex */
public class DownloadInterruptedException extends RuntimeException {
    private int errorCode;

    public DownloadInterruptedException(String str, int i) {
        super(str);
        this.errorCode = i;
    }
}
