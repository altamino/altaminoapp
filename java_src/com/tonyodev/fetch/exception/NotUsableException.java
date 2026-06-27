package com.tonyodev.fetch.exception;

/* loaded from: classes3.dex */
public final class NotUsableException extends RuntimeException {
    private final int errorCode;

    public NotUsableException(String str, int i) {
        super(str);
        this.errorCode = i;
    }
}
