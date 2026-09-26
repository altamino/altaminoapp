package com.bytedance.tea.common.utility;

/* JADX INFO: loaded from: classes7.dex */
public class HttpResponseException extends Exception {
    public String message;
    public int statusCode;

    public String getMsg() {
        return this.message;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public HttpResponseException(int i10, String str) {
        this.statusCode = i10;
        this.message = str;
    }
}
