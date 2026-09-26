package com.bytedance.tea.common.utility;

/* JADX INFO: loaded from: classes5.dex */
public class CommonHttpException extends Exception {
    private int mResponseCode;

    public int getResponseCode() {
        return this.mResponseCode;
    }

    public CommonHttpException(int i10, String str) {
        super(str);
        this.mResponseCode = i10;
    }
}
