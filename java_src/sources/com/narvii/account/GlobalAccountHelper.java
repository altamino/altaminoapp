package com.narvii.account;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.model.api.AccountResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.o;

/* JADX INFO: loaded from: classes2.dex */
public final class GlobalAccountHelper {

    @NotNull
    private final w7.m apiService$delegate;

    @NotNull
    private final NVContext ctx;

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public GlobalAccountHelper(@NotNull NVContext ctx) {
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.ctx = ctx;
        this.apiService$delegate = o.a(new GlobalAccountHelper$apiService$2(this));
    }

    @NotNull
    public final ApiService getApiService() {
        Object value = this.apiService$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (ApiService) value;
    }

    public final void refreshAccountWithAvatarFrame(final boolean z6, @Nullable final Callback<User> callback, boolean z10) {
        ApiRequest.Builder builderPath = ApiRequest.builder().https().global().path("/account");
        if (z10) {
            builderPath.param("withAvatarFrame", 1);
        }
        getApiService().exec(builderPath.build(), new AccountResponseListener(this.ctx) { // from class: com.narvii.account.GlobalAccountHelper.refreshAccountWithAvatarFrame.1
            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable AccountResponse accountResponse) throws Exception {
                super.onFinish(apiRequest, accountResponse);
                if (accountResponse != null) {
                    Callback<User> callback2 = callback;
                    boolean z11 = z6;
                    if (callback2 != null) {
                        callback2.call(accountResponse.account);
                    }
                    if (z11) {
                        ((NotificationCenter) NVApplication.instance().getService("notification")).sendNotification(new Notification("update", accountResponse.account));
                    }
                }
            }
        });
    }
}
