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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class GlobalProfileHelper {

    @NotNull
    private final NVContext context;

    @NotNull
    private String visitorParam;

    public GlobalProfileHelper(@NotNull NVContext context, @NotNull String visitorParam) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(visitorParam, "visitorParam");
        this.context = context;
        this.visitorParam = visitorParam;
    }

    @NotNull
    public final NVContext getContext() {
        return this.context;
    }

    public final void sendGlobalProfileRequest(@Nullable String str, @Nullable Callback<RequestResult> callback) {
        sendGlobalProfileRequest$default(this, str, callback, false, null, 12, null);
    }

    public /* synthetic */ GlobalProfileHelper(NVContext nVContext, String str, int i10, kotlin.jvm.internal.k kVar) {
        this(nVContext, (i10 & 2) != 0 ? "" : str);
    }

    public static /* synthetic */ void sendGlobalProfileRequest$default(GlobalProfileHelper globalProfileHelper, String str, Callback callback, boolean z6, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        globalProfileHelper.sendGlobalProfileRequest(str, callback, z6, str2);
    }

    public final void sendGlobalProfileRequest(@Nullable String str, @Nullable Callback<RequestResult> callback, boolean z6) {
        sendGlobalProfileRequest$default(this, str, callback, z6, null, 8, null);
    }

    public final void sendGlobalProfileRequest(@Nullable String str, @Nullable final Callback<RequestResult> callback, final boolean z6, @Nullable String str2) {
        if (str != null && str.length() != 0) {
            ApiService apiService = (ApiService) this.context.getService("api");
            final AccountService accountService = (AccountService) this.context.getService("account");
            ApiRequest.Builder builderPath = ApiRequest.builder().global().headers(new String[0]).addHeaderField(DetailPushUtils.PUSH_TRACK_ID, str2).path("user-profile/" + str);
            if (!TextUtils.isEmpty(this.visitorParam) && !Utils.isEqualsNotNull(str, accountService.getUserId())) {
                builderPath.param("action", this.visitorParam);
                this.visitorParam = "";
            }
            apiService.exec(builderPath.build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.master.home.profile.GlobalProfileHelper.sendGlobalProfileRequest.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable UserResponse userResponse) throws Exception {
                    User user;
                    super.onFinish(apiRequest, userResponse);
                    if (userResponse != null && (user = userResponse.user) != null) {
                        AccountService accountService2 = accountService;
                        if (Utils.isEqualsNotNull(user.uid, accountService2.getUserId())) {
                            accountService2.updateProfile(user, userResponse.timestamp, 0, true);
                        }
                    }
                    User user2 = userResponse != null ? userResponse.user : null;
                    if (user2 != null) {
                        user2.showStoreBadge = userResponse != null ? userResponse.showStoreBadge : null;
                    }
                    RequestResult requestResult = new RequestResult(0, userResponse != null ? userResponse.user : null);
                    Callback<RequestResult> callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(requestResult);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str3, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i10, list, str3, apiResponse, th);
                    RequestResult requestResult = new RequestResult(1, str3);
                    Callback<RequestResult> callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(requestResult);
                    }
                    if (z6) {
                        NVToast.makeText(this.getContext().getContext(), str3, 1).show();
                    }
                }
            });
            return;
        }
        Log.e("Global Profile", "Try to send Global profile when uid is null");
    }
}
