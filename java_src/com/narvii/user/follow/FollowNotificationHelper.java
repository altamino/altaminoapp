package com.narvii.user.follow;

import android.os.Vibrator;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FollowNotificationHelper.kt */
/* loaded from: classes3.dex */
public final class FollowNotificationHelper {
    private ApiService api;
    private final NVContext ctx;
    private Function1<? super String, Unit> fail;
    private boolean isRequesting;
    private Function0<Unit> loading;
    private final NotificationCenter nc;
    private final PushNotificationHelper pushNotificationHelper;
    private Function1<? super Boolean, Unit> success;

    public FollowNotificationHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        Object service = this.ctx.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"api\")");
        this.api = (ApiService) service;
        Object service2 = this.ctx.getService("notification");
        Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"notification\")");
        this.nc = (NotificationCenter) service2;
        this.pushNotificationHelper = new PushNotificationHelper(this.ctx);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final Function0<Unit> getLoading() {
        return this.loading;
    }

    public final void setLoading(Function0<Unit> function0) {
        this.loading = function0;
    }

    public final Function1<Boolean, Unit> getSuccess() {
        return this.success;
    }

    public final void setSuccess(Function1<? super Boolean, Unit> function1) {
        this.success = function1;
    }

    public final Function1<String, Unit> getFail() {
        return this.fail;
    }

    public final void setFail(Function1<? super String, Unit> function1) {
        this.fail = function1;
    }

    public static /* synthetic */ void subscribe$default(FollowNotificationHelper followNotificationHelper, User user, Boolean bool, int i, Object obj) {
        if ((i & 2) != 0) {
            bool = null;
        }
        followNotificationHelper.subscribe(user, bool);
    }

    public final void subscribe(User user, Boolean bool) {
        subscribe(user, bool, true);
    }

    public static /* synthetic */ void subscribe$default(FollowNotificationHelper followNotificationHelper, User user, Boolean bool, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            bool = null;
        }
        followNotificationHelper.subscribe(user, bool, z);
    }

    public final void subscribe(final User user, Boolean bool, final boolean z) {
        final boolean zBooleanValue;
        ApiRequest apiRequestBuild;
        if (this.isRequesting || user == null) {
            return;
        }
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            zBooleanValue = user.notificationSubscriptionStatus == 0;
        }
        this.isRequesting = true;
        Function0<Unit> function0 = this.loading;
        if (function0 != null) {
            function0.invoke();
        }
        if (zBooleanValue) {
            apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + user.uid + "/subscription").build();
        } else {
            apiRequestBuild = ApiRequest.builder().delete().path("/user-profile/" + user.uid + "/subscription").build();
        }
        this.api.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.follow.FollowNotificationHelper.subscribe.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
                FollowNotificationHelper.this.isRequesting = false;
                Function1<Boolean, Unit> success = FollowNotificationHelper.this.getSuccess();
                if (success != null) {
                    success.invoke(Boolean.valueOf(zBooleanValue));
                }
                User user2 = user;
                user2.notificationSubscriptionStatus = zBooleanValue ? 1 : 0;
                FollowNotificationHelper.this.nc.sendNotification(new Notification("update", user2));
                if (zBooleanValue) {
                    FollowNotificationHelper.this.subscribeVibrate();
                    if (z) {
                        PushNotificationHelper pushNotificationHelper = FollowNotificationHelper.this.pushNotificationHelper;
                        String str = user.nickname;
                        Intrinsics.checkExpressionValueIsNotNull(str, "user.nickname");
                        if (pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_SUBSCRIBE_USER, str)) {
                            return;
                        }
                        NVToast.makeText(FollowNotificationHelper.this.getCtx().getContext(), R.string.enable_notification_success_hint, 0).show();
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                FollowNotificationHelper.this.isRequesting = false;
                NVToast.makeText(FollowNotificationHelper.this.getCtx().getContext(), str, 0).show();
                Function1<String, Unit> fail = FollowNotificationHelper.this.getFail();
                if (fail != null) {
                    fail.invoke(str);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void subscribeVibrate() {
        try {
            Object systemService = this.ctx.getContext().getSystemService("vibrator");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Vibrator");
            }
            ((Vibrator) systemService).vibrate(300L);
        } catch (Exception unused) {
        }
    }
}
