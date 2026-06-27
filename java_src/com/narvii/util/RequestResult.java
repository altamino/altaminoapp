package com.narvii.util;

import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class RequestResult {
    public static final int RESULT_FAILED = 1;
    public static final int RESULT_SUCCESS = 0;
    public int code;
    public String errorMessage;
    public NVObject object;

    public RequestResult(int i, NVObject nVObject) {
        this.code = i;
        this.object = nVObject;
    }

    public RequestResult(int i, String str) {
        this.code = i;
        this.errorMessage = str;
    }
}
