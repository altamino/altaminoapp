package com.narvii.util.http;

import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class ApiJsonResponseListener<T extends ApiResponse> extends ApiResponseListener<T> {
    JsonNode errorJson;
    JsonNode json;

    public JsonNode errorJson() {
        return this.errorJson;
    }

    public JsonNode json() {
        return this.json;
    }

    @Override // com.narvii.util.http.ApiResponseListener
    public ApiResponse parseErrorResponse(byte[] bArr) throws IOException {
        this.errorJson = JacksonUtils.DEFAULT_MAPPER.readTree(bArr);
        return super.parseErrorResponse(bArr);
    }

    @Override // com.narvii.util.http.ApiResponseListener
    public T parseResponse(ApiRequest apiRequest, int i10, List<NameValuePair> list, byte[] bArr) throws Exception {
        this.json = JacksonUtils.DEFAULT_MAPPER.readTree(bArr);
        return (T) super.parseResponse(apiRequest, i10, list, bArr);
    }

    public ApiJsonResponseListener(Class<? extends T> cls) {
        super(cls);
    }
}
