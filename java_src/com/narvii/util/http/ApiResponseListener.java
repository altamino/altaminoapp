package com.narvii.util.http;

import com.narvii.app.NVApplication;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes.dex */
public class ApiResponseListener<T extends ApiResponse> {
    public static final ApiResponseListener<ApiResponse> IGNORE_RESPONSE_LISTENER = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.util.http.ApiResponseListener.1
    };
    public final Class<? extends T> clazz;
    private Object sdata;

    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
    }

    public void onFinish(ApiRequest apiRequest, T t) throws Exception {
    }

    public ApiResponseListener(Class<? extends T> cls) {
        this.clazz = cls;
    }

    public T parseResponse(ApiRequest apiRequest, int i, List<NameValuePair> list, byte[] bArr) throws Exception {
        if (NVApplication.DEBUG) {
            this.sdata = new WeakReference(bArr);
        }
        return (T) JacksonUtils.DEFAULT_MAPPER.readValue(bArr, this.clazz);
    }

    public ApiResponse parseErrorResponse(byte[] bArr) throws IOException {
        return (ApiResponse) JacksonUtils.DEFAULT_MAPPER.readValue(bArr, ApiResponse.class);
    }

    public String stringBody() {
        Object obj = this.sdata;
        String str = null;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof WeakReference)) {
            return null;
        }
        try {
            str = new String((byte[]) ((WeakReference) obj).get(), "utf-8");
        } catch (Exception unused) {
        }
        if (str == null) {
            return str;
        }
        this.sdata = str;
        return str;
    }
}
