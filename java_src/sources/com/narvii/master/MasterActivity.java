package com.narvii.master;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import ai.medialab.medialabanalytics.MediaLabAnalytics;
import ai.medialab.medialabanalytics.UidListener;
import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.View;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.AccountResponseListener;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.account.liveramp.LiveRampHelper;
import com.narvii.ad.MediaLabInterstitials;
import com.narvii.amino.MainDialogFragment;
import com.narvii.amino.master.R;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.birthday.EnterBirthdayFragment;
import com.narvii.drawer.DrawerHost;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.master.launch.FirstLaunchViewModel;
import com.narvii.master.launch.InstallType;
import com.narvii.master.viewmodel.MasterUiState;
import com.narvii.master.viewmodel.MasterViewModel;
import com.narvii.master.viewmodel.repository.AccountRepository;
import com.narvii.model.User;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.permisson.PermissionUtilsV2;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.InterestPickerUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.ParamUtils;
import com.narvii.util.PendingIntentUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.ReferrerTrackUtils;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.BillingManager;
import com.narvii.wallet.CoinBillingManager;
import com.narvii.wallet.MembershipBillingManager;
import com.narvii.wallet.optinads.OptinAds;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes10.dex */
public class MasterActivity extends NVActivity implements EventLogProfileService.EventLogProfileListener {
    private static final int LOGIN_REQUEST = 1;
    AccountService accountService;
    ProgressDialog blockingProgressDialog;
    boolean blockingProgressKeychain;
    private boolean disallowOnBoarding;
    EventLogProfileService eventLogProfileService;
    private FirstLaunchViewModel firstLaunchViewModel;
    boolean keychainLoginActivityShowing;
    private MasterViewModel masterViewModel;
    PreferencesHelper prefsHelper;
    private ActivityResultLauncher<String> requestPermissionLauncher;
    EventLogProfileResponse response;
    boolean waitingNextInterestPicker;
    private final int NOTIFY_ID = R.id.community_notification_check;
    private final Runnable startRelogin = new AnonymousClass1();
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.master.MasterActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.KEYCHAIN_STATUS_CHANGED.equals(intent.getAction())) {
                if (MasterActivity.this.accountService.getKeychainStatus() > 0) {
                    MasterActivity masterActivity = MasterActivity.this;
                    masterActivity.blockingProgressKeychain = true;
                    masterActivity.updateBlockingProgressDialog();
                    return;
                }
                MasterActivity masterActivity2 = MasterActivity.this;
                if (masterActivity2.blockingProgressKeychain) {
                    masterActivity2.blockingProgressKeychain = false;
                    masterActivity2.updateBlockingProgressDialog();
                    if (MasterActivity.this.accountService.hasAccount()) {
                        User userProfile = MasterActivity.this.accountService.getUserProfile();
                        String strNickname = userProfile == null ? null : userProfile.nickname();
                        MasterActivity masterActivity3 = MasterActivity.this;
                        NVToast.makeText(masterActivity3, masterActivity3.getString(R.string.account_login_as, strNickname), 0).show();
                    }
                }
            }
        }
    };

    /* JADX INFO: renamed from: com.narvii.master.MasterActivity$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MasterActivity masterActivity = MasterActivity.this;
            if (masterActivity.blockingProgressKeychain) {
                if (masterActivity.isDestoryed()) {
                    return;
                }
                Utils.postDelayed(this, 200L);
            } else if (masterActivity.accountService.hasAccount()) {
                final ProgressDialog progressDialog = new ProgressDialog(MasterActivity.this);
                progressDialog.show();
                MasterActivity.this.accountService.relogin(new Callback() { // from class: com.narvii.master.p
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        progressDialog.dismiss();
                    }
                });
            }
        }
    }

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void clearResponseWhenAccountChange() {
        this.response = null;
    }

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVActivity
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVActivity
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return true;
    }

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return false;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 1) {
            this.keychainLoginActivityShowing = false;
            if (i11 == 0) {
                if (this.blockingProgressKeychain) {
                    return;
                }
                EventLogProfileResponse eventLogProfileResponse = this.response;
                if (eventLogProfileResponse != null && eventLogProfileResponse.needTriggerInterestPicker && !this.accountService.hasAccount()) {
                    boolean booleanExtra = intent != null ? intent.getBooleanExtra("clickStartButton", false) : false;
                    if (booleanExtra) {
                        this.waitingNextInterestPicker = false;
                    }
                    if (!this.disallowOnBoarding) {
                        Log.i("interestPicker", "close login" + this.response);
                        InterestPickerUtils.openInterestPicker(getContext(), this.response, booleanExtra ^ true, true ^ booleanExtra);
                    }
                }
            }
            gotoDefaultTab();
            setEmailToLiveRamp();
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onRequestFailed(String str, boolean z6) {
        if (this.waitingNextInterestPicker) {
            this.waitingNextInterestPicker = false;
        }
    }

    private void associateMediaLabIdWithAminoUserId() {
        new Handler().postDelayed(new Runnable() { // from class: com.narvii.master.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f2397a.lambda$associateMediaLabIdWithAminoUserId$6();
            }
        }, 2000L);
    }

    public static Intent backToMaster(NVContext nVContext, Intent intent) {
        if ((nVContext == null || !(nVContext.getContext() instanceof Activity) || ((Activity) nVContext.getContext()).getTaskId() == ApplicationSessionHelper.getTaskId()) && isMasterApplication()) {
            if (ApplicationSessionHelper.hasMasterStacked()) {
                intent.setFlags(67108864);
            } else {
                intent.setFlags(268468224);
            }
        }
        return intent;
    }

    private AccountRepository buildAccountRepository() {
        return new AccountRepository() { // from class: com.narvii.master.h
            @Override // com.narvii.master.viewmodel.repository.AccountRepository
            public final boolean hasAccount() {
                return this.f2308a.lambda$buildAccountRepository$2();
            }
        };
    }

    private void extracted(Bundle bundle) {
        EventLogProfileService eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        eventLogProfileService.addListener(this);
        if (bundle == null) {
            eventLogProfileService.refresh(true, false);
            this.waitingNextInterestPicker = !this.disallowOnBoarding;
        }
    }

    @NonNull
    private static MainDialogFragment getMainDialogFragment() {
        MainDialogFragment mainDialogFragment = new MainDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("flag", isMasterApplication() ? 17921 : 0);
        mainDialogFragment.setArguments(bundle);
        return mainDialogFragment;
    }

    private int getMyCommunityIndex() {
        return this.eventLogProfileService.isShowMyCommunityTab() ? 1 : 0;
    }

    private static boolean isMasterApplication() {
        return NVApplication.CLIENT_TYPE == 100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$associateMediaLabIdWithAminoUserId$6() {
        final String userId = ((AccountService) getService("account")).getUserId();
        if (userId != null) {
            MediaLabAnalytics.getInstance().initialize(this);
            MediaLabAnalytics.getInstance().getUid(new UidListener() { // from class: com.narvii.master.m
                public final void onUidReady(String str) {
                    this.f2394a.lambda$associateMediaLabIdWithAminoUserId$5(userId, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$buildAccountRepository$2() {
        return this.accountService.hasAccount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerForRequestPushPermission$0(View view) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupFirstLaunchViewModel$4(InstallType installType) {
        if (installType instanceof InstallType.FreshInstall) {
            launchFirstLaunchNotification();
            y.e.n();
        } else if (installType instanceof InstallType.Upgrade) {
            y.e.r();
        }
    }

    private void launchFirstLaunchNotification() {
        if (PermissionUtilsV2.INSTANCE.hasSelfPermissionPushNotifications(this)) {
            showFirstNotification();
        } else if (Build.VERSION.SDK_INT >= 33) {
            requestNotificationPermission();
        }
    }

    private void registerForKeyStatusChange() {
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.KEYCHAIN_STATUS_CHANGED));
        this.receiver.onReceive(this, new Intent(AccountService.KEYCHAIN_STATUS_CHANGED));
    }

    private void registerForRequestPushPermission() {
        this.requestPermissionLauncher = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.narvii.master.i
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                this.f2389a.lambda$registerForRequestPushPermission$1((Boolean) obj);
            }
        });
    }

    @RequiresApi
    private void requestNotificationPermission() {
        this.requestPermissionLauncher.a("android.permission.POST_NOTIFICATIONS");
    }

    private void setEmailToLiveRamp() {
        String email = this.accountService.getEmail();
        if (!TextUtils.isEmpty(email)) {
            LiveRampHelper.setLRUserEmail(email);
        } else if (this.accountService.hasAccount()) {
            ((ApiService) getService("api")).exec(ApiRequest.builder().https().global().path("/account").build(), new AccountResponseListener(this));
            LiveRampHelper.setLRUserEmail(this.accountService.getEmail());
        }
    }

    private void setTabFromArgs() {
        if (this.masterViewModel.shouldLaunchLoginIfExploreRequested(getIntent())) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
            intent.putExtra("signup", true);
            intent.putExtra("skipBtn", true);
            if (!this.disallowOnBoarding) {
                intent.putExtra("onBoarding", true);
            }
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Zero State");
            intent.putExtra("promptType", LoginActivity.PromptType.Launch.name());
            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 1);
            this.keychainLoginActivityShowing = true;
        }
    }

    private void showFirstNotification() {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, NotificationChannelHelper.CHANNEL_COMMUNITY_MANAGEMENT);
        builder.a0(R.drawable.ic_notify);
        builder.z(-16724355);
        builder.E(getString(R.string.app_name));
        NotificationChannelHelper.setAlertChannel(builder);
        String str = "🚨" + getString(R.string.first_launch_notify_message) + "🚨";
        builder.D(str);
        builder.h0(str);
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle(builder);
        bigTextStyle.x(str);
        builder.f0(bigTextStyle);
        Intent intent = FragmentWrapperActivity.intent(MasterTemplatePickerFragment.class);
        intent.putExtra("source", "FirstLaunchNotifyPush");
        builder.C(PendingIntent.getActivity(this, (((int) SystemClock.elapsedRealtime()) & 65535) | R.id.ALT, intent, PendingIntentUtils.INSTANCE.getCurrentImmutableFlag(134217728)));
        builder.t(true);
        ((NotificationManager) getSystemService("notification")).notify(R.id.community_notification_check, builder.g());
        this.firstLaunchViewModel.checkInstallType();
    }

    private void tryOpenInterestPicker(final boolean z6) {
        if (this.response == null) {
            return;
        }
        if (this.waitingNextInterestPicker || (z6 && isActivityResumed() && this.accountService.hasAccount())) {
            if (!this.keychainLoginActivityShowing && this.response.needTriggerInterestPicker) {
                this.accountService.hasBirthday(new Callback() { // from class: com.narvii.master.j
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2390a.lambda$tryOpenInterestPicker$8(z6, (Boolean) obj);
                    }
                });
            }
            this.waitingNextInterestPicker = false;
        }
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onProfileChanged(EventLogProfileResponse eventLogProfileResponse, boolean z6) {
        this.prefsHelper.saveLandingPos(Integer.valueOf(eventLogProfileResponse.landingOption));
        if (z6) {
            gotoDefaultTab();
        }
        if (eventLogProfileResponse.showStoreBadge) {
            setStoreBadged();
        }
        this.response = eventLogProfileResponse;
        tryOpenInterestPicker(z6);
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void shouldShowDialog() {
        Intent intent = FragmentWrapperActivity.intent(EnterBirthdayFragment.class);
        intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, EnterBirthdayFragment.BirthdayType.GLOBAL_PROFILE);
        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
    }

    void updateBlockingProgressDialog() {
        if (!this.blockingProgressKeychain) {
            ProgressDialog progressDialog = this.blockingProgressDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
                this.blockingProgressDialog = null;
                return;
            }
            return;
        }
        if (this.blockingProgressDialog == null) {
            ProgressDialog progressDialog2 = new ProgressDialog(this);
            this.blockingProgressDialog = progressDialog2;
            progressDialog2.setBackgroundDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            this.blockingProgressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.master.k
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f2392a.lambda$updateBlockingProgressDialog$7(dialogInterface);
                }
            });
        }
        this.blockingProgressDialog.show();
    }

    private void addFragmentsToStack() {
        getSupportFragmentManager().q().e(getMainDialogFragment(), "dialog").j();
        getSupportFragmentManager().q().c(R.id.content, new MasterTabFragment(), "incubatorTab").j();
    }

    private boolean checkRedirectIntent(Intent intent) {
        if ((getCallingActivity() != null && !PackageUtils.isTrustingPackage(getCallingActivity().getPackageName())) || intent == null || !PackageUtils.isTrustingPackage(intent.resolveActivity(getPackageManager()).getPackageName())) {
            return false;
        }
        return true;
    }

    private void hideActionBar() {
        if (getActionBar() != null) {
            getActionBar().hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$associateMediaLabIdWithAminoUserId$5(String str, String str2) {
        MediaLabAnalytics.getInstance().trackEvent("Linked UID", new Pair[]{new Pair("object_id", str)});
        Bundle bundle = new Bundle();
        bundle.putString("data_uid", str2);
        FirebaseAnalytics.getInstance(getContext()).b(bundle);
        setEmailToLiveRamp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerForRequestPushPermission$1(Boolean bool) {
        if (bool.booleanValue()) {
            showFirstNotification();
            return;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this);
        aCMAlertDialog.setTitle(R.string.notification_setting_hint_title);
        aCMAlertDialog.setMessage(R.string.notification_turned_off_warning);
        aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -7829368);
        aCMAlertDialog.addButton(R.string.notification_turned_off_warning2, new View.OnClickListener() { // from class: com.narvii.master.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2307a.lambda$registerForRequestPushPermission$0(view);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupMainViewModel$3(MasterUiState masterUiState) {
        if (masterUiState.isReLogin()) {
            Utils.postDelayed(this.startRelogin, 400L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryOpenInterestPicker$8(boolean z6, Boolean bool) {
        String str;
        if (bool.booleanValue()) {
            if (z6) {
                str = "account change main activity";
            } else {
                str = "app launch";
            }
            Log.i("interestPicker", str);
            InterestPickerUtils.openInterestPicker(getContext(), this.response, true, !z6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateBlockingProgressDialog$7(DialogInterface dialogInterface) {
        gotoDefaultTab();
    }

    private void logAppCheckEvent(StatisticsEventBuilder statisticsEventBuilder) {
        FirebaseLogManager.logEvent(this, statisticsEventBuilder);
    }

    private void setupFirstLaunchViewModel() {
        FirstLaunchViewModel firstLaunchViewModel = (FirstLaunchViewModel) new ViewModelProvider(this, FirstLaunchViewModel.getFactory(getContext())).a(FirstLaunchViewModel.class);
        this.firstLaunchViewModel = firstLaunchViewModel;
        firstLaunchViewModel.getInstallState().i(this, new Observer() { // from class: com.narvii.master.n
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f2396a.lambda$setupFirstLaunchViewModel$4((InstallType) obj);
            }
        });
    }

    private void setupMainViewModel() {
        MasterViewModel masterViewModel = (MasterViewModel) new ViewModelProvider(this, MasterViewModel.factory(buildAccountRepository(), (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY))).a(MasterViewModel.class);
        this.masterViewModel = masterViewModel;
        masterViewModel.getReLoginEvent().i(this, new Observer() { // from class: com.narvii.master.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f2393a.lambda$setupMainViewModel$3((MasterUiState) obj);
            }
        });
    }

    void gotoDefaultTab() {
        MasterTabFragment masterTabFragment = (MasterTabFragment) getSupportFragmentManager().m0("incubatorTab");
        if (masterTabFragment != null) {
            masterTabFragment.gotoDefaultTab();
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!SplashUtils.cancelSplash(this)) {
            if (getSupportFragmentManager() != null) {
                ActivityResultCaller activityResultCallerM0 = getSupportFragmentManager().m0("incubatorTab");
                if ((activityResultCallerM0 instanceof FragmentOnBackListener) && ((FragmentOnBackListener) activityResultCallerM0).onBackPressed(this)) {
                    return;
                }
            }
            super.onBackPressed();
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        Intent intent;
        super.onCreate(bundle);
        hideActionBar();
        this.disallowOnBoarding = getBooleanParam("disallowOnBoarding");
        NVApplication.instance();
        ApplicationSessionHelper.masterOpened(this);
        this.accountService = (AccountService) getService("account");
        this.prefsHelper = new PreferencesHelper(this);
        this.eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        setShouldInflateAd(true);
        setContentView(R.layout.activity_base);
        setupMainViewModel();
        if (bundle == null) {
            addFragmentsToStack();
            setTabFromArgs();
        }
        if (!this.keychainLoginActivityShowing && bundle == null && (intent = (Intent) getIntent().getParcelableExtra("__redirectActivity")) != null && checkRedirectIntent(intent)) {
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
            overridePendingTransition(0, 0);
        }
        if (!this.keychainLoginActivityShowing) {
            registerForKeyStatusChange();
            this.masterViewModel.launchReLogin(bundle, getIntent());
        }
        if (isMasterApplication()) {
            extracted(bundle);
        }
        ReferrerTrackUtils.getInstance().trackReferrer(this);
        associateMediaLabIdWithAminoUserId();
        BillingManager.INSTANCE.init(this);
        CoinBillingManager.refreshInstance();
        MembershipBillingManager.INSTANCE.initialize(this);
        if (OptinAds.adsInitAllowed(this)) {
            MediaLabInterstitials.INSTANCE.initialize(this);
        }
        registerForRequestPushPermission();
        setupFirstLaunchViewModel();
        this.firstLaunchViewModel.getInstallState();
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (isFinishing()) {
            ApplicationSessionHelper.masterFinished(this);
        }
        ((EventLogProfileService) getService("eventLogProfile")).removeListener(this);
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Intent intent2 = (Intent) intent.getParcelableExtra("__redirectActivity");
        if (checkRedirectIntent(intent2)) {
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent2);
            overridePendingTransition(0, 0);
            return;
        }
        MasterTabFragment masterTabFragment = (MasterTabFragment) getSupportFragmentManager().m0("incubatorTab");
        if (masterTabFragment != null) {
            String stringParam = ParamUtils.getStringParam(intent, "tab");
            if ("my".equals(stringParam)) {
                masterTabFragment.setTabIndex(getMyCommunityIndex());
            } else if ("chat".equals(stringParam)) {
                masterTabFragment.setTabIndex(2);
            } else if (EventConstants.GlobalNavigation.STORE.equals(stringParam)) {
                masterTabFragment.setTopBarElementsVisibility(8, true);
                masterTabFragment.setTabIndex(3);
            }
        }
        finishActivity(1);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setScreenName(EventConstants.GlobalNavigation.DISCOVER);
        SplashUtils.cancelSplash(this);
        DrawerHost.curCommunitySelectedOffset = 0;
        DrawerHost.curCommunitySelectedPosition = 0;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        String str;
        super.onStart();
        this.accountService.initAgeAndGender();
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(this);
        if (this.accountService.hasAccount()) {
            str = "authenticated";
        } else {
            str = "unauthenticated";
        }
        firebaseAnalytics.c("authentication_status", str);
    }

    void setStoreBadged() {
        MasterTabFragment masterTabFragment = (MasterTabFragment) getSupportFragmentManager().m0("incubatorTab");
        if (masterTabFragment != null) {
            masterTabFragment.setStoreBadged();
        }
    }
}
