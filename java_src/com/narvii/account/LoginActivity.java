package com.narvii.account;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.support.v4.app.Fragment;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.github.mmin18.widget.RealtimeBlurLayout;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.amino.MainActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.community.FullCommunityResponse;
import com.narvii.config.ConfigService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.master.invitation.PasteBoardService;
import com.narvii.master.invitation.PrivateCommunityCheckHelper;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NativeHelper;
import com.narvii.util.PaletteUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.logging.LoggingService;
import com.narvii.widget.NVImageView;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class LoginActivity extends NVActivity {
    static final int JOIN_REQUEST = 2;
    public static final int NOTIFY_ID = 4609;
    public static WeakReference<LoginActivity> instance;
    float[] accMax;
    float[] accMin;
    AccountService account;
    boolean authPromptLogged;
    boolean autoSignuped;
    private boolean creatingAccount;
    private boolean crossAppFinishing;
    private float density;
    private EventLogProfileService.EventLogProfileListener eventLogProfileListener;
    Animation fadeIn;
    Animation fadeOut;
    private boolean finishPageFinishing;
    float[] gyoMax;
    float[] gyoMin;
    private int ic;
    public boolean isFinishingCreateAccount;
    private boolean isRequesting;
    public boolean joiningCommunity;
    float[] lightMax;
    float[] lightMin;
    String loggingMethod;
    private SensorManager mSensorManager;
    private int mc;
    private MessageDigest md;
    private SensorEventListener sel;
    boolean signupWakeup;
    boolean startingActivity;
    Boolean statEmailVerificationSkipped;
    int statErrorCode;
    int statMaxLoginStep;
    int statMaxSignupSetp;
    int statType;
    AccountBaseFragment submittingFragment;
    private int ut;
    ArrayList<Integer> startingRequestCodes = new ArrayList<>();
    private final Runnable scheduleSignupWakeup = new Runnable() { // from class: com.narvii.account.LoginActivity.1
        @Override // java.lang.Runnable
        public void run() {
            AlarmManager alarmManager = (AlarmManager) LoginActivity.this.getSystemService(NotificationCompat.CATEGORY_ALARM);
            LoginActivity loginActivity = LoginActivity.this;
            alarmManager.set(1, System.currentTimeMillis() + (NVApplication.DEBUG ? 8000L : DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS), PendingIntent.getService(loginActivity, 0, new Intent(loginActivity, (Class<?>) FinishSignupNotificationService.class), 0));
        }
    };
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.account.LoginActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.KEYCHAIN_STATUS_CHANGED.equals(intent.getAction())) {
                LoginActivity.this.logAuthPrompt();
                if (LoginActivity.this.account.hasAccount()) {
                    LoginActivity loginActivity = LoginActivity.this;
                    loginActivity.statMaxLoginStep = 3;
                    loginActivity.statMaxSignupSetp = 0;
                    loginActivity.statType = 10;
                    loginActivity.statErrorCode = 0;
                    loginActivity.statEmailVerificationSkipped = null;
                    loginActivity.crossAppFinishing = true;
                    LoginActivity.this.finishWithResult(null, true, 0, null);
                    LoginActivity.this.crossAppFinishing = false;
                    return;
                }
                LoginActivity.this.updateViews();
            }
        }
    };
    private final BroadcastReceiver finishPageReceiver = new BroadcastReceiver() { // from class: com.narvii.account.LoginActivity.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!AccountService.FINISH_LOGIN_PAGE.equals(intent.getAction()) || !LoginActivity.this.account.hasAccount() || LoginActivity.this.isActivityResumed() || LoginActivity.this.isFinishing()) {
                return;
            }
            LoginActivity.this.finishPageFinishing = true;
            LoginActivity.this.finish();
            LoginActivity.this.finishPageFinishing = false;
        }
    };
    final Runnable updateViewsR = new Runnable() { // from class: com.narvii.account.LoginActivity.5
        @Override // java.lang.Runnable
        public void run() {
            LoginActivity.this.updateViews();
        }
    };

    public enum PromptType {
        Launch,
        Button,
        Required
    }

    @Override // com.narvii.app.NVActivity
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        instance = new WeakReference<>(this);
        this.account = (AccountService) getService("account");
        setContentView(R.layout.account_login_signup_frame);
        AndroidBug5497Workaround.assistActivity(this);
        this.fadeOut = AnimationUtils.loadAnimation(this, android.R.anim.fade_out);
        this.fadeIn = AnimationUtils.loadAnimation(this, android.R.anim.fade_in);
        RealtimeBlurLayout realtimeBlurLayout = (RealtimeBlurLayout) findViewById(R.id.nv_realtime_blur);
        NVImageView nVImageView = (NVImageView) findViewById(R.id.bg);
        if (NVApplication.CLIENT_TYPE == 101) {
            realtimeBlurLayout.setVisibility(0);
            Rect rect = new Rect();
            getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            Bitmap local = ((NVImageLoader) getService("imageLoader")).getLocal("assets://icon-community.jpg", rect.width() / 2, rect.height() / 2, true);
            if (nVImageView != null) {
                nVImageView.setImageDrawable(local == null ? null : new BitmapDrawable(local));
            }
            if (local != null && PaletteUtils.isLightTone(local)) {
                realtimeBlurLayout.setOverlayColor(570425344);
            }
        } else if (nVImageView != null) {
            nVImageView.setBackgroundResource(R.drawable.master_login_signup_bg);
        }
        if (bundle == null) {
            if (getIntent().getData() != null && !TextUtils.isEmpty(getStringParam(GlobalProfileFragment.KEY_USER)) && !TextUtils.isEmpty(getStringParam("pass"))) {
                getSupportFragmentManager().beginTransaction().add(R.id.frame, new UrlLoginFragment()).commit();
            } else {
                getSupportFragmentManager().beginTransaction().add(new SignupLocationFragment(), "signupLocation").commit();
                getSupportFragmentManager().beginTransaction().add(R.id.frame, new LoginOrSignupFragment(), "loginOrSignUp").commit();
            }
        } else {
            this.authPromptLogged = bundle.getBoolean("authPromptLogged");
            this.autoSignuped = bundle.getBoolean("autoSignuped");
            this.startingRequestCodes = bundle.getIntegerArrayList("startingRequestCodes");
            if (this.startingRequestCodes == null) {
                this.startingRequestCodes = new ArrayList<>();
            }
        }
        updateViews();
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.KEYCHAIN_STATUS_CHANGED));
        registerLocalReceiver(this.finishPageReceiver, new IntentFilter(AccountService.FINISH_LOGIN_PAGE));
        getActionBar().hide();
        this.signupWakeup = getBooleanParam("signupWakeup");
        this.ut = (int) SystemClock.uptimeMillis();
        try {
            this.mSensorManager = (SensorManager) getSystemService("sensor");
            this.sel = new SEL();
            this.mSensorManager.registerListener(this.sel, this.mSensorManager.getDefaultSensor(5), 3);
            this.mSensorManager.registerListener(this.sel, this.mSensorManager.getDefaultSensor(1), 3);
            this.mSensorManager.registerListener(this.sel, this.mSensorManager.getDefaultSensor(4), 3);
        } catch (Throwable unused) {
        }
        try {
            this.md = MessageDigest.getInstance("SHA-1");
        } catch (Exception unused2) {
        }
        this.density = getResources().getDisplayMetrics().density;
        logAuthPrompt();
    }

    void logAuthPrompt() {
        if (this.authPromptLogged) {
            return;
        }
        SharedPreferences sharedPreferences = (SharedPreferences) getService("prefs");
        boolean z = (sharedPreferences.getString("last_email", null) == null && sharedPreferences.getString("last_phoneNumber", null) == null) ? false : true;
        if (z || AccountKeychain.inited(this)) {
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AuthPrompt", "type", getStringParam("promptType"), "newDevice", Boolean.valueOf(!z && AccountKeychain.readFrom(this) == null));
            this.authPromptLogged = true;
        }
    }

    void autoSignup() {
        if (this.autoSignuped) {
            return;
        }
        this.autoSignuped = true;
        SharedPreferences sharedPreferences = (SharedPreferences) getService("prefs");
        boolean z = false;
        boolean z2 = (sharedPreferences.getString("last_email", null) == null && sharedPreferences.getString("last_phoneNumber", null) == null) ? false : true;
        if (z2 || AccountKeychain.inited(this)) {
            if (!z2 && AccountKeychain.readFrom(this) == null) {
                z = true;
            }
            if (z) {
                ((GoogleLoginFragment) getSupportFragmentManager().findFragmentById(R.id.google_login_fragment)).requestLogin(1);
            }
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("authPromptLogged", this.authPromptLogged);
        bundle.putBoolean("autoSignuped", this.autoSignuped);
        bundle.putIntegerArrayList("startingRequestCodes", this.startingRequestCodes);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        ((AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntent.getService(this, 0, new Intent(this, (Class<?>) FinishSignupNotificationService.class), 0));
        ((NotificationManager) getSystemService("notification")).cancel(NOTIFY_ID);
        super.onStart();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.startingActivity = false;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        boolean z = false;
        for (Fragment fragment : getSupportFragmentManager().getFragments()) {
            if ((fragment instanceof EmailSignupFragment) || (fragment instanceof SignUpAddProfileFragment)) {
                z = true;
                break;
            }
        }
        if (z) {
            Utils.postDelayed(this.scheduleSignupWakeup, 100L);
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        SensorEventListener sensorEventListener;
        instance = null;
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager != null && (sensorEventListener = this.sel) != null) {
            sensorManager.unregisterListener(sensorEventListener);
        }
        unregisterLocalReceiver(this.finishPageReceiver);
        unregisterLocalReceiver(this.receiver);
        if (isFinishing()) {
            Utils.handler.removeCallbacks(this.scheduleSignupWakeup);
        }
        super.onDestroy();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.signupWakeup = intent.getBooleanExtra("signupWakeup", false) | this.signupWakeup;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityApi16, android.app.Activity
    @TargetApi(16)
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        this.startingActivity = true;
        if (i != 0 && !this.startingRequestCodes.contains(Integer.valueOf(i))) {
            this.startingRequestCodes.add(Integer.valueOf(i));
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        this.startingActivity = true;
        if (i != 0 && !this.startingRequestCodes.contains(Integer.valueOf(i))) {
            this.startingRequestCodes.add(Integer.valueOf(i));
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityApi16, android.app.Activity
    @TargetApi(16)
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        this.startingActivity = true;
        if (i != 0 && !this.startingRequestCodes.contains(Integer.valueOf(i))) {
            this.startingRequestCodes.add(Integer.valueOf(i));
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityApi14, android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        this.startingActivity = true;
        if (i != 0 && !this.startingRequestCodes.contains(Integer.valueOf(i))) {
            this.startingRequestCodes.add(Integer.valueOf(i));
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.joiningCommunity || this.creatingAccount || this.isFinishingCreateAccount) {
            return;
        }
        AccountBaseFragment accountBaseFragment = this.submittingFragment;
        if (accountBaseFragment != null && accountBaseFragment.cancel()) {
            setSubmitting(null);
            return;
        }
        if (getSupportFragmentManager() != null) {
            int backStackEntryCount = getSupportFragmentManager().getBackStackEntryCount();
            if (backStackEntryCount > 0) {
                String name = getSupportFragmentManager().getBackStackEntryAt(backStackEntryCount - 1).getName();
                if (name != null) {
                    ComponentCallbacks componentCallbacksFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(name);
                    if ((componentCallbacksFindFragmentByTag instanceof FragmentOnBackListener) && ((FragmentOnBackListener) componentCallbacksFindFragmentByTag).onBackPressed(this)) {
                        return;
                    }
                }
            } else {
                LoginOrSignupFragment loginOrSignupFragment = (LoginOrSignupFragment) getSupportFragmentManager().findFragmentByTag("loginOrSignUp");
                if (loginOrSignupFragment != null && loginOrSignupFragment.onBackPressed(this)) {
                    return;
                }
            }
        }
        super.onBackPressed();
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        if (NVApplication.CLIENT_TYPE == 101 && this.account.hasAccount()) {
            MainActivity.setPendingCommand(MainActivity.CMD_RESET);
            EnterCommunityHelper enterCommunityHelper = (EnterCommunityHelper) NVApplication.instance().getService("_enterCommunityHelper");
            if (enterCommunityHelper != null) {
                enterCommunityHelper.logEnterCommunity(NVApplication.instance(), 0L);
            }
        }
        if (!this.account.hasAccount()) {
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("SkipSignup", new Object[0]);
        } else if (!this.finishPageFinishing) {
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(AccountService.FINISH_LOGIN_PAGE));
        }
        if (!this.startingRequestCodes.isEmpty()) {
            Log.w("finish login activity with " + this.startingRequestCodes.size() + " childs");
            Iterator it = new ArrayList(this.startingRequestCodes).iterator();
            while (it.hasNext()) {
                try {
                    finishActivity(((Integer) it.next()).intValue());
                } catch (Exception unused) {
                }
            }
        }
        super.finish();
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void finishWithResult(com.narvii.account.AccountBaseFragment r8, boolean r9, int r10, java.lang.String r11) {
        /*
            r7 = this;
            boolean r0 = r7.isDestoryed()
            if (r0 == 0) goto L7
            return
        L7:
            r0 = 2
            r1 = 0
            r2 = 0
            if (r9 == 0) goto Ld2
            r9 = 1
            if (r10 != r9) goto L11
            r10 = 1
            goto L12
        L11:
            r10 = 0
        L12:
            int r11 = com.narvii.app.NVApplication.CLIENT_TYPE
            r3 = 101(0x65, float:1.42E-43)
            if (r11 != r3) goto L24
            java.lang.String r11 = "communityJoinLogin"
            boolean r11 = r7.getBooleanParam(r11)
            if (r11 != 0) goto L24
            r7.tryToJoinCommunity(r10)
            goto L75
        L24:
            android.content.Intent r11 = r7.getIntent()
            if (r11 == 0) goto L43
            android.content.Intent r11 = r7.getIntent()
            android.os.Bundle r11 = r11.getExtras()
            if (r11 == 0) goto L43
            android.content.Intent r11 = r7.getIntent()
            android.os.Bundle r11 = r11.getExtras()
            java.lang.String r3 = "skipInterestPicker"
            boolean r11 = r11.getBoolean(r3, r2)
            goto L44
        L43:
            r11 = 0
        L44:
            android.content.Intent r3 = r7.getIntent()
            if (r3 == 0) goto L69
            android.content.Intent r3 = r7.getIntent()
            android.os.Bundle r3 = r3.getExtras()
            if (r3 == 0) goto L69
            android.content.Intent r3 = r7.getIntent()
            android.os.Bundle r3 = r3.getExtras()
            java.lang.String r4 = "loginIntent"
            android.os.Parcelable r3 = r3.getParcelable(r4)
            android.content.Intent r3 = (android.content.Intent) r3
            if (r3 == 0) goto L69
            r7.startActivity(r3)
        L69:
            boolean r3 = r7.crossAppFinishing
            com.narvii.account.LoginActivity$4 r4 = new com.narvii.account.LoginActivity$4
            r4.<init>()
            r5 = 120(0x78, double:5.93E-322)
            com.narvii.util.Utils.postDelayed(r4, r5)
        L75:
            int r11 = r7.statType
            r3 = 4
            r4 = 3
            r5 = 10
            if (r11 != r9) goto L80
            java.lang.String r8 = "Phone Number"
            goto L97
        L80:
            if (r11 != r0) goto L85
            java.lang.String r8 = "Email"
            goto L97
        L85:
            if (r11 != r4) goto L8a
            java.lang.String r8 = "Facebook"
            goto L97
        L8a:
            if (r11 != r3) goto L8f
            java.lang.String r8 = "Google"
            goto L97
        L8f:
            if (r8 != 0) goto L96
            if (r11 != r5) goto L96
            java.lang.String r8 = "Auto Login"
            goto L97
        L96:
            r8 = r1
        L97:
            if (r10 != 0) goto Lb0
            int r11 = r7.statType
            if (r11 == r9) goto Lad
            if (r11 == r0) goto Laa
            if (r11 == r4) goto La7
            if (r11 == r3) goto La4
            goto Lb0
        La4:
            java.lang.String r11 = "google"
            goto Lb1
        La7:
            java.lang.String r11 = "facebook"
            goto Lb1
        Laa:
            java.lang.String r11 = "email"
            goto Lb1
        Lad:
            java.lang.String r11 = "phone"
            goto Lb1
        Lb0:
            r11 = r1
        Lb1:
            if (r11 == 0) goto Ld2
            com.narvii.app.NVApplication r0 = com.narvii.app.NVApplication.instance()
            com.narvii.logging.LogEvent$Builder r0 = com.narvii.logging.LogEvent.builder(r0)
            com.narvii.logging.LogEvent$Builder r0 = r0.allowNoPage()
            com.narvii.logging.LogEvent$Builder r0 = r0.actClick()
            com.narvii.logging.ActSemantic r3 = com.narvii.logging.ActSemantic.loginSuccess
            com.narvii.logging.LogEvent$Builder r0 = r0.actSemantic(r3)
            java.lang.String r3 = "loginType"
            com.narvii.logging.LogEvent$Builder r11 = r0.extraParam(r3, r11)
            r11.send()
        Ld2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.account.LoginActivity.finishWithResult(com.narvii.account.AccountBaseFragment, boolean, int, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishWithResult(boolean z) {
        Intent intent = getIntent();
        intent.putExtra("newAccount", z);
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.startingRequestCodes.remove(Integer.valueOf(i));
        if (i == 2) {
            setResult(-1);
            finish();
        } else if (i == 79 && i2 == -1 && intent != null && intent.getBooleanExtra("accountVerified", false)) {
            Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.frame);
            if (fragmentFindFragmentById instanceof EmailLoginFragment) {
                ((EmailLoginFragment) fragmentFindFragmentById).loginBtnClick();
            } else if (fragmentFindFragmentById instanceof MobileLoginFragment) {
                ((MobileLoginFragment) fragmentFindFragmentById).loginBtnClick();
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    void setRequesting(boolean z) {
        this.isRequesting = z;
    }

    void setCreatingAccount(boolean z) {
        this.creatingAccount = this.creatingAccount;
        setRequesting(z);
    }

    void setSubmitting(AccountBaseFragment accountBaseFragment) {
        if (accountBaseFragment != null) {
            SoftKeyboard.hideSoftKeyboard(this);
        }
        this.submittingFragment = accountBaseFragment;
        setRequesting(accountBaseFragment != null);
        Utils.handler.removeCallbacks(this.updateViewsR);
        Utils.post(this.updateViewsR);
    }

    void updateViews() {
        View viewFindViewById = findViewById(R.id.frame);
        View viewFindViewById2 = findViewById(R.id.submit_frame);
        TextView textView = (TextView) viewFindViewById2.findViewById(R.id.progress_text);
        boolean z = this.submittingFragment != null || this.account.getKeychainStatus() > 0;
        setVisibilityAnim(viewFindViewById, !z);
        setVisibilityAnim(viewFindViewById2, z);
        AccountBaseFragment accountBaseFragment = this.submittingFragment;
        textView.setText(accountBaseFragment == null ? null : accountBaseFragment.getProgressText());
    }

    private void setVisibilityAnim(View view, boolean z) {
        if (z && view.getVisibility() != 0) {
            view.setVisibility(0);
            view.startAnimation(this.fadeIn);
        } else {
            if (z || view.getVisibility() != 0) {
                return;
            }
            view.setVisibility(8);
            view.startAnimation(this.fadeOut);
        }
    }

    private class SEL implements SensorEventListener {
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        private SEL() {
        }

        private float[] copy(float[] fArr) {
            float[] fArr2 = new float[fArr.length];
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            return fArr2;
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            Sensor sensor;
            float[] fArr;
            float[] fArr2 = sensorEvent.values;
            if (fArr2 == null || fArr2.length == 0 || (sensor = sensorEvent.sensor) == null) {
                return;
            }
            int type = sensor.getType();
            float[] fArr3 = null;
            if (type == 1) {
                LoginActivity loginActivity = LoginActivity.this;
                if (loginActivity.accMin == null) {
                    loginActivity.accMin = copy(sensorEvent.values);
                }
                LoginActivity loginActivity2 = LoginActivity.this;
                if (loginActivity2.accMax == null) {
                    loginActivity2.accMax = copy(sensorEvent.values);
                }
                LoginActivity loginActivity3 = LoginActivity.this;
                fArr3 = loginActivity3.accMin;
                fArr = loginActivity3.accMax;
            } else if (type == 4) {
                LoginActivity loginActivity4 = LoginActivity.this;
                if (loginActivity4.gyoMin == null) {
                    loginActivity4.gyoMin = copy(sensorEvent.values);
                }
                LoginActivity loginActivity5 = LoginActivity.this;
                if (loginActivity5.gyoMax == null) {
                    loginActivity5.gyoMax = copy(sensorEvent.values);
                }
                LoginActivity loginActivity6 = LoginActivity.this;
                fArr3 = loginActivity6.gyoMin;
                fArr = loginActivity6.gyoMax;
            } else if (type != 5) {
                fArr = null;
            } else {
                LoginActivity loginActivity7 = LoginActivity.this;
                if (loginActivity7.lightMin == null) {
                    loginActivity7.lightMin = copy(sensorEvent.values);
                }
                LoginActivity loginActivity8 = LoginActivity.this;
                if (loginActivity8.lightMax == null) {
                    loginActivity8.lightMax = copy(sensorEvent.values);
                }
                LoginActivity loginActivity9 = LoginActivity.this;
                fArr3 = loginActivity9.lightMin;
                fArr = loginActivity9.lightMax;
            }
            int iMin = Math.min(sensorEvent.values.length, fArr3.length);
            for (int i = 0; i < iMin; i++) {
                fArr3[i] = Math.min(fArr3[i], sensorEvent.values[i]);
                fArr[i] = Math.max(fArr[i], sensorEvent.values[i]);
            }
        }
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || action == 1 || action == 3) {
            MessageDigest messageDigest = this.md;
            if (messageDigest != null) {
                messageDigest.update((byte) motionEvent.getAction());
                this.md.update(Integer.toString((int) (motionEvent.getRawX() / this.density)).getBytes());
                this.md.update(Integer.toString((int) (motionEvent.getRawY() / this.density)).getBytes());
            }
            this.mc++;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private byte[] getIds(int i) throws NoSuchAlgorithmException, IOException {
        int iIndexOf;
        if (i == 2) {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bArr = new byte[4096];
            messageDigest.update((Build.VERSION.SDK_INT + Build.VERSION.RELEASE + Build.VERSION.INCREMENTAL).getBytes());
            for (String str : new String[]{"/proc/cpuinfo", "/proc/partitions", "/proc/version"}) {
                FileInputStream fileInputStream = new FileInputStream(str);
                while (true) {
                    int i2 = fileInputStream.read(bArr);
                    if (i2 != -1) {
                        messageDigest.update(bArr, 0, i2);
                    }
                }
                fileInputStream.close();
            }
            FileInputStream fileInputStream2 = new FileInputStream("/proc/meminfo");
            int i3 = fileInputStream2.read(bArr);
            fileInputStream2.close();
            String str2 = new String(bArr, 0, i3);
            if (str2.startsWith("MemTotal:") && (iIndexOf = str2.indexOf(10)) != -1) {
                messageDigest.update(str2.substring(0, iIndexOf).getBytes());
            }
            return messageDigest.digest();
        }
        if (i == 3) {
            MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-1");
            PackageManager packageManager = getPackageManager();
            List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
            if (installedApplications.size() < 16) {
                for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN"), 131072)) {
                    messageDigest2.update((resolveInfo.activityInfo == null ? null : resolveInfo.activityInfo.packageName).getBytes());
                }
            } else {
                Iterator<ApplicationInfo> it = installedApplications.iterator();
                while (it.hasNext()) {
                    messageDigest2.update(it.next().packageName.getBytes());
                }
            }
            return messageDigest2.digest();
        }
        if (i != 4) {
            if (i == 5) {
                return this.md.digest();
            }
            return null;
        }
        MessageDigest messageDigest3 = MessageDigest.getInstance("SHA-1");
        try {
            Cursor cursorQuery = getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_data", "width", "height"}, null, null, null);
            int count = cursorQuery.getCount();
            this.ic = count;
            messageDigest3.update(String.valueOf(count).getBytes());
            if (cursorQuery != null && cursorQuery.moveToLast()) {
                int i4 = 0;
                do {
                    messageDigest3.update((cursorQuery.getString(0) + cursorQuery.getInt(1) + cursorQuery.getInt(2)).getBytes());
                    i4++;
                    if (i4 >= 16) {
                        break;
                    }
                } while (cursorQuery.moveToPrevious());
            }
            cursorQuery.close();
        } catch (Exception unused) {
        }
        return messageDigest3.digest();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] getVals() {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.account.LoginActivity.getVals():int[]");
    }

    void procReq(ApiRequest.Builder builder) throws NoSuchAlgorithmException, IOException {
        String string = getString(R.string.didssec);
        Integer numValueOf = Integer.valueOf(Integer.parseInt(getString(R.string.didsver)));
        int i = 0;
        for (int i2 : new int[]{2, 3, 4, 5}) {
            byte[] ids = getIds(i2);
            if (ids != null) {
                builder.param("deviceID" + i2, NativeHelper.C(ids, string, numValueOf.intValue()));
            }
        }
        int[] vals = getVals();
        while (i < vals.length) {
            StringBuilder sb = new StringBuilder();
            sb.append("val");
            int i3 = i + 1;
            sb.append(i3);
            builder.param(sb.toString(), Integer.valueOf(vals[i]));
            i = i3;
        }
    }

    private void tryToJoinCommunity(final boolean z) {
        this.joiningCommunity = true;
        if (!StringUtils.isTrimEmpty(getStringParam(CommunityDetailFragment.KEY_INVITATION_ID))) {
            checkWhetherNeedToJoin(z, getStringParam(CommunityDetailFragment.KEY_INVITATION_ID));
            return;
        }
        String pasteBoardLink = getPasteBoardLink();
        PasteBoardService pasteBoardService = (PasteBoardService) NVApplication.instance().getService("pasteBoard");
        if (StringUtils.isTrimEmpty(pasteBoardLink)) {
            checkWhetherNeedToJoin(z, null);
            return;
        }
        if ((pasteBoardService != null && !pasteBoardService.canCheckUrl(pasteBoardLink)) || (!ForwardActivity.isInviteCode(pasteBoardLink) && !ForwardActivity.isInviteLink(pasteBoardLink))) {
            checkWhetherNeedToJoin(z, null);
        } else {
            ((ApiService) NVApplication.instance().getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", pasteBoardLink).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.account.LoginActivity.6
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) communityInviteResponse);
                    if (!communityInviteResponse.isCurrentUserJoined) {
                        LoginActivity.this.checkWhetherNeedToJoin(z, communityInviteResponse.invitationId);
                        return;
                    }
                    LoginActivity loginActivity = LoginActivity.this;
                    loginActivity.joiningCommunity = false;
                    Intent intent = loginActivity.getIntent();
                    intent.putExtra("newAccount", z);
                    LoginActivity.this.setResult(-1, intent);
                    LoginActivity.this.finish();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    LoginActivity.this.checkWhetherNeedToJoin(z, null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkWhetherNeedToJoin(final boolean z, final String str) {
        if (NVApplication.CLIENT_TYPE == 101) {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("community/info").scopeCommunityId(((ConfigService) NVApplication.instance().getService("config")).getCommunityId()).build(), new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.account.LoginActivity.7
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) fullCommunityResponse);
                    if (!fullCommunityResponse.isCurrentUserJoined) {
                        LoginActivity.this.joinCommunity(z, str);
                        return;
                    }
                    LoginActivity loginActivity = LoginActivity.this;
                    loginActivity.joiningCommunity = false;
                    Intent intent = loginActivity.getIntent();
                    intent.putExtra("newAccount", z);
                    LoginActivity.this.setResult(-1, intent);
                    LoginActivity.this.finish();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str2, apiResponse, th);
                    LoginActivity.this.joinCommunity(z, str);
                }
            });
            return;
        }
        joinCommunity(z, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinCommunity(final boolean z, final String str) {
        final ConfigService configService = (ConfigService) NVApplication.instance().getService("config");
        ApiRequest.Builder builderPath = ApiRequest.builder().post().communityId(configService.getCommunityId()).path("/community/join");
        if (str != null) {
            builderPath.param(CommunityDetailFragment.KEY_INVITATION_ID, str);
        }
        ((ApiService) NVApplication.instance().getService("api")).exec(builderPath.build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.account.LoginActivity.8
            private void stat() {
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                LoginActivity loginActivity = LoginActivity.this;
                loginActivity.joiningCommunity = false;
                if (NVApplication.CLIENT_TYPE == 101) {
                    new PrivateCommunityCheckHelper(loginActivity).sendCommunityUserInfoChanged(true);
                }
                try {
                    Community community = ((CommunityService) LoginActivity.this.getService("community")).getCommunity(configService.getCommunityId());
                    if (community != null) {
                        int i = community.templateId;
                    }
                } catch (Exception unused) {
                }
                ((AccountService) LoginActivity.this.getService("account")).updateProfile(userResponse.user, userResponse.timestamp, true);
                ((AffiliationsService) LoginActivity.this.getService("affiliations")).refresh(true);
                Intent intent = LoginActivity.this.getIntent();
                intent.putExtra("newAccount", z);
                LoginActivity.this.setResult(-1, intent);
                LoginActivity.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                LoginActivity loginActivity = LoginActivity.this;
                loginActivity.joiningCommunity = false;
                NVToast.makeText(loginActivity, str2, 1).show();
                stat();
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", configService.getCommunityId());
                intent.putExtra("joinOnly", true);
                intent.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, str);
                LoginActivity.this.startActivityForResult(intent, 2);
            }
        });
    }

    public String getPasteBoardLink() {
        ClipData primaryClip;
        CharSequence text;
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || (text = primaryClip.getItemAt(0).getText()) == null) {
            return null;
        }
        return text.toString();
    }
}
