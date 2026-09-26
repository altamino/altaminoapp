package com.narvii.util.http;

import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes9.dex */
public abstract class ApiResponseProgressListener<T extends ApiResponse> extends ApiResponseListener<T> implements PostProgressListener {
    public ApiResponseProgressListener(Class<? extends T> cls) {
        super(cls);
    }
}
