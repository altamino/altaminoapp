package com.narvii.checkin;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.os.SystemClock;
import android.os.Vibrator;
import com.narvii.account.AccountService;
import com.narvii.achievements.StreakRepairDialog;
import com.narvii.app.NVContext;
import com.narvii.checkin.CheckInService;
import com.narvii.checkin.lottery.LotteryDialog;
import com.narvii.config.ConfigService;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: CheckInService.kt */
/* loaded from: classes.dex */
public final class CheckInService {
    static final /* synthetic */ KProperty[] $$delegatedProperties;
    private final Lazy account$delegate;
    private Activity activity;
    private final Lazy api$delegate;
    private boolean checkInPopUpDone;
    private final Lazy communityConfigHelper$delegate;
    private final Lazy config$delegate;
    private final NVContext ctx;
    private boolean dontUpdateRanking;
    private final Lazy eventDispatchers$delegate;
    private boolean isCheckingIn;
    private CheckInResponseListener listener;
    private LotteryDialog lotteryDialog;
    private boolean streakRepairDialogShowing;
    private boolean willPlayLottery;

    /* compiled from: CheckInService.kt */
    /* loaded from: classes2.dex */
    public interface CheckInResponseListener {
        void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th);

        void onFinish(ApiRequest apiRequest, CheckInResult checkInResult);
    }

    static {
        KProperty[] kPropertyArr = new KProperty[6];
        kPropertyArr[0] = Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInService.class), "api", "getApi()Lcom/narvii/util/http/ApiService;"));
        kPropertyArr[2] = Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInService.class), "account", "getAccount()Lcom/narvii/account/AccountService;"));
        kPropertyArr[3] = Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInService.class), "config", "getConfig()Lcom/narvii/config/ConfigService;"));
        kPropertyArr[4] = Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInService.class), "communityConfigHelper", "getCommunityConfigHelper()Lcom/narvii/modulization/CommunityConfigHelper;"));
        kPropertyArr[5] = Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInService.class), "eventDispatchers", "getEventDispatchers()Lcom/narvii/util/EventDispatcher;"));
        $$delegatedProperties = kPropertyArr;
    }

    public final AccountService getAccount() {
        Lazy lazy = this.account$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (AccountService) lazy.getValue();
    }

    public final ApiService getApi() {
        Lazy lazy = this.api$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ApiService) lazy.getValue();
    }

    public final CommunityConfigHelper getCommunityConfigHelper() {
        Lazy lazy = this.communityConfigHelper$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (CommunityConfigHelper) lazy.getValue();
    }

    public final ConfigService getConfig() {
        Lazy lazy = this.config$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (ConfigService) lazy.getValue();
    }

    public final EventDispatcher<CheckInResponseListener> getEventDispatchers() {
        Lazy lazy = this.eventDispatchers$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (EventDispatcher) lazy.getValue();
    }

    public CheckInService(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.api$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.checkin.CheckInService$api$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ApiService invoke() {
                return (ApiService) this.this$0.getCtx().getService("api");
            }
        });
        this.account$delegate = LazyKt__LazyJVMKt.lazy(new Function0<AccountService>() { // from class: com.narvii.checkin.CheckInService$account$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AccountService invoke() {
                return (AccountService) this.this$0.getCtx().getService("account");
            }
        });
        this.config$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ConfigService>() { // from class: com.narvii.checkin.CheckInService$config$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ConfigService invoke() {
                return (ConfigService) this.this$0.getCtx().getService("config");
            }
        });
        this.communityConfigHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<CommunityConfigHelper>() { // from class: com.narvii.checkin.CheckInService$communityConfigHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CommunityConfigHelper invoke() {
                return new CommunityConfigHelper(this.this$0.getCtx());
            }
        });
        this.eventDispatchers$delegate = LazyKt__LazyJVMKt.lazy(new Function0<EventDispatcher<CheckInResponseListener>>() { // from class: com.narvii.checkin.CheckInService$eventDispatchers$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final EventDispatcher<CheckInService.CheckInResponseListener> invoke() {
                return new EventDispatcher<>();
            }
        });
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final boolean getWillPlayLottery() {
        return this.willPlayLottery;
    }

    public final void setWillPlayLottery(boolean z) {
        this.willPlayLottery = z;
    }

    public final boolean getCheckInPopUpDone() {
        return this.checkInPopUpDone;
    }

    public final void setCheckInPopUpDone(boolean z) {
        this.checkInPopUpDone = z;
    }

    public final boolean getDontUpdateRanking() {
        return this.dontUpdateRanking;
    }

    public final void setDontUpdateRanking(boolean z) {
        this.dontUpdateRanking = z;
    }

    public final boolean getStreakRepairDialogShowing() {
        return this.streakRepairDialogShowing;
    }

    public final void setStreakRepairDialogShowing(boolean z) {
        this.streakRepairDialogShowing = z;
    }

    public final boolean isCheckingIn() {
        return this.isCheckingIn;
    }

    public final void setCheckingIn(boolean z) {
        this.isCheckingIn = z;
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final void setActivity(Activity activity) {
        this.activity = activity;
    }

    public final LotteryDialog getLotteryDialog() {
        return this.lotteryDialog;
    }

    public final void setLotteryDialog(LotteryDialog lotteryDialog) {
        this.lotteryDialog = lotteryDialog;
    }

    public final CheckInResponseListener getListener() {
        return this.listener;
    }

    public final void setListener(CheckInResponseListener checkInResponseListener) {
        this.listener = checkInResponseListener;
    }

    public final void bind(Activity activity) {
        this.activity = activity;
    }

    public final void unbind() {
        this.activity = null;
    }

    public final void startCheckIn(CheckInResponseListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        getEventDispatchers().addListener(listener);
        if (this.isCheckingIn) {
            return;
        }
        this.isCheckingIn = true;
        getApi().exec(ApiRequest.builder().post().path("check-in").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).tag(ApiService.ASYNC_CALL_TAG).build(), new C09971(SystemClock.elapsedRealtime(), CheckInResult.class));
        try {
            Object systemService = this.ctx.getContext().getSystemService("vibrator");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Vibrator");
            }
            ((Vibrator) systemService).vibrate(80L);
        } catch (Exception unused) {
        }
    }

    /* compiled from: CheckInService.kt */
    /* renamed from: com.narvii.checkin.CheckInService$startCheckIn$1, reason: invalid class name and case insensitive filesystem */
    /* loaded from: classes2.dex */
    public static final class C09971 extends ApiResponseListener<CheckInResult> {
        final /* synthetic */ long $startTime;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09971(long j, Class cls) {
            super(cls);
            this.$startTime = j;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public /* bridge */ /* synthetic */ ApiResponse parseResponse(ApiRequest apiRequest, int i, List list, byte[] bArr) {
            return parseResponse(apiRequest, i, (List<NameValuePair>) list, bArr);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public CheckInResult parseResponse(ApiRequest apiRequest, int i, List<NameValuePair> list, byte[] bArr) throws InterruptedException {
            CheckInResult r = (CheckInResult) super.parseResponse(apiRequest, i, list, bArr);
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.$startTime;
            long j = 1999;
            if (0 <= jElapsedRealtime && j >= jElapsedRealtime) {
                try {
                    Thread.sleep(2000 - jElapsedRealtime);
                } catch (InterruptedException unused) {
                }
            }
            Intrinsics.checkExpressionValueIsNotNull(r, "r");
            return r;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(final ApiRequest apiRequest, final CheckInResult checkInResult) {
            if (checkInResult == null) {
                return;
            }
            CheckInService checkInService = CheckInService.this;
            checkInService.setWillPlayLottery(checkInResult.canPlayLottery && checkInService.getCommunityConfigHelper().isPremiumFeatureEnabled());
            CheckInService.this.setCheckInPopUpDone(false);
            CheckInService.this.setDontUpdateRanking(true);
            CheckInService.this.getAccount().updateCheckInInfo(true, checkInResult.consecutiveCheckInDays, checkInResult.timestamp, true);
            CheckInService.this.getAccount().updateCheckInHistoryInfo(checkInResult.checkInHistory, checkInResult.timestamp, true);
            if (checkInResult.userProfile != null) {
                AccountService account = CheckInService.this.getAccount();
                Intrinsics.checkExpressionValueIsNotNull(account, "account");
                User userProfile = account.getUserProfile();
                User user = checkInResult.userProfile;
                userProfile.level = user.level;
                userProfile.reputation = user.reputation;
                CheckInService.this.getAccount().updateProfile(userProfile, checkInResult.timestamp, true);
            }
            CheckInService.this.getEventDispatchers().dispatch(new Callback<CheckInResponseListener>() { // from class: com.narvii.checkin.CheckInService$startCheckIn$1$onFinish$1
                @Override // com.narvii.util.Callback
                public final void call(CheckInService.CheckInResponseListener checkInResponseListener) {
                    checkInResponseListener.onFinish(apiRequest, checkInResult);
                }
            });
            CheckInService.this.getEventDispatchers().clear();
            CheckInService.this.setCheckingIn(false);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.CheckInService$startCheckIn$1$onFinish$2
                @Override // java.lang.Runnable
                public final void run() {
                    if (CheckInService.this.getActivity() == null) {
                        CheckInService.this.setDontUpdateRanking(false);
                        if (CheckInService.this.getWillPlayLottery()) {
                            CheckInService.this.showLotteryPrompt();
                            return;
                        }
                        return;
                    }
                    CheckInService.this.setDontUpdateRanking(true);
                    new CheckInPopUpHelper(CheckInService.this.getActivity()).showCheckInPopUp(checkInResult, null);
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.CheckInService$startCheckIn$1$onFinish$2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (CheckInService.this.getWillPlayLottery()) {
                                CheckInService.this.showLotteryPrompt();
                            }
                        }
                    }, 1500L);
                }
            }, 2000L);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(final ApiRequest apiRequest, final int i, final List<NameValuePair> list, final String str, final ApiResponse apiResponse, final Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            Utils.showShortToast(CheckInService.this.getCtx().getContext(), str);
            CheckInService.this.getEventDispatchers().dispatch(new Callback<CheckInResponseListener>() { // from class: com.narvii.checkin.CheckInService$startCheckIn$1$onFail$1
                @Override // com.narvii.util.Callback
                public final void call(CheckInService.CheckInResponseListener checkInResponseListener) {
                    checkInResponseListener.onFail(apiRequest, i, list, str, apiResponse, th);
                }
            });
            CheckInService.this.getEventDispatchers().clear();
            CheckInService.this.setCheckingIn(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void showLotteryPrompt() {
        /*
            r5 = this;
            boolean r0 = r5.streakRepairDialogShowing
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 0
            r5.willPlayLottery = r0
            com.narvii.config.ConfigService r0 = r5.getConfig()
            int r0 = r0.getCommunityId()
            android.app.Activity r1 = r5.activity
            if (r1 != 0) goto L47
            com.narvii.app.NVContext r2 = r5.ctx
            java.lang.String r3 = "topActivity"
            java.lang.Object r2 = r2.getService(r3)
            com.narvii.util.services.TopActivityService r2 = (com.narvii.util.services.TopActivityService) r2
            if (r2 == 0) goto L47
            android.app.Activity r2 = r2.getTopActivity()
            boolean r3 = r2 instanceof com.narvii.app.NVActivity
            if (r3 == 0) goto L47
            int r3 = com.narvii.app.NVApplication.CLIENT_TYPE
            r4 = 101(0x65, float:1.42E-43)
            if (r3 != r4) goto L30
            goto L46
        L30:
            r3 = r2
            com.narvii.app.NVActivity r3 = (com.narvii.app.NVActivity) r3
            java.lang.String r4 = "config"
            java.lang.Object r3 = r3.getService(r4)
            java.lang.String r4 = "a.getService<ConfigService>(\"config\")"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            com.narvii.config.ConfigService r3 = (com.narvii.config.ConfigService) r3
            int r3 = r3.getCommunityId()
            if (r3 != r0) goto L47
        L46:
            r1 = r2
        L47:
            boolean r2 = r1 instanceof com.narvii.app.NVActivity
            if (r2 == 0) goto L72
            r2 = r1
            com.narvii.app.NVActivity r2 = (com.narvii.app.NVActivity) r2
            boolean r2 = r2.isDestoryed()
            if (r2 == 0) goto L56
            return
        L56:
            com.narvii.checkin.lottery.LotteryDialog r2 = new com.narvii.checkin.lottery.LotteryDialog     // Catch: java.lang.Exception -> L6c
            com.narvii.app.NVActivity r1 = (com.narvii.app.NVActivity) r1     // Catch: java.lang.Exception -> L6c
            r2.<init>(r1, r0)     // Catch: java.lang.Exception -> L6c
            r5.lotteryDialog = r2     // Catch: java.lang.Exception -> L6c
            com.narvii.checkin.lottery.LotteryDialog r0 = r5.lotteryDialog     // Catch: java.lang.Exception -> L6c
            if (r0 == 0) goto L67
            r0.show()     // Catch: java.lang.Exception -> L6c
            goto L72
        L67:
            kotlin.jvm.internal.Intrinsics.throwNpe()     // Catch: java.lang.Exception -> L6c
            r0 = 0
            throw r0
        L6c:
            r0 = move-exception
            java.lang.String r1 = "lucky draw"
            com.narvii.util.Log.e(r1, r0)
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.checkin.CheckInService.showLotteryPrompt():void");
    }

    public final void showStreakRepairDialog() {
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        if (componentCallbacks2 instanceof NVContext) {
            this.streakRepairDialogShowing = true;
            if (componentCallbacks2 != null) {
                CheckInHelper checkInHelper = new CheckInHelper((NVContext) componentCallbacks2);
                checkInHelper.source = "Left Side Panel";
                checkInHelper.startStreakRepairDialog(new AnonymousClass1());
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVContext");
        }
    }

    /* compiled from: CheckInService.kt */
    /* renamed from: com.narvii.checkin.CheckInService$showStreakRepairDialog$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    static final class AnonymousClass1<T> implements Callback<StreakRepairDialog> {
        AnonymousClass1() {
        }

        @Override // com.narvii.util.Callback
        public final void call(StreakRepairDialog streakRepairDialog) {
            if (streakRepairDialog != null) {
                streakRepairDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.checkin.CheckInService.showStreakRepairDialog.1.1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        CheckInService.this.setStreakRepairDialogShowing(false);
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.CheckInService.showStreakRepairDialog.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (CheckInService.this.getWillPlayLottery()) {
                                    CheckInService.this.showLotteryPrompt();
                                }
                            }
                        }, 500L);
                    }
                });
            } else {
                CheckInService.this.setStreakRepairDialogShowing(false);
                Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.CheckInService.showStreakRepairDialog.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (CheckInService.this.getWillPlayLottery()) {
                            CheckInService.this.showLotteryPrompt();
                        }
                    }
                }, 500L);
            }
        }
    }
}
