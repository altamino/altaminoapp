package com.narvii.util.http;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ApiResponseListener<T extends ApiResponse> {
    public static final ApiResponseListener<ApiResponse> IGNORE_RESPONSE_LISTENER = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.util.http.ApiResponseListener.1
    };
    public final Class<? extends T> clazz;
    private Object sdata;

    public void onFinish(ApiRequest apiRequest, T t5) throws Exception {
    }

    public ApiResponse parseErrorResponse(byte[] bArr) throws IOException {
        return (ApiResponse) JacksonUtils.DEFAULT_MAPPER.readValue(bArr, ApiResponse.class);
    }

    public T parseResponse(ApiRequest apiRequest, int i10, List<NameValuePair> list, byte[] bArr) throws Exception {
        if (NVApplication.DEBUG) {
            this.sdata = new WeakReference(bArr);
        }
        return (T) JacksonUtils.DEFAULT_MAPPER.readValue(bArr, this.clazz);
    }

    public String stringBody() {
        String str;
        Object obj = this.sdata;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof WeakReference)) {
            return null;
        }
        try {
            str = new String((byte[]) ((WeakReference) obj).get(), "utf-8");
        } catch (Exception unused) {
            str = null;
        }
        if (str == null) {
            return str;
        }
        this.sdata = str;
        return str;
    }

    public ApiResponseListener(Class<? extends T> cls) {
        this.clazz = cls;
    }

    public void onFail(ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
        NVApplication nVApplicationInstance = NVApplication.instance();
        AccountService accountService = (AccountService) nVApplicationInstance.getService("account");
        if (apiResponse != null && apiResponse.statusCode == 218 && accountService.hasAccount()) {
            Bundle bundle = new Bundle();
            bundle.putString("device_id", accountService.getDeviceId());
            FirebaseAnalytics.getInstance(nVApplicationInstance.getContext()).a("device_not_supported", bundle);
        }
    }
}
