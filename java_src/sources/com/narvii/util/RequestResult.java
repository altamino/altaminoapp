package com.narvii.util;

import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes7.dex */
public class RequestResult {
    public static final int RESULT_FAILED = 1;
    public static final int RESULT_SUCCESS = 0;
    public int code;
    public String errorMessage;
    public NVObject object;

    public RequestResult(int i10, NVObject nVObject) {
        this.code = i10;
        this.object = nVObject;
    }

    public RequestResult(int i10, String str) {
        this.code = i10;
        this.errorMessage = str;
    }
}
