package com.narvii.user.follow;

import android.os.Vibrator;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
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
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class FollowNotificationHelper {

    @NotNull
    private ApiService api;

    @NotNull
    private final NVContext ctx;

    @Nullable
    private l<? super String, l0> fail;
    private boolean isRequesting;

    @Nullable
    private e8.a<l0> loading;

    @NotNull
    private final NotificationCenter nc;

    @NotNull
    private final PushNotificationHelper pushNotificationHelper;

    @Nullable
    private l<? super Boolean, l0> success;

    public static /* synthetic */ void subscribe$default(FollowNotificationHelper followNotificationHelper, User user, Boolean bool, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bool = null;
        }
        followNotificationHelper.subscribe(user, bool);
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final l<String, l0> getFail() {
        return this.fail;
    }

    @Nullable
    public final e8.a<l0> getLoading() {
        return this.loading;
    }

    @Nullable
    public final l<Boolean, l0> getSuccess() {
        return this.success;
    }

    public final void setFail(@Nullable l<? super String, l0> lVar) {
        this.fail = lVar;
    }

    public final void setLoading(@Nullable e8.a<l0> aVar) {
        this.loading = aVar;
    }

    public final void setSuccess(@Nullable l<? super Boolean, l0> lVar) {
        this.success = lVar;
    }

    public final void subscribe(@Nullable User user, @Nullable Boolean bool) {
        subscribe(user, bool, true);
    }

    public FollowNotificationHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        Object service = ctx.getService("api");
        t.i(service, "getService(...)");
        this.api = (ApiService) service;
        Object service2 = ctx.getService("notification");
        t.i(service2, "getService(...)");
        this.nc = (NotificationCenter) service2;
        this.pushNotificationHelper = new PushNotificationHelper(ctx);
    }

    public static /* synthetic */ void subscribe$default(FollowNotificationHelper followNotificationHelper, User user, Boolean bool, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bool = null;
        }
        followNotificationHelper.subscribe(user, bool, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void subscribeVibrate() {
        try {
            Object systemService = this.ctx.getContext().getSystemService("vibrator");
            t.h(systemService, "null cannot be cast to non-null type android.os.Vibrator");
            ((Vibrator) systemService).vibrate(300L);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001f  */
    /* JADX WARN: Code duplicated, block: B:19:0x0028  */
    /* JADX WARN: Code duplicated, block: B:20:0x004d  */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0028, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x004d, please report this as an issue */
    public final void subscribe(@Nullable final User user, @Nullable Boolean bool, final boolean z6) {
        boolean zBooleanValue;
        final boolean z10;
        e8.a<l0> aVar;
        ApiRequest apiRequestBuild;
        if (this.isRequesting || user == null) {
            return;
        }
        if (bool == null) {
            if (user.notificationSubscriptionStatus == 0) {
                z10 = true;
            } else {
                zBooleanValue = false;
            }
            this.isRequesting = true;
            aVar = this.loading;
            if (aVar != null) {
                aVar.invoke();
            }
            if (z10) {
                apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + user.uid + "/subscription").build();
            } else {
                apiRequestBuild = ApiRequest.builder().delete().path("/user-profile/" + user.uid + "/subscription").build();
            }
            this.api.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.follow.FollowNotificationHelper.subscribe.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) {
                    FollowNotificationHelper.this.isRequesting = false;
                    user.notificationSubscriptionStatus = z10 ? 1 : 0;
                    FollowNotificationHelper.this.nc.sendNotification(new Notification("update", user));
                    l<Boolean, l0> success = FollowNotificationHelper.this.getSuccess();
                    if (success != null) {
                        success.invoke(Boolean.valueOf(z10));
                    }
                    if (z10) {
                        FollowNotificationHelper.this.subscribeVibrate();
                        if (z6) {
                            PushNotificationHelper pushNotificationHelper = FollowNotificationHelper.this.pushNotificationHelper;
                            String nickname = user.nickname;
                            t.i(nickname, "nickname");
                            if (pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_SUBSCRIBE_USER, nickname)) {
                                return;
                            }
                            NVToast.makeText(FollowNotificationHelper.this.getCtx().getContext(), R.string.enable_notification_success_hint, 0).show();
                        }
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    FollowNotificationHelper.this.isRequesting = false;
                    NVToast.makeText(FollowNotificationHelper.this.getCtx().getContext(), str, 0).show();
                    l<String, l0> fail = FollowNotificationHelper.this.getFail();
                    if (fail != null) {
                        fail.invoke(str);
                    }
                }
            });
        }
        zBooleanValue = bool.booleanValue();
        z10 = zBooleanValue;
        this.isRequesting = true;
        aVar = this.loading;
        if (aVar != null) {
            aVar.invoke();
        }
        if (z10) {
            apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + user.uid + "/subscription").build();
        } else {
            apiRequestBuild = ApiRequest.builder().delete().path("/user-profile/" + user.uid + "/subscription").build();
        }
        this.api.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.follow.FollowNotificationHelper.subscribe.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) {
                FollowNotificationHelper.this.isRequesting = false;
                user.notificationSubscriptionStatus = z10 ? 1 : 0;
                FollowNotificationHelper.this.nc.sendNotification(new Notification("update", user));
                l<Boolean, l0> success = FollowNotificationHelper.this.getSuccess();
                if (success != null) {
                    success.invoke(Boolean.valueOf(z10));
                }
                if (z10) {
                    FollowNotificationHelper.this.subscribeVibrate();
                    if (z6) {
                        PushNotificationHelper pushNotificationHelper = FollowNotificationHelper.this.pushNotificationHelper;
                        String nickname = user.nickname;
                        t.i(nickname, "nickname");
                        if (pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_SUBSCRIBE_USER, nickname)) {
                            return;
                        }
                        NVToast.makeText(FollowNotificationHelper.this.getCtx().getContext(), R.string.enable_notification_success_hint, 0).show();
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                FollowNotificationHelper.this.isRequesting = false;
                NVToast.makeText(FollowNotificationHelper.this.getCtx().getContext(), str, 0).show();
                l<String, l0> fail = FollowNotificationHelper.this.getFail();
                if (fail != null) {
                    fail.invoke(str);
                }
            }
        });
    }
}
