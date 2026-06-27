package com.narvii.master.home.profile;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.detail.DetailPushUtils;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.RequestResult;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalProfileHelper.kt */
/* loaded from: classes3.dex */
public final class GlobalProfileHelper {
    private final NVContext context;
    private String visitorParam;

    public final void sendGlobalProfileRequest(String str, Callback<RequestResult> callback) {
        sendGlobalProfileRequest$default(this, str, callback, false, null, 12, null);
    }

    public final void sendGlobalProfileRequest(String str, Callback<RequestResult> callback, boolean z) {
        sendGlobalProfileRequest$default(this, str, callback, z, null, 8, null);
    }

    public GlobalProfileHelper(NVContext context, String visitorParam) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(visitorParam, "visitorParam");
        this.context = context;
        this.visitorParam = visitorParam;
    }

    public /* synthetic */ GlobalProfileHelper(NVContext nVContext, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, (i & 2) != 0 ? "" : str);
    }

    public final NVContext getContext() {
        return this.context;
    }

    public static /* synthetic */ void sendGlobalProfileRequest$default(GlobalProfileHelper globalProfileHelper, String str, Callback callback, boolean z, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        globalProfileHelper.sendGlobalProfileRequest(str, callback, z, str2);
    }

    public final void sendGlobalProfileRequest(String str, final Callback<RequestResult> callback, final boolean z, String str2) {
        if (str == null || str.length() == 0) {
            Log.e("Global Profile", "Try to send Global profile when uid is null");
            return;
        }
        ApiService apiService = (ApiService) this.context.getService("api");
        final AccountService accountService = (AccountService) this.context.getService("account");
        ApiRequest.Builder builderPath = ApiRequest.builder().global().headers(new String[0]).addHeaderField(DetailPushUtils.PUSH_TRACK_ID, str2).path("user-profile/" + str);
        if (!TextUtils.isEmpty(this.visitorParam)) {
            Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
            if (!Utils.isEqualsNotNull(str, accountService.getUserId())) {
                builderPath.param("action", this.visitorParam);
                this.visitorParam = "";
            }
        }
        apiService.exec(builderPath.build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.master.home.profile.GlobalProfileHelper.sendGlobalProfileRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                User user;
                super.onFinish(apiRequest, (ApiRequest) userResponse);
                if (userResponse != null && (user = userResponse.user) != null) {
                    String str3 = user.uid;
                    AccountService accountService2 = accountService;
                    Intrinsics.checkExpressionValueIsNotNull(accountService2, "accountService");
                    if (Utils.isEqualsNotNull(str3, accountService2.getUserId())) {
                        accountService.updateProfile(user, userResponse.timestamp, 0, true);
                    }
                }
                RequestResult requestResult = new RequestResult(0, userResponse != null ? userResponse.user : null);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str3, apiResponse, th);
                RequestResult requestResult = new RequestResult(1, str3);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
                if (z) {
                    NVToast.makeText(GlobalProfileHelper.this.getContext().getContext(), str3, 1).show();
                }
            }
        });
    }
}
