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
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: GlobalAccountHelper.kt */
/* loaded from: classes2.dex */
public final class GlobalAccountHelper {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GlobalAccountHelper.class), "apiService", "getApiService()Lcom/narvii/util/http/ApiService;"))};
    private final Lazy apiService$delegate;
    private final NVContext ctx;

    public final ApiService getApiService() {
        Lazy lazy = this.apiService$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ApiService) lazy.getValue();
    }

    public GlobalAccountHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.apiService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.account.GlobalAccountHelper$apiService$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ApiService invoke() {
                return (ApiService) this.this$0.getCtx().getService("api");
            }
        });
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final void refreshAccountWithAvatarFrame(final boolean z, final Callback<User> callback, boolean z2) {
        ApiRequest.Builder builderPath = ApiRequest.builder().https().global().path("/account");
        if (z2) {
            builderPath.param("withAvatarFrame", 1);
        }
        getApiService().exec(builderPath.build(), new AccountResponseListener(this.ctx) { // from class: com.narvii.account.GlobalAccountHelper.refreshAccountWithAvatarFrame.1
            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                super.onFinish(apiRequest, accountResponse);
                if (accountResponse != null) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(accountResponse.account);
                    }
                    if (z) {
                        ((NotificationCenter) NVApplication.instance().getService("notification")).sendNotification(new Notification("update", accountResponse.account));
                    }
                }
            }
        });
    }
}
