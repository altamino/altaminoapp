package com.narvii.util.http;

import com.narvii.model.api.ApiResponse;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public interface ApiSessionMonitor {
    void onAbortRequest(ApiRequest apiRequest);

    void onNewRequest(ApiRequest apiRequest);

    void onRequestFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th);

    void onRequestFinish(ApiRequest apiRequest, ApiResponse apiResponse);
}
