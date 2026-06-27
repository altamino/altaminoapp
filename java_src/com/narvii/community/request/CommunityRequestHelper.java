package com.narvii.community.request;

import com.narvii.app.NVContext;
import com.narvii.community.FullCommunityResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommunityRequestHelper.kt */
/* loaded from: classes2.dex */
public final class CommunityRequestHelper {
    private final ApiService apiService;
    private final NVContext ctx;

    public CommunityRequestHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        Object service = this.ctx.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"api\")");
        this.apiService = (ApiService) service;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final ApiService getApiService() {
        return this.apiService;
    }

    public final void sendCommunityDetailRequest(int i, final Callback<FullCommunityResponse> callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        if (i <= 0) {
            callback.call(null);
        } else {
            this.apiService.exec(new ApiRequest.Builder().path("community/info").scopeCommunityId(i).build(), new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.community.request.CommunityRequestHelper.sendCommunityDetailRequest.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) fullCommunityResponse);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(fullCommunityResponse);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str, apiResponse, th);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(null);
                    }
                }
            });
        }
    }

    public final void checkWhetherUserIsJoined(int i, final Callback<Boolean> callback) {
        sendCommunityDetailRequest(i, new Callback<FullCommunityResponse>() { // from class: com.narvii.community.request.CommunityRequestHelper.checkWhetherUserIsJoined.1
            @Override // com.narvii.util.Callback
            public final void call(FullCommunityResponse fullCommunityResponse) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.valueOf(fullCommunityResponse != null ? fullCommunityResponse.isCurrentUserJoined : false));
                }
            }
        });
    }
}
