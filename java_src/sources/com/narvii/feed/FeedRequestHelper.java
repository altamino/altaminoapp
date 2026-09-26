package com.narvii.feed;

import com.narvii.app.NVContext;
import com.narvii.detail.DetailPushUtils;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.util.Callback;
import com.narvii.util.RequestResult;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class FeedRequestHelper {

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

    public final void sendBlogDetailRequest(@Nullable String str, int i10, @Nullable Callback<RequestResult> callback) {
        sendBlogDetailRequest$default(this, str, i10, null, callback, 4, null);
    }

    public FeedRequestHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        Object service = ctx.getService("api");
        t.i(service, "getService(...)");
        this.apiService = (ApiService) service;
    }

    public static /* synthetic */ void sendBlogDetailRequest$default(FeedRequestHelper feedRequestHelper, String str, int i10, String str2, Callback callback, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = -1;
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        feedRequestHelper.sendBlogDetailRequest(str, i10, str2, callback);
    }

    public final void sendBlogDetailRequest(@Nullable String str, @Nullable Callback<RequestResult> callback) {
        sendBlogDetailRequest$default(this, str, 0, null, callback, 6, null);
    }

    public final void sendBlogDetailRequest(@Nullable String str, int i10, @Nullable String str2, @Nullable final Callback<RequestResult> callback) {
        if (str == null) {
            return;
        }
        ApiRequest.Builder builderPath = new ApiRequest.Builder().chatServer().path("/blog/" + str);
        if (i10 != -1) {
            builderPath.communityId(i10);
        }
        builderPath.addHeaderField(DetailPushUtils.PUSH_TRACK_ID, str2);
        this.apiService.exec(builderPath.build(), new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.feed.FeedRequestHelper.sendBlogDetailRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable BlogResponse blogResponse) throws Exception {
                super.onFinish(apiRequest, blogResponse);
                RequestResult requestResult = new RequestResult(0, blogResponse != null ? blogResponse.blog : null);
                Callback<RequestResult> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str3, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i11, list, str3, apiResponse, th);
                RequestResult requestResult = new RequestResult(1, str3);
                Callback<RequestResult> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
            }
        });
    }
}
