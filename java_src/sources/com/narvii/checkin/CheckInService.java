package com.narvii.checkin;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.os.SystemClock;
import android.os.Vibrator;
import com.narvii.account.AccountService;
import com.narvii.achievements.StreakRepairDialog;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.checkin.lottery.LotteryDialog;
import com.narvii.config.ConfigService;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.services.TopActivityService;
import com.narvii.wallet.AdsService;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes.dex */
public final class CheckInService {

    @NotNull
    private final m account$delegate;

    @Nullable
    private Activity activity;

    @NotNull
    private final m ads$delegate;

    @NotNull
    private final m api$delegate;
    private boolean checkInPopUpDone;

    @NotNull
    private final m communityConfigHelper$delegate;

    @NotNull
    private final m config$delegate;

    @NotNull
    private final NVContext ctx;
    private boolean dontUpdateRanking;

    @NotNull
    private final m eventDispatchers$delegate;
    private boolean isCheckingIn;

    @Nullable
    private CheckInResponseListener listener;

    @Nullable
    private LotteryDialog lotteryDialog;
    private boolean streakRepairDialogShowing;
    private boolean willPlayLottery;

    public interface CheckInResponseListener {
        void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th);

        void onFinish(@Nullable ApiRequest apiRequest, @Nullable CheckInResult checkInResult);
    }

    /* JADX INFO: renamed from: com.narvii.checkin.CheckInService$startCheckIn$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<CheckInResult> {
        final /* synthetic */ long $startTime;
        final /* synthetic */ CheckInService this$0;

        @Override // com.narvii.util.http.ApiResponseListener
        public /* bridge */ /* synthetic */ ApiResponse parseResponse(ApiRequest apiRequest, int i10, List list, byte[] bArr) {
            return parseResponse(apiRequest, i10, (List<NameValuePair>) list, bArr);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j6, CheckInService checkInService, Class<CheckInResult> cls) {
            super(cls);
            this.$startTime = j6;
            this.this$0 = checkInService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$2(final CheckInService this$0, CheckInResult checkInResult) {
            t.j(this$0, "this$0");
            if (this$0.getActivity() != null) {
                this$0.setDontUpdateRanking(true);
                new CheckInPopUpHelper(this$0.getActivity()).showCheckInPopUp(checkInResult, null);
                Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        CheckInService.AnonymousClass1.onFinish$lambda$2$lambda$1(this$0);
                    }
                }, 1500L);
            } else {
                this$0.setDontUpdateRanking(false);
                if (this$0.getWillPlayLottery()) {
                    this$0.showLotteryPrompt();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$2$lambda$1(CheckInService this$0) {
            t.j(this$0, "this$0");
            if (this$0.getWillPlayLottery()) {
                this$0.showLotteryPrompt();
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@Nullable final ApiRequest apiRequest, @Nullable final CheckInResult checkInResult) {
            if (checkInResult == null) {
                return;
            }
            CheckInService checkInService = this.this$0;
            checkInService.setWillPlayLottery(checkInResult.canPlayLottery && checkInService.getCommunityConfigHelper().isPremiumFeatureEnabled());
            this.this$0.setCheckInPopUpDone(false);
            this.this$0.setDontUpdateRanking(true);
            this.this$0.getAccount().updateCheckInInfo(true, checkInResult.consecutiveCheckInDays, checkInResult.timestamp, true);
            this.this$0.getAccount().updateCheckInHistoryInfo(checkInResult.checkInHistory, checkInResult.timestamp, true);
            if (checkInResult.userProfile != null) {
                User userProfile = this.this$0.getAccount().getUserProfile();
                User user = checkInResult.userProfile;
                userProfile.level = user.level;
                userProfile.reputation = user.reputation;
                this.this$0.getAccount().updateProfile(userProfile, checkInResult.timestamp, true);
            }
            this.this$0.getEventDispatchers().dispatch(new Callback() { // from class: com.narvii.checkin.g
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((CheckInService.CheckInResponseListener) obj).onFinish(apiRequest, checkInResult);
                }
            });
            this.this$0.getEventDispatchers().clear();
            this.this$0.setCheckingIn(false);
            final CheckInService checkInService2 = this.this$0;
            Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.h
                @Override // java.lang.Runnable
                public final void run() {
                    CheckInService.AnonymousClass1.onFinish$lambda$2(checkInService2, checkInResult);
                }
            }, 2000L);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        @NotNull
        public CheckInResult parseResponse(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable byte[] bArr) {
            CheckInResult checkInResult = (CheckInResult) super.parseResponse(apiRequest, i10, list, bArr);
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.$startTime;
            if (0 <= jElapsedRealtime && jElapsedRealtime < 2000) {
                try {
                    Thread.sleep(((long) 2000) - jElapsedRealtime);
                } catch (InterruptedException unused) {
                }
            }
            t.g(checkInResult);
            return checkInResult;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@Nullable final ApiRequest apiRequest, final int i10, @Nullable final List<NameValuePair> list, @Nullable final String str, @Nullable final ApiResponse apiResponse, @Nullable final Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            Utils.showShortToast(this.this$0.getCtx().getContext(), str);
            this.this$0.getEventDispatchers().dispatch(new Callback() { // from class: com.narvii.checkin.i
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((CheckInService.CheckInResponseListener) obj).onFail(apiRequest, i10, list, str, apiResponse, th);
                }
            });
            this.this$0.getEventDispatchers().clear();
            this.this$0.setCheckingIn(false);
        }
    }

    public final void bind(@Nullable Activity activity) {
        this.activity = activity;
    }

    @Nullable
    public final Activity getActivity() {
        return this.activity;
    }

    public final boolean getCheckInPopUpDone() {
        return this.checkInPopUpDone;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public final boolean getDontUpdateRanking() {
        return this.dontUpdateRanking;
    }

    @Nullable
    public final CheckInResponseListener getListener() {
        return this.listener;
    }

    @Nullable
    public final LotteryDialog getLotteryDialog() {
        return this.lotteryDialog;
    }

    public final boolean getStreakRepairDialogShowing() {
        return this.streakRepairDialogShowing;
    }

    public final boolean getWillPlayLottery() {
        return this.willPlayLottery;
    }

    public final boolean isCheckingIn() {
        return this.isCheckingIn;
    }

    public final void setActivity(@Nullable Activity activity) {
        this.activity = activity;
    }

    public final void setCheckInPopUpDone(boolean z6) {
        this.checkInPopUpDone = z6;
    }

    public final void setCheckingIn(boolean z6) {
        this.isCheckingIn = z6;
    }

    public final void setDontUpdateRanking(boolean z6) {
        this.dontUpdateRanking = z6;
    }

    public final void setListener(@Nullable CheckInResponseListener checkInResponseListener) {
        this.listener = checkInResponseListener;
    }

    public final void setLotteryDialog(@Nullable LotteryDialog lotteryDialog) {
        this.lotteryDialog = lotteryDialog;
    }

    public final void setStreakRepairDialogShowing(boolean z6) {
        this.streakRepairDialogShowing = z6;
    }

    public final void setWillPlayLottery(boolean z6) {
        this.willPlayLottery = z6;
    }

    public final void unbind() {
        this.activity = null;
    }

    public CheckInService(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.api$delegate = o.a(new CheckInService$api$2(this));
        this.ads$delegate = o.a(new CheckInService$ads$2(this));
        this.account$delegate = o.a(new CheckInService$account$2(this));
        this.config$delegate = o.a(new CheckInService$config$2(this));
        this.communityConfigHelper$delegate = o.a(new CheckInService$communityConfigHelper$2(this));
        this.eventDispatchers$delegate = o.a(CheckInService$eventDispatchers$2.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showStreakRepairDialog$lambda$3(final CheckInService this$0, StreakRepairDialog streakRepairDialog) {
        t.j(this$0, "this$0");
        if (streakRepairDialog != null) {
            streakRepairDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.checkin.c
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    CheckInService.showStreakRepairDialog$lambda$3$lambda$1(this.f2200a, dialogInterface);
                }
            });
        } else {
            this$0.streakRepairDialogShowing = false;
            Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.d
                @Override // java.lang.Runnable
                public final void run() {
                    CheckInService.showStreakRepairDialog$lambda$3$lambda$2(this.f2201a);
                }
            }, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showStreakRepairDialog$lambda$3$lambda$1(final CheckInService this$0, DialogInterface dialogInterface) {
        t.j(this$0, "this$0");
        this$0.streakRepairDialogShowing = false;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.e
            @Override // java.lang.Runnable
            public final void run() {
                CheckInService.showStreakRepairDialog$lambda$3$lambda$1$lambda$0(this.f2202a);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showStreakRepairDialog$lambda$3$lambda$1$lambda$0(CheckInService this$0) {
        t.j(this$0, "this$0");
        if (this$0.willPlayLottery) {
            this$0.showLotteryPrompt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showStreakRepairDialog$lambda$3$lambda$2(CheckInService this$0) {
        t.j(this$0, "this$0");
        if (this$0.willPlayLottery) {
            this$0.showLotteryPrompt();
        }
    }

    public final AccountService getAccount() {
        return (AccountService) this.account$delegate.getValue();
    }

    public final AdsService getAds() {
        return (AdsService) this.ads$delegate.getValue();
    }

    public final ApiService getApi() {
        return (ApiService) this.api$delegate.getValue();
    }

    @NotNull
    public final CommunityConfigHelper getCommunityConfigHelper() {
        return (CommunityConfigHelper) this.communityConfigHelper$delegate.getValue();
    }

    public final ConfigService getConfig() {
        return (ConfigService) this.config$delegate.getValue();
    }

    @NotNull
    public final EventDispatcher<CheckInResponseListener> getEventDispatchers() {
        return (EventDispatcher) this.eventDispatchers$delegate.getValue();
    }

    public final void showLotteryPrompt() {
        TopActivityService topActivityService;
        if (this.streakRepairDialogShowing) {
            return;
        }
        this.willPlayLottery = false;
        int communityId = getConfig().getCommunityId();
        Activity activity = this.activity;
        if (activity == null && (topActivityService = (TopActivityService) this.ctx.getService("topActivity")) != null) {
            Activity topActivity = topActivityService.getTopActivity();
            if ((topActivity instanceof NVActivity) && ((ConfigService) ((NVActivity) topActivity).getService("config")).getCommunityId() == communityId) {
                activity = topActivity;
            }
        }
        if (!(activity instanceof NVActivity) || ((NVActivity) activity).isDestoryed()) {
            return;
        }
        try {
            LotteryDialog lotteryDialog = new LotteryDialog((NVActivity) activity, communityId);
            this.lotteryDialog = lotteryDialog;
            t.g(lotteryDialog);
            lotteryDialog.show();
        } catch (Exception e) {
            Log.e("lucky draw", e);
        }
    }

    public final void showStreakRepairDialog() {
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        if (componentCallbacks2 instanceof NVContext) {
            this.streakRepairDialogShowing = true;
            t.h(componentCallbacks2, "null cannot be cast to non-null type com.narvii.app.NVContext");
            CheckInHelper checkInHelper = new CheckInHelper((NVContext) componentCallbacks2);
            checkInHelper.source = "Left Side Panel";
            checkInHelper.startStreakRepairDialog(new Callback() { // from class: com.narvii.checkin.b
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    CheckInService.showStreakRepairDialog$lambda$3(this.f2199a, (StreakRepairDialog) obj);
                }
            });
        }
    }

    public final void startCheckIn(@NotNull CheckInResponseListener listener) {
        t.j(listener, "listener");
        getEventDispatchers().addListener(listener);
        if (this.isCheckingIn) {
            return;
        }
        this.isCheckingIn = true;
        getApi().exec(ApiRequest.builder().post().path("check-in").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).tag(ApiService.ASYNC_CALL_TAG).build(), new AnonymousClass1(SystemClock.elapsedRealtime(), this, CheckInResult.class));
        try {
            Object systemService = this.ctx.getContext().getSystemService("vibrator");
            t.h(systemService, "null cannot be cast to non-null type android.os.Vibrator");
            ((Vibrator) systemService).vibrate(80L);
        } catch (Exception unused) {
        }
    }
}
