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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class CommunityRequestHelper {

    @NotNull
    private final ApiService apiService;

    @NotNull
    private final NVContext ctx;

    @NotNull
    public final ApiService getApiService() {
        return this.apiService;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public CommunityRequestHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        Object service = ctx.getService("api");
        t.i(service, "getService(...)");
        this.apiService = (ApiService) service;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkWhetherUserIsJoined$lambda$0(Callback callback, FullCommunityResponse fullCommunityResponse) {
        if (callback != null) {
            callback.call(Boolean.valueOf(fullCommunityResponse != null ? fullCommunityResponse.isCurrentUserJoined : false));
        }
    }

    public final void checkWhetherUserIsJoined(int i10, @Nullable final Callback<Boolean> callback) {
        sendCommunityDetailRequest(i10, new Callback() { // from class: com.narvii.community.request.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                CommunityRequestHelper.checkWhetherUserIsJoined$lambda$0(callback, (FullCommunityResponse) obj);
            }
        });
    }

    public final void sendCommunityDetailRequest(int i10, @NotNull final Callback<FullCommunityResponse> callback) {
        t.j(callback, "callback");
        if (i10 <= 0) {
            callback.call(null);
        } else {
            this.apiService.exec(new ApiRequest.Builder().path("community/info").scopeCommunityId(i10).build(), new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.community.request.CommunityRequestHelper.sendCommunityDetailRequest.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable FullCommunityResponse fullCommunityResponse) throws Exception {
                    super.onFinish(apiRequest, fullCommunityResponse);
                    Callback<FullCommunityResponse> callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(fullCommunityResponse);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i11, list, str, apiResponse, th);
                    Callback<FullCommunityResponse> callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(null);
                    }
                }
            });
        }
    }
}
