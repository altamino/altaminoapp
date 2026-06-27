package com.narvii.master;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.MainDialogFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.model.User;
import com.narvii.services.EventLogProfileService;
import com.narvii.services.incubator.IncubatorBackToHomeHelper;
import com.narvii.util.AppsflyerManager;
import com.narvii.util.Callback;
import com.narvii.util.DeepLinkManager;
import com.narvii.util.InterestPickerUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.ParamUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.ReferrerTrackUtils;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;

/* loaded from: classes.dex */
public class MasterActivity extends NVActivity implements EventLogProfileService.EventLogProfileListener {
    private static final int LOGIN_REQUEST = 1;
    AccountService account;
    ProgressDialog blockingProgressDialog;
    boolean blockingProgressKeychain;
    private boolean disallowOnBoarding;
    EventLogProfileService eventLogProfileService;
    boolean keychainLoginActivityShowing;
    PreferencesHelper prefsHelper;
    EventLogProfileResponse response;
    boolean waitingNextInterestPicker;
    private final Runnable startRelogin = new Runnable() { // from class: com.narvii.master.MasterActivity.1
        @Override // java.lang.Runnable
        public void run() {
            MasterActivity masterActivity = MasterActivity.this;
            if (masterActivity.blockingProgressKeychain) {
                if (masterActivity.isDestoryed()) {
                    return;
                }
                Utils.postDelayed(this, 200L);
            } else if (masterActivity.account.hasAccount()) {
                final ProgressDialog progressDialog = new ProgressDialog(MasterActivity.this);
                progressDialog.show();
                MasterActivity.this.account.relogin(new Callback<User>() { // from class: com.narvii.master.MasterActivity.1.1
                    @Override // com.narvii.util.Callback
                    public void call(User user) {
                        progressDialog.dismiss();
                    }
                });
            }
        }
    };
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.master.MasterActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.KEYCHAIN_STATUS_CHANGED.equals(intent.getAction())) {
                if (MasterActivity.this.account.getKeychainStatus() > 0) {
                    MasterActivity masterActivity = MasterActivity.this;
                    masterActivity.blockingProgressKeychain = true;
                    masterActivity.updateBlockingProgressDialog();
                    return;
                }
                MasterActivity masterActivity2 = MasterActivity.this;
                if (masterActivity2.blockingProgressKeychain) {
                    masterActivity2.blockingProgressKeychain = false;
                    masterActivity2.updateBlockingProgressDialog();
                    if (MasterActivity.this.account.hasAccount()) {
                        User userProfile = MasterActivity.this.account.getUserProfile();
                        String strNickname = userProfile == null ? null : userProfile.nickname();
                        MasterActivity masterActivity3 = MasterActivity.this;
                        NVToast.makeText(masterActivity3, masterActivity3.getString(R.string.account_login_as, new Object[]{strNickname}), 0).show();
                    }
                }
            }
        }
    };

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return 2131755020;
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

    public static Intent backToMaster(NVContext nVContext, Intent intent) {
        if ((nVContext == null || !(nVContext.getContext() instanceof Activity) || ((Activity) nVContext.getContext()).getTaskId() == ApplicationSessionHelper.getTaskId()) && NVApplication.CLIENT_TYPE == 100) {
            if (ApplicationSessionHelper.hasMasterStacked()) {
                intent.setFlags(67108864);
            } else {
                intent.setFlags(268468224);
            }
        }
        return intent;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Intent intent;
        super.onCreate(bundle);
        getActionBar().hide();
        this.disallowOnBoarding = getBooleanParam("disallowOnBoarding");
        ApplicationSessionHelper.masterOpened(this);
        this.account = (AccountService) getService("account");
        this.prefsHelper = new PreferencesHelper(this);
        this.eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        if (bundle == null) {
            MainDialogFragment mainDialogFragment = new MainDialogFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("flag", NVApplication.CLIENT_TYPE == 100 ? 17921 : 0);
            mainDialogFragment.setArguments(bundle2);
            getSupportFragmentManager().beginTransaction().add(mainDialogFragment, "dialog").commit();
            getSupportFragmentManager().beginTransaction().add(android.R.id.content, new MasterTabFragment(), "incubatorTab").commit();
            if (!"explore".equals(getStringParam("tab")) && NVApplication.CLIENT_TYPE == 100 && !this.account.hasAccount()) {
                SharedPreferences sharedPreferences = (SharedPreferences) getService("prefs");
                if (!getBooleanParam(IncubatorBackToHomeHelper.NOT_SHOW_LOGIN_WHEN_OPEN_MASTER, false) && (!sharedPreferences.contains("signUpStrategy") || this.disallowOnBoarding)) {
                    Intent intent2 = new Intent(this, (Class<?>) LoginActivity.class);
                    intent2.putExtra("signup", true);
                    intent2.putExtra("skipBtn", true);
                    if (!this.disallowOnBoarding) {
                        intent2.putExtra("onBoarding", true);
                    }
                    intent2.putExtra("Source", "Zero State");
                    intent2.putExtra("promptType", LoginActivity.PromptType.Launch.name());
                    startActivityForResult(intent2, 1);
                    this.keychainLoginActivityShowing = true;
                }
            }
        }
        if (!this.keychainLoginActivityShowing && bundle == null && (intent = (Intent) getIntent().getParcelableExtra("__redirectActivity")) != null && checkRedirectIntent(intent)) {
            startActivity(intent);
            overridePendingTransition(0, 0);
        }
        if (!this.keychainLoginActivityShowing) {
            registerLocalReceiver(this.receiver, new IntentFilter(AccountService.KEYCHAIN_STATUS_CHANGED));
            this.receiver.onReceive(this, new Intent(AccountService.KEYCHAIN_STATUS_CHANGED));
            if (bundle == null && getIntent() != null && getIntent().getData() != null && "relogin".equals(getIntent().getData().getHost())) {
                Utils.postDelayed(this.startRelogin, 400L);
            }
        }
        if (NVApplication.CLIENT_TYPE == 100) {
            EventLogProfileService eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
            eventLogProfileService.addListener(this);
            if (bundle == null) {
                eventLogProfileService.refresh(true, false);
                this.waitingNextInterestPicker = !this.disallowOnBoarding;
            }
        }
        AppsflyerManager.trackDeepLinking(this);
        DeepLinkManager.handleFacebookDeferredLink(this);
        ReferrerTrackUtils.getInstance().trackReferrer(this);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (isFinishing()) {
            ApplicationSessionHelper.masterFinished(this);
        }
        ((EventLogProfileService) getService("eventLogProfile")).removeListener(this);
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        SplashUtils.cancelSplash(this);
        DrawerHost.curCommunitySelectedOffset = 0;
        DrawerHost.curCommunitySelectedPosition = 0;
        this.account.updateRecentVisitorCount();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) throws Resources.NotFoundException {
        super.onNewIntent(intent);
        Intent intent2 = (Intent) intent.getParcelableExtra("__redirectActivity");
        if (checkRedirectIntent(intent2)) {
            startActivity(intent2);
            overridePendingTransition(0, 0);
            return;
        }
        MasterTabFragment masterTabFragment = (MasterTabFragment) getSupportFragmentManager().findFragmentByTag("incubatorTab");
        if (masterTabFragment != null) {
            String stringParam = ParamUtils.getStringParam(intent, "tab");
            if ("my".equals(stringParam)) {
                masterTabFragment.setTabIndex(getMyCommunityIndex());
            } else if ("chat".equals(stringParam)) {
                masterTabFragment.setTabIndex(2);
            }
        }
        finishActivity(1);
    }

    private int getMyCommunityIndex() {
        return this.eventLogProfileService.isShowMyCommunityTab() ? 1 : 0;
    }

    private boolean checkRedirectIntent(Intent intent) {
        return ((getCallingActivity() != null && !PackageUtils.isTrustingPackage(getCallingActivity().getPackageName())) || intent == null || !PackageUtils.isTrustingPackage(intent.resolveActivity(getPackageManager()).getPackageName())) ? false : true;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws Resources.NotFoundException {
        if (i == 1) {
            this.keychainLoginActivityShowing = false;
            if (i2 == 0) {
                if (this.blockingProgressKeychain) {
                    return;
                }
                EventLogProfileResponse eventLogProfileResponse = this.response;
                if (eventLogProfileResponse != null && eventLogProfileResponse.needTriggerInterestPicker && !this.account.hasAccount()) {
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
        }
        super.onActivityResult(i, i2, intent);
    }

    void gotoDefaultTab() throws Resources.NotFoundException {
        MasterTabFragment masterTabFragment = (MasterTabFragment) getSupportFragmentManager().findFragmentByTag("incubatorTab");
        if (masterTabFragment != null) {
            masterTabFragment.gotoDefaultTab();
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (SplashUtils.cancelSplash(this)) {
            return;
        }
        if (getSupportFragmentManager() != null) {
            ComponentCallbacks componentCallbacksFindFragmentByTag = getSupportFragmentManager().findFragmentByTag("incubatorTab");
            if ((componentCallbacksFindFragmentByTag instanceof FragmentOnBackListener) && ((FragmentOnBackListener) componentCallbacksFindFragmentByTag).onBackPressed(this)) {
                return;
            }
        }
        super.onBackPressed();
    }

    void updateBlockingProgressDialog() {
        if (this.blockingProgressKeychain) {
            if (this.blockingProgressDialog == null) {
                this.blockingProgressDialog = new ProgressDialog(this);
                this.blockingProgressDialog.setBackgroundDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                this.blockingProgressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.master.MasterActivity.3
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) throws Resources.NotFoundException {
                        MasterActivity.this.gotoDefaultTab();
                    }
                });
            }
            this.blockingProgressDialog.show();
            return;
        }
        ProgressDialog progressDialog = this.blockingProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.blockingProgressDialog = null;
        }
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onProfileChanged(EventLogProfileResponse eventLogProfileResponse, boolean z) throws Resources.NotFoundException {
        this.prefsHelper.saveLandingPos(Integer.valueOf(eventLogProfileResponse.landingOption));
        if (z) {
            gotoDefaultTab();
        }
        this.response = eventLogProfileResponse;
    }

    private void tryOpenInterestPicker(boolean z) {
        if (this.response == null) {
            return;
        }
        if (this.waitingNextInterestPicker || (z && isActivityResumed() && this.account.hasAccount())) {
            if (!this.keychainLoginActivityShowing && this.response.needTriggerInterestPicker) {
                Log.i("interestPicker", z ? "account change main activity" : "app launch");
                InterestPickerUtils.openInterestPicker(getContext(), this.response, true, !z);
            }
            this.waitingNextInterestPicker = false;
        }
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onRequestFailed(String str, boolean z) {
        if (this.waitingNextInterestPicker) {
            this.waitingNextInterestPicker = false;
        }
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void clearResponseWhenAccountChange() {
        this.response = null;
    }
}
