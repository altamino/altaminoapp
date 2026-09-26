package com.safedk.android.internal.partials;

import okhttp3.ResponseBody;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes.dex */
public class OkHttpNetworkBridge {
    public static BufferedSource retrofitExceptionCatchingRequestBody_source(ResponseBody responseBody) {
        return responseBody.source();
    }
}
