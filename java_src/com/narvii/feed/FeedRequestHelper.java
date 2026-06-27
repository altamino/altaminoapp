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
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FeedRequestHelper.kt */
/* loaded from: classes2.dex */
public final class FeedRequestHelper {
    private final ApiService apiService;
    private final NVContext ctx;

    public final void sendBlogDetailRequest(String str, int i, Callback<RequestResult> callback) {
        sendBlogDetailRequest$default(this, str, i, null, callback, 4, null);
    }

    public final void sendBlogDetailRequest(String str, Callback<RequestResult> callback) {
        sendBlogDetailRequest$default(this, str, 0, null, callback, 6, null);
    }

    public FeedRequestHelper(NVContext ctx) {
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

    public static /* synthetic */ void sendBlogDetailRequest$default(FeedRequestHelper feedRequestHelper, String str, int i, String str2, Callback callback, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        feedRequestHelper.sendBlogDetailRequest(str, i, str2, callback);
    }

    public final void sendBlogDetailRequest(String str, int i, String str2, final Callback<RequestResult> callback) {
        if (str == null) {
            return;
        }
        ApiRequest.Builder builderPath = new ApiRequest.Builder().chatServer().path("/blog/" + str);
        if (i != -1) {
            builderPath.communityId(i);
        }
        builderPath.addHeaderField(DetailPushUtils.PUSH_TRACK_ID, str2);
        this.apiService.exec(builderPath.build(), new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.feed.FeedRequestHelper.sendBlogDetailRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) blogResponse);
                RequestResult requestResult = new RequestResult(0, blogResponse != null ? blogResponse.blog : null);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str3, apiResponse, th);
                RequestResult requestResult = new RequestResult(1, str3);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
            }
        });
    }
}
