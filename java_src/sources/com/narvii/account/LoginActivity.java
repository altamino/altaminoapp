package com.narvii.account;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.R;
import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import c.f.b.e.q5;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.vm.LoginViewModel;
import com.narvii.app.BaseNavigator;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.master.invitation.PasteBoardService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.navigator.Navigator;
import com.narvii.security.KeyStoreService;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.InterestPickerUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.util.mixpanel.Tracking;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public class LoginActivity extends NVActivity {
    static final int JOIN_REQUEST = 2;
    public static final String KEYSTORE_SERVICE_KEY = "keystore";
    public static final String LOGIN_WITH_JOIN_COMMUNITY_INVITER = "inviter";
    public static final int MOBILE_SIGN_UP_PROVIDER = 8;
    public static final int NOTIFY_ID = 4609;
    static final int NO_CODE = -1;
    public static WeakReference<LoginActivity> instance;
    public static Boolean showPhoneNumberItem = Boolean.FALSE;
    float[] accMax;
    float[] accMin;
    AccountService account;
    boolean authPromptLogged;
    String birthday;
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
    private LoginViewModel loginViewModel;
    private SensorManager mSensorManager;
    private int mc;
    private MessageDigest md;
    private SensorEventListener sel;
    boolean signupWakeup;
    boolean startingActivity;
    public Boolean statEmailVerificationSkipped;
    int statErrorCode;
    public int statMaxLoginStep;
    public int statMaxSignupSetp;
    int statType;
    AccountBaseFragment submittingFragment;
    private int ut;
    ArrayList<Integer> startingRequestCodes = new ArrayList<>();
    private boolean exists = false;
    private String username = "";
    private int httpCode = 0;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.account.LoginActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.KEYCHAIN_STATUS_CHANGED.equals(intent.getAction())) {
                LoginActivity.this.logAuthPrompt();
                if (!LoginActivity.this.account.hasAccount()) {
                    LoginActivity.this.updateViews();
                    return;
                }
                LoginActivity loginActivity = LoginActivity.this;
                loginActivity.statMaxLoginStep = 3;
                loginActivity.statMaxSignupSetp = 0;
                loginActivity.statType = 10;
                loginActivity.statErrorCode = 0;
                loginActivity.statEmailVerificationSkipped = null;
                loginActivity.crossAppFinishing = true;
                LoginActivity.this.finishWithResult(null, true, 0, null);
                LoginActivity.this.crossAppFinishing = false;
            }
        }
    };
    private final BroadcastReceiver finishPageReceiver = new BroadcastReceiver() { // from class: com.narvii.account.LoginActivity.2
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
    final Runnable updateViewsR = new Runnable() { // from class: com.narvii.account.v
        @Override // java.lang.Runnable
        public final void run() {
            this.f1767a.updateViews();
        }
    };

    public enum PromptType {
        Launch,
        Button,
        Required
    }

    private class SEL implements SensorEventListener {
        private float[] copy(float[] fArr) {
            float[] fArr2 = new float[fArr.length];
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            return fArr2;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        private SEL() {
        }

        /* JADX WARN: Code duplicated, block: B:40:0x0095 A[LOOP:0: B:39:0x0093->B:40:0x0095, LOOP_END] */
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            Sensor sensor;
            float[] fArr;
            float[] fArr2;
            float[] fArr3;
            float[] fArr4;
            int iMin;
            int i10;
            float[] fArr5 = sensorEvent.values;
            if (fArr5 == null || fArr5.length == 0 || (sensor = sensorEvent.sensor) == null) {
                return;
            }
            int type = sensor.getType();
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
                fArr = loginActivity3.accMin;
                fArr2 = loginActivity3.accMax;
            } else {
                if (type != 4) {
                    if (type != 5) {
                        fArr4 = null;
                        fArr3 = null;
                    } else {
                        LoginActivity loginActivity4 = LoginActivity.this;
                        if (loginActivity4.lightMin == null) {
                            loginActivity4.lightMin = copy(sensorEvent.values);
                        }
                        LoginActivity loginActivity5 = LoginActivity.this;
                        if (loginActivity5.lightMax == null) {
                            loginActivity5.lightMax = copy(sensorEvent.values);
                        }
                        LoginActivity loginActivity6 = LoginActivity.this;
                        fArr = loginActivity6.lightMin;
                        fArr2 = loginActivity6.lightMax;
                    }
                    iMin = Math.min(sensorEvent.values.length, fArr4.length);
                    for (i10 = 0; i10 < iMin; i10++) {
                        fArr4[i10] = Math.min(fArr4[i10], sensorEvent.values[i10]);
                        fArr3[i10] = Math.max(fArr3[i10], sensorEvent.values[i10]);
                    }
                }
                LoginActivity loginActivity7 = LoginActivity.this;
                if (loginActivity7.gyoMin == null) {
                    loginActivity7.gyoMin = copy(sensorEvent.values);
                }
                LoginActivity loginActivity8 = LoginActivity.this;
                if (loginActivity8.gyoMax == null) {
                    loginActivity8.gyoMax = copy(sensorEvent.values);
                }
                LoginActivity loginActivity9 = LoginActivity.this;
                fArr = loginActivity9.gyoMin;
                fArr2 = loginActivity9.gyoMax;
            }
            float[] fArr6 = fArr;
            fArr3 = fArr2;
            fArr4 = fArr6;
            iMin = Math.min(sensorEvent.values.length, fArr4.length);
            while (i10 < iMin) {
                fArr4[i10] = Math.min(fArr4[i10], sensorEvent.values[i10]);
                fArr3[i10] = Math.max(fArr3[i10], sensorEvent.values[i10]);
            }
        }
    }

    private byte[] getIds(int i10) {
        int iIndexOf;
        try {
            if (i10 == 2) {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                byte[] bArr = new byte[4096];
                messageDigest.update((Build.VERSION.SDK_INT + Build.VERSION.RELEASE + Build.VERSION.INCREMENTAL).getBytes());
                String[] strArr = {"/proc/cpuinfo", "/proc/partitions", "/proc/version"};
                for (int i11 = 0; i11 < 3; i11++) {
                    FileInputStream fileInputStream = new FileInputStream(strArr[i11]);
                    while (true) {
                        int i12 = fileInputStream.read(bArr);
                        if (i12 != -1) {
                            messageDigest.update(bArr, 0, i12);
                        }
                    }
                    fileInputStream.close();
                }
                FileInputStream fileInputStream2 = new FileInputStream("/proc/meminfo");
                int i13 = fileInputStream2.read(bArr);
                fileInputStream2.close();
                String str = new String(bArr, 0, i13);
                if (str.startsWith("MemTotal:") && (iIndexOf = str.indexOf(10)) != -1) {
                    messageDigest.update(str.substring(0, iIndexOf).getBytes());
                }
                return messageDigest.digest();
            }
            if (i10 == 3) {
                MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-1");
                PackageManager packageManager = getPackageManager();
                List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
                if (installedApplications.size() < 16) {
                    Iterator<ResolveInfo> it = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN"), 131072).iterator();
                    while (it.hasNext()) {
                        ActivityInfo activityInfo = it.next().activityInfo;
                        messageDigest2.update((activityInfo == null ? null : activityInfo.packageName).getBytes());
                    }
                } else {
                    Iterator<ApplicationInfo> it2 = installedApplications.iterator();
                    while (it2.hasNext()) {
                        messageDigest2.update(it2.next().packageName.getBytes());
                    }
                }
                return messageDigest2.digest();
            }
            if (i10 != 4) {
                if (i10 == 5) {
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
                if (cursorQuery.moveToLast()) {
                    int i14 = 0;
                    do {
                        messageDigest3.update((cursorQuery.getString(0) + cursorQuery.getInt(1) + cursorQuery.getInt(2)).getBytes());
                        i14++;
                        if (i14 >= 16) {
                            break;
                        }
                    } while (cursorQuery.moveToPrevious());
                }
                cursorQuery.close();
            } catch (Exception unused) {
            }
            return messageDigest3.digest();
        } catch (Exception unused2) {
        }
    }

    public static void safedk_NVActivity_startActivityForResult_1e7758655dff1587c7e4c04d4a2a3a59(NVActivity p0, Intent p1, int p5, Bundle p8) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V");
        if (p1 == null) {
            return;
        }
        super.startActivityForResult(p1, p5, p8);
    }

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        super.startActivityForResult(p1, p5);
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendingPublicKeyFailed(String str, int i10) {
        trackLoginRegister(false, i10 == 1, i10);
        NVToast.makeText(getContext(), str, 1).show();
        new LogoutHelper(this).logout(new Callback() { // from class: com.narvii.account.t
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f1760a.lambda$sendingPublicKeyFailed$1((Boolean) obj);
            }
        });
    }

    private void tryToJoinCommunity(final boolean z6) {
        this.joiningCommunity = true;
        if (!StringUtils.isTrimEmpty(getStringParam(CommunityDetailFragment.KEY_INVITATION_ID))) {
            joinCommunity(z6, getStringParam(CommunityDetailFragment.KEY_INVITATION_ID));
            return;
        }
        String pasteBoardLink = getPasteBoardLink();
        PasteBoardService pasteBoardService = (PasteBoardService) NVApplication.instance().getService("pasteBoard");
        if (StringUtils.isTrimEmpty(pasteBoardLink)) {
            joinCommunity(z6, null);
            return;
        }
        if ((pasteBoardService != null && !pasteBoardService.canCheckUrl(pasteBoardLink)) || (!ForwardActivity.isInviteCode(pasteBoardLink) && !ForwardActivity.isInviteLink(pasteBoardLink))) {
            joinCommunity(z6, null);
        } else {
            ((ApiService) NVApplication.instance().getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", pasteBoardLink).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.account.LoginActivity.5
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                    super.onFinish(apiRequest, communityInviteResponse);
                    if (!communityInviteResponse.isCurrentUserJoined) {
                        LoginActivity.this.joinCommunity(z6, communityInviteResponse.invitationId);
                        return;
                    }
                    LoginActivity loginActivity = LoginActivity.this;
                    loginActivity.joiningCommunity = false;
                    Intent intent = loginActivity.getIntent();
                    intent.putExtra("newAccount", z6);
                    LoginActivity.this.setResult(-1, intent);
                    LoginActivity.this.finish();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    LoginActivity.this.setHttpCode(Utils.getHttpCode(th));
                    LoginActivity.this.joinCommunity(z6, null);
                }
            });
        }
    }

    void finishWithResult(final AccountBaseFragment accountBaseFragment, boolean z6, final int i10, String str) {
        if (isDestoryed()) {
            return;
        }
        if (z6) {
            this.loginViewModel.sendPublicKey(new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.LoginActivity.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, String str2, @Nullable ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i11, list, str2, apiResponse, th);
                    LoginActivity.this.setHttpCode(Utils.getHttpCode(th));
                    LoginActivity.this.sendingPublicKeyFailed(str2, i10);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    LoginActivity.this.sendingPublicKeySucceed(i10, accountBaseFragment);
                }
            });
            return;
        }
        if (this.isRequesting) {
            setSubmitting(null);
            this.creatingAccount = false;
            this.isRequesting = false;
            this.statErrorCode = i10;
            trackLoginRegister(false, !this.exists, i10);
            if (str != null) {
                if (i10 / 100 != 2 || !ApiService.shouldShowErrMessage(this)) {
                    NVToast.makeText(getContext(), str, 0).show();
                    return;
                }
                if (i10 == 218) {
                    Bundle bundle = new Bundle();
                    bundle.putString("device_id", this.account.getDeviceId());
                    FirebaseAnalytics.getInstance(this).a("device_not_supported", bundle);
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setMessage(str);
                builder.setNegativeButton(R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.show();
            }
        }
    }

    @Override // com.narvii.app.NVActivity
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        SensorEventListener sensorEventListener;
        instance = null;
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager != null && (sensorEventListener = this.sel) != null) {
            sensorManager.unregisterListener(sensorEventListener);
        }
        unregisterLocalReceiver(this.finishPageReceiver);
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    void procReq(ApiRequest.Builder builder) throws NoSuchAlgorithmException, InvalidKeyException {
        int[] iArr = {2, 3, 4, 5};
        String string = getString(com.narvii.amino.master.R.string.dsc);
        int i10 = Integer.parseInt(getString(com.narvii.amino.master.R.string.dsv));
        int i11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            int i13 = iArr[i12];
            byte[] ids = getIds(i13);
            if (ids != null) {
                builder.param(a0.a.o + i13, q5.d(ids, string, i10));
            }
        }
        int[] vals = getVals();
        while (i11 < vals.length) {
            StringBuilder sb = new StringBuilder();
            sb.append("val");
            int i14 = i11 + 1;
            sb.append(i14);
            builder.param(sb.toString(), Integer.valueOf(vals[i11]));
            i11 = i14;
        }
    }

    void setExists(boolean z6) {
        this.exists = z6;
    }

    void setHttpCode(int i10) {
        this.httpCode = i10;
    }

    void setRequesting(boolean z6) {
        this.isRequesting = z6;
    }

    void setUsername(String str) {
        this.username = str;
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    @TargetApi(16)
    public void startActivityForResult(Intent intent, int i10, @Nullable Bundle bundle) {
        this.startingActivity = true;
        if (i10 != 0 && !this.startingRequestCodes.contains(Integer.valueOf(i10))) {
            this.startingRequestCodes.add(Integer.valueOf(i10));
        }
        safedk_NVActivity_startActivityForResult_1e7758655dff1587c7e4c04d4a2a3a59(this, intent, i10, bundle);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @TargetApi(16)
    public void startIntentSenderForResult(IntentSender intentSender, int i10, @Nullable Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        this.startingActivity = true;
        if (i10 != 0 && !this.startingRequestCodes.contains(Integer.valueOf(i10))) {
            this.startingRequestCodes.add(Integer.valueOf(i10));
        }
        super.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
    }

    private void executePendingOnFinishLogin(AccountBaseFragment accountBaseFragment) {
        if (accountBaseFragment != null && (accountBaseFragment instanceof LoginFragment)) {
            ((LoginFragment) accountBaseFragment).executePendingFinishRequest();
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x014f  */
    /* JADX WARN: Code duplicated, block: B:107:0x0153  */
    /* JADX WARN: Code duplicated, block: B:109:0x0162  */
    /* JADX WARN: Code duplicated, block: B:112:0x016a  */
    /* JADX WARN: Code duplicated, block: B:114:0x016e  */
    /* JADX WARN: Code duplicated, block: B:116:0x017a  */
    /* JADX WARN: Code duplicated, block: B:119:0x018f  */
    /* JADX WARN: Code duplicated, block: B:121:0x0193  */
    /* JADX WARN: Code duplicated, block: B:123:0x0197  */
    /* JADX WARN: Instruction removed from duplicated block: B:105:0x014f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:112:0x016a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:119:0x018f, please report this as an issue */
    private int[] getVals() {
        int i10;
        float f;
        int intExtra;
        int i11;
        int i12;
        int i13;
        float fMin;
        int i14;
        int i15;
        int i16;
        float fMin2;
        float f6;
        float[] fArr;
        float fMin3;
        float[] fArr2 = this.lightMin;
        float fMin4 = -20.0f;
        int i17 = 0;
        if (fArr2 == null || (fArr = this.lightMax) == null) {
            i10 = 0;
            f = 0.0f;
        } else {
            float f7 = fArr[0];
            float f10 = f7 - fArr2[0];
            if (f10 == 0.0f) {
                fMin3 = f7 == 0.0f ? -20.0f : -5.0f;
                i10 = 2;
            } else {
                fMin3 = Math.min(15.0f, f10 * 1.0f);
                i10 = fMin3 < 15.0f ? 4 : 0;
            }
            f = fMin3 + 0.0f;
        }
        if (this.accMin != null && this.accMax != null) {
            int i18 = 0;
            float f11 = 0.0f;
            while (true) {
                float[] fArr3 = this.accMax;
                if (i18 >= fArr3.length) {
                    break;
                }
                f11 += fArr3[i18] - this.accMin[i18];
                i18++;
            }
            if (f11 == 0.0f) {
                i10 |= 8;
                f6 = -30.0f;
            } else {
                float fMin5 = Math.min(30.0f, f11 * 3.0f);
                if (fMin5 < 30.0f) {
                    i10 |= 16;
                }
                f6 = fMin5;
            }
            f += f6;
        }
        float fMin6 = -10.0f;
        if (this.gyoMin != null && this.gyoMax != null) {
            float f12 = 0.0f;
            while (true) {
                float[] fArr4 = this.gyoMax;
                if (i17 >= fArr4.length) {
                    break;
                }
                f12 += fArr4[i17] - this.gyoMin[i17];
                i17++;
            }
            if (f12 == 0.0f) {
                i10 |= 32;
                fMin2 = -10.0f;
            } else {
                fMin2 = Math.min(15.0f, f12 * 10.0f);
                if (fMin2 < 15.0f) {
                    i10 |= 64;
                }
            }
            f += fMin2;
        }
        PackageManager packageManager = getPackageManager();
        if (packageManager.hasSystemFeature("android.hardware.bluetooth")) {
            f += 10.0f;
        } else {
            i10 |= 1024;
        }
        float f13 = 5.0f;
        if (packageManager.hasSystemFeature("android.hardware.bluetooth_le")) {
            f += 5.0f;
        } else {
            i10 |= 2048;
        }
        if (packageManager.hasSystemFeature("android.hardware.camera.autofocus")) {
            f += 10.0f;
        } else {
            i10 |= 4096;
        }
        if (packageManager.hasSystemFeature("android.hardware.camera.flash")) {
            f += 10.0f;
        } else {
            i10 |= 8192;
        }
        if (packageManager.hasSystemFeature("android.hardware.sensor.barometer")) {
            f += 5.0f;
        } else {
            i10 |= 16384;
        }
        if (packageManager.hasSystemFeature("android.hardware.sensor.compass")) {
            f += 10.0f;
        } else {
            i10 |= 32768;
        }
        if (packageManager.hasSystemFeature("android.hardware.sensor.gyroscope")) {
            f += 10.0f;
        } else {
            i10 |= 65536;
        }
        if (packageManager.hasSystemFeature("android.hardware.sensor.light")) {
            f += 10.0f;
        } else {
            i10 |= 131072;
        }
        if (packageManager.hasSystemFeature("android.hardware.sensor.proximity")) {
            f += 5.0f;
        } else {
            i10 |= 262144;
        }
        int intExtra2 = -1;
        try {
            Intent intentRegisterReceiver = registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            intExtra = intentRegisterReceiver.getIntExtra("level", -1);
            try {
                intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            intExtra = -1;
        }
        if (intExtra != 50 || intExtra2 != 100) {
            if (intExtra < 0 && intExtra2 < 0) {
                i11 = 2097152;
            } else if (intExtra != 100 || intExtra2 != 100) {
                f13 = 10.0f;
            }
            float f14 = f + f13;
            i12 = this.ut;
            if (i12 < 30000) {
                fMin4 = Math.min(20.0f, ((i12 - 30) * 1.0f) / 90.0f);
                i16 = fMin4 < 20.0f ? 8388608 : 4194304;
                float f15 = f14 + fMin4;
                i13 = this.ic;
                if (i13 < 2) {
                    fMin6 = Math.min(10, i13 - 2);
                    i15 = fMin6 < 10.0f ? 33554432 : 16777216;
                    float f16 = f15 + fMin6;
                    fMin = Math.min(20, (this.mc - 6) * 5);
                    if (fMin < 0.0f) {
                        i14 = fMin < 20.0f ? 134217728 : 67108864;
                        return new int[]{100 - ((int) (((f16 + fMin) * 100.0f) / 195.0f)), i10};
                    }
                    i10 |= i14;
                    return new int[]{100 - ((int) (((f16 + fMin) * 100.0f) / 195.0f)), i10};
                }
                i10 |= i15;
                float f17 = f15 + fMin6;
                fMin = Math.min(20, (this.mc - 6) * 5);
                if (fMin < 0.0f) {
                    if (fMin < 20.0f) {
                    }
                    return new int[]{100 - ((int) (((f17 + fMin) * 100.0f) / 195.0f)), i10};
                }
                i10 |= i14;
                return new int[]{100 - ((int) (((f17 + fMin) * 100.0f) / 195.0f)), i10};
            }
            i10 |= i16;
            float f18 = f14 + fMin4;
            i13 = this.ic;
            if (i13 < 2) {
                fMin6 = Math.min(10, i13 - 2);
                if (fMin6 < 10.0f) {
                }
                float f19 = f18 + fMin6;
                fMin = Math.min(20, (this.mc - 6) * 5);
                if (fMin < 0.0f) {
                    if (fMin < 20.0f) {
                    }
                    return new int[]{100 - ((int) (((f19 + fMin) * 100.0f) / 195.0f)), i10};
                }
                i10 |= i14;
                return new int[]{100 - ((int) (((f19 + fMin) * 100.0f) / 195.0f)), i10};
            }
            i10 |= i15;
            float f110 = f18 + fMin6;
            fMin = Math.min(20, (this.mc - 6) * 5);
            if (fMin < 0.0f) {
                if (fMin < 20.0f) {
                }
                return new int[]{100 - ((int) (((f110 + fMin) * 100.0f) / 195.0f)), i10};
            }
            i10 |= i14;
            return new int[]{100 - ((int) (((f110 + fMin) * 100.0f) / 195.0f)), i10};
        }
        i11 = 1048576;
        i10 |= i11;
        f13 = 0.0f;
        float f111 = f + f13;
        i12 = this.ut;
        if (i12 < 30000) {
            fMin4 = Math.min(20.0f, ((i12 - 30) * 1.0f) / 90.0f);
            if (fMin4 < 20.0f) {
            }
            float f112 = f111 + fMin4;
            i13 = this.ic;
            if (i13 < 2) {
                fMin6 = Math.min(10, i13 - 2);
                if (fMin6 < 10.0f) {
                }
                float f113 = f112 + fMin6;
                fMin = Math.min(20, (this.mc - 6) * 5);
                if (fMin < 0.0f) {
                    if (fMin < 20.0f) {
                    }
                    return new int[]{100 - ((int) (((f113 + fMin) * 100.0f) / 195.0f)), i10};
                }
                i10 |= i14;
                return new int[]{100 - ((int) (((f113 + fMin) * 100.0f) / 195.0f)), i10};
            }
            i10 |= i15;
            float f114 = f112 + fMin6;
            fMin = Math.min(20, (this.mc - 6) * 5);
            if (fMin < 0.0f) {
                if (fMin < 20.0f) {
                }
                return new int[]{100 - ((int) (((f114 + fMin) * 100.0f) / 195.0f)), i10};
            }
            i10 |= i14;
            return new int[]{100 - ((int) (((f114 + fMin) * 100.0f) / 195.0f)), i10};
        }
        i10 |= i16;
        float f115 = f111 + fMin4;
        i13 = this.ic;
        if (i13 < 2) {
            fMin6 = Math.min(10, i13 - 2);
            if (fMin6 < 10.0f) {
            }
            float f116 = f115 + fMin6;
            fMin = Math.min(20, (this.mc - 6) * 5);
            if (fMin < 0.0f) {
                if (fMin < 20.0f) {
                }
                return new int[]{100 - ((int) (((f116 + fMin) * 100.0f) / 195.0f)), i10};
            }
            i10 |= i14;
            return new int[]{100 - ((int) (((f116 + fMin) * 100.0f) / 195.0f)), i10};
        }
        i10 |= i15;
        float f117 = f115 + fMin6;
        fMin = Math.min(20, (this.mc - 6) * 5);
        if (fMin < 0.0f) {
            if (fMin < 20.0f) {
            }
            return new int[]{100 - ((int) (((f117 + fMin) * 100.0f) / 195.0f)), i10};
        }
        i10 |= i14;
        return new int[]{100 - ((int) (((f117 + fMin) * 100.0f) / 195.0f)), i10};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendingPublicKeySucceed$0(final boolean z6, boolean z10, final boolean z11) {
        boolean z12;
        EventLogProfileService eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        EventLogProfileResponse response = eventLogProfileService.getResponse();
        String error = eventLogProfileService.getError();
        if (response == null && error == null) {
            z12 = false;
        } else {
            if (!z6 && response != null && response.needTriggerInterestPicker) {
                Log.i("interestPicker", "login success directly");
                InterestPickerUtils.openInterestPicker(getContext(), response);
            }
            z12 = true;
        }
        if ((this.submittingFragment == null && !z10) || z12) {
            finishWithResult(z11);
            return;
        }
        eventLogProfileService.refreshIfIdle();
        EventLogProfileService.EventLogProfileListener eventLogProfileListener = new EventLogProfileService.EventLogProfileListener() { // from class: com.narvii.account.LoginActivity.4
            @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
            public void clearResponseWhenAccountChange() {
            }

            @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
            public void shouldShowDialog() {
            }

            @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
            public void onProfileChanged(EventLogProfileResponse eventLogProfileResponse, boolean z13) {
                if (LoginActivity.this.isFinishing() || LoginActivity.this.isDestoryed()) {
                    return;
                }
                if (!z6 && eventLogProfileResponse != null && eventLogProfileResponse.needTriggerInterestPicker) {
                    Log.i("interestPicker", "login success");
                    InterestPickerUtils.openInterestPicker(LoginActivity.this.getContext(), eventLogProfileResponse);
                }
                LoginActivity.this.finishWithResult(z11);
            }

            @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
            public void onRequestFailed(String str, boolean z13) {
                if (LoginActivity.this.isFinishing() || LoginActivity.this.isDestoryed()) {
                    return;
                }
                LoginActivity.this.finishWithResult(z11);
            }
        };
        this.eventLogProfileListener = eventLogProfileListener;
        eventLogProfileService.addListener(eventLogProfileListener);
    }

    private void setVisibilityAnim(View view, boolean z6) {
        if (z6 && view.getVisibility() != 0) {
            view.setVisibility(0);
            view.startAnimation(this.fadeIn);
        } else {
            if (z6 || view.getVisibility() != 0) {
                return;
            }
            view.setVisibility(8);
            view.startAnimation(this.fadeOut);
        }
    }

    private void setupViewModel() {
        this.loginViewModel = (LoginViewModel) new ViewModelProvider(this, LoginViewModel.factory((KeyStoreService) getService(KEYSTORE_SERVICE_KEY))).a(LoginViewModel.class);
    }

    private void trackLoginRegister(boolean z6, boolean z10, int i10) {
        MixpanelAnalytics mixpanelAnalytics = new MixpanelAnalytics(getContext());
        HashMap map = new HashMap();
        map.put("service", Tracking.CONSTANTS.OLD);
        if (!TextUtils.isEmpty(this.username)) {
            map.put("username", this.username);
        }
        if (z6) {
            if (z10) {
                mixpanelAnalytics.trackEvent(Tracking.Events.REGISTER_SUCCESS, map);
                return;
            } else {
                mixpanelAnalytics.trackEvent(Tracking.Events.LOGIN_SUCCESS, map);
                return;
            }
        }
        map.put(Tracking.Properties.ERROR_TYPE, String.valueOf(i10));
        int i11 = this.httpCode;
        if (i11 != 0) {
            map.put(Tracking.Properties.ERROR_HTTP_CODE, String.valueOf(i11));
            this.httpCode = 0;
        }
        if (z10) {
            mixpanelAnalytics.trackEvent(Tracking.Events.REGISTER_FAILURE, map);
        } else {
            mixpanelAnalytics.trackEvent(Tracking.Events.LOGIN_FAILURE, map);
        }
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        if (!this.account.hasAccount()) {
            ((LoggingService) getService("logging")).lambda$logEvent$0("SkipSignup", new Object[0]);
        } else if (!this.finishPageFinishing) {
            LocalBroadcastManager.b(this).d(new Intent(AccountService.FINISH_LOGIN_PAGE));
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

    void logAuthPrompt() {
        if (this.authPromptLogged) {
            return;
        }
        SharedPreferences sharedPreferences = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
        boolean z6 = (sharedPreferences.getString("last_email", null) == null && sharedPreferences.getString("last_phoneNumber", null) == null) ? false : true;
        if (z6 || AccountKeychain.inited(this)) {
            ((LoggingService) getService("logging")).lambda$logEvent$0("AuthPrompt", "type", getStringParam("promptType"), "newDevice", Boolean.valueOf(!z6 && AccountKeychain.readFrom(this) == null));
            this.authPromptLogged = true;
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        this.startingRequestCodes.remove(Integer.valueOf(i10));
        if (i10 == 2) {
            setResult(-1);
            finish();
        } else if (i10 == 79 && i11 == -1 && intent != null && intent.getBooleanExtra("accountVerified", false)) {
            Fragment fragmentL0 = getSupportFragmentManager().l0(com.narvii.amino.master.R.id.frame);
            if (fragmentL0 instanceof LoginFragment) {
                ((LoginFragment) fragmentL0).sendLoginRequest();
            }
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
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
            int iU0 = getSupportFragmentManager().u0();
            if (iU0 > 0) {
                String name = getSupportFragmentManager().t0(iU0 - 1).getName();
                if (name != null) {
                    ActivityResultCaller activityResultCallerM0 = getSupportFragmentManager().m0(name);
                    if ((activityResultCallerM0 instanceof FragmentOnBackListener) && ((FragmentOnBackListener) activityResultCallerM0).onBackPressed(this)) {
                        return;
                    }
                }
            } else {
                LoginFragment loginFragment = (LoginFragment) getSupportFragmentManager().m0("login");
                if (loginFragment != null && loginFragment.onBackPressed(this)) {
                    return;
                }
            }
        }
        super.onBackPressed();
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

    /* JADX INFO: Access modifiers changed from: private */
    public void joinCommunity(final boolean z6, final String str) {
        final ConfigService configService = (ConfigService) NVApplication.instance().getService("config");
        ApiRequest.Builder builderPath = ApiRequest.builder().post().communityId(configService.getCommunityId()).path("/community/join");
        if (str != null) {
            builderPath.param(CommunityDetailFragment.KEY_INVITATION_ID, str);
        }
        ((ApiService) NVApplication.instance().getService("api")).exec(builderPath.build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.account.LoginActivity.6
            public static void safedk_LoginActivity_startActivityForResult_e7d0f7737db605ae5c97d1eb4ca0ed2e(LoginActivity p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/account/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            private void stat() {
                ((StatisticsService) LoginActivity.this.getService("statistics")).event(null).userProp("Communities Joined Total", 1).userProp("Communities Joined", new int[]{((ConfigService) NVApplication.instance().getService("config")).getCommunityId()});
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                LoginActivity.this.setHttpCode(Utils.getHttpCode(th));
                LoginActivity loginActivity = LoginActivity.this;
                loginActivity.joiningCommunity = false;
                NVToast.makeText(loginActivity, str2, 1).show();
                stat();
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", configService.getCommunityId());
                intent.putExtra("joinOnly", true);
                intent.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, str);
                safedk_LoginActivity_startActivityForResult_e7d0f7737db605ae5c97d1eb4ca0ed2e(LoginActivity.this, intent, 2);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) {
                int i10 = 0;
                LoginActivity.this.joiningCommunity = false;
                try {
                    Community community = ((CommunityService) LoginActivity.this.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(configService.getCommunityId());
                    if (community != null) {
                        i10 = community.templateId;
                    }
                } catch (Exception unused) {
                }
                MixpanelAnalytics mixpanelAnalytics = new MixpanelAnalytics(LoginActivity.this.getContext());
                HashMap map = new HashMap();
                map.put("source", "Standalone");
                map.put("type", "join");
                map.put("community_id", String.valueOf(configService.getCommunityId()));
                map.put("template_id", String.valueOf(i10));
                mixpanelAnalytics.trackEvent("community_join", map);
                stat();
                ((AccountService) LoginActivity.this.getService("account")).updateProfile(userResponse.user, userResponse.timestamp, true);
                ((AffiliationsService) LoginActivity.this.getService("affiliations")).refresh(true);
                Intent intent = LoginActivity.this.getIntent();
                intent.putExtra("newAccount", z6);
                LoginActivity.this.setResult(-1, intent);
                LoginActivity.this.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendingPublicKeyFailed$1(Boolean bool) {
        if (!bool.booleanValue()) {
            NVToast.makeText(this, getString(com.narvii.amino.master.R.string.account_logout_fail_message), 0).show();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:42:0x0096  */
    public void sendingPublicKeySucceed(int i10, AccountBaseFragment accountBaseFragment) {
        final boolean z6;
        final boolean z10;
        String str;
        String str2;
        StatisticsEventBuilder statisticsEventBuilderSource;
        Intent intent;
        executePendingOnFinishLogin(accountBaseFragment);
        if (i10 == 1) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (getIntent() != null && getIntent().getExtras() != null) {
            z10 = getIntent().getExtras().getBoolean("skipInterestPicker", false);
        } else {
            z10 = false;
        }
        if (getIntent() != null && getIntent().getExtras() != null && (intent = (Intent) getIntent().getExtras().getParcelable("loginIntent")) != null) {
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
        }
        final boolean z11 = this.crossAppFinishing;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f1762a.lambda$sendingPublicKeySucceed$0(z10, z11, z6);
            }
        }, 120L);
        int i11 = this.statType;
        if (i11 == 1) {
            str = "Phone Number";
        } else if (i11 == 2) {
            str = "Email";
        } else if (i11 == 3) {
            str = "Facebook";
        } else if (i11 == 4) {
            str = "Google";
        } else if (accountBaseFragment == null && i11 == 10) {
            str = "Auto Login";
        } else {
            str = null;
        }
        if (!z6) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 == 4) {
                            str2 = "google";
                        } else {
                            str2 = null;
                        }
                    } else {
                        str2 = "facebook";
                    }
                } else {
                    str2 = "email";
                }
            } else {
                str2 = "phone";
            }
        } else {
            str2 = null;
        }
        if (str2 != null) {
            LogEvent.builder(NVApplication.instance()).allowNoPage().actClick().actSemantic(ActSemantic.loginSuccess).extraParam("loginType", str2).send();
        }
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        if (z6) {
            statisticsEventBuilderSource = statisticsService.event("Registration Succeed").priority(10).param(EventConstants.CommentPost.TYPE, str).source(getStringParam(ExternalPostPreviewFragment.SOURCE));
            Boolean bool = this.statEmailVerificationSkipped;
            if (bool != null) {
                statisticsEventBuilderSource.param("Email Verification Skipped", bool.booleanValue()).userProp("Email Verification Skipped", this.statEmailVerificationSkipped.booleanValue());
            }
            statisticsEventBuilderSource.userProp("Initial Registration Method", str);
        } else {
            statisticsEventBuilderSource = statisticsService.event("Login Succeed").priority(10).param(EventConstants.CommentPost.TYPE, str).source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
        if (getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY) != null) {
            statisticsEventBuilderSource.param("Referral", "Invite Code");
        } else {
            SharedPreferences sharedPreferences = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
            if ("Standalone App".equals(sharedPreferences.getString("trackingId", null)) && !sharedPreferences.getBoolean("trackingIdReged", false)) {
                statisticsEventBuilderSource.param("Referral", "Standalone");
                sharedPreferences.edit().putBoolean("trackingIdReged", true).apply();
            }
        }
        trackLoginRegister(true, z6, -1);
        FirebaseLogManager.logEvent(this, statisticsEventBuilderSource);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        super.completeLogEvent(builder);
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

    public String getPasteBoardLink() {
        ClipData primaryClip;
        CharSequence text;
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || (text = primaryClip.getItemAt(0).getText()) == null) {
            return null;
        }
        return text.toString();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0078  */
    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        String myScheme;
        boolean z6;
        super.onCreate(bundle);
        getApplicationContext();
        instance = new WeakReference<>(this);
        this.account = (AccountService) getService("account");
        setContentView(com.narvii.amino.master.R.layout.account_login_signup_frame);
        AndroidBug5497Workaround.assistActivity(this);
        this.fadeOut = AnimationUtils.loadAnimation(this, R.anim.fade_out);
        this.fadeIn = AnimationUtils.loadAnimation(this, R.anim.fade_in);
        Navigator navigator = (Navigator) getService("navigator");
        if (navigator instanceof BaseNavigator) {
            myScheme = ((BaseNavigator) navigator).getMyScheme();
        } else {
            myScheme = "aminoapp";
        }
        if (getIntent().getData() != null) {
            if (getIntent().getData().toString().equals(myScheme + "://login")) {
                z6 = true;
            } else {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        if (this.account.hasAccount() && z6) {
            finishWithResult(false);
        }
        NVImageView nVImageView = (NVImageView) findViewById(com.narvii.amino.master.R.id.bg);
        if (nVImageView != null) {
            nVImageView.setBackgroundResource(com.narvii.amino.master.R.drawable.master_login_signup_bg);
        }
        if (bundle == null) {
            if (getIntent().getData() != null && !TextUtils.isEmpty(getStringParam(GlobalProfileFragment.KEY_USER)) && !TextUtils.isEmpty(getStringParam("pass"))) {
                getSupportFragmentManager().q().b(com.narvii.amino.master.R.id.frame, new UrlLoginFragment()).j();
            } else {
                getSupportFragmentManager().q().e(new SignupLocationFragment(), "signupLocation").j();
                getSupportFragmentManager().q().c(com.narvii.amino.master.R.id.frame, new LoginFragment(), "login").j();
            }
        } else {
            this.authPromptLogged = bundle.getBoolean("authPromptLogged");
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("startingRequestCodes");
            this.startingRequestCodes = integerArrayList;
            if (integerArrayList == null) {
                this.startingRequestCodes = new ArrayList<>();
            }
        }
        setupViewModel();
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.signupWakeup = intent.getBooleanExtra("signupWakeup", false) | this.signupWakeup;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.startingActivity = false;
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("authPromptLogged", this.authPromptLogged);
        bundle.putIntegerArrayList("startingRequestCodes", this.startingRequestCodes);
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        String str;
        StatisticsEventBuilder statisticsEventBuilderEvent;
        super.onStop();
        if (!this.startingActivity && !this.account.hasAccount()) {
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            int i10 = this.statType;
            String str2 = "Google";
            if (i10 == 1) {
                str = "Phone Number";
            } else if (i10 == 2) {
                str = "Email";
            } else if (i10 == 3) {
                str = "Facebook";
            } else if (i10 == 4) {
                str = "Google";
            } else {
                str = null;
            }
            int iMax = Math.max(this.statMaxLoginStep, this.statMaxSignupSetp);
            if (iMax == 1) {
                str2 = "Age Gating";
            } else if (iMax == 3) {
                str2 = "Phone Number";
            } else if (iMax == 4) {
                str2 = "Email";
            } else if (iMax == 5) {
                str2 = "Facebook";
            } else if (iMax != 6) {
                if (iMax == 10) {
                    str2 = "Email Verification Code";
                } else if (iMax == 16) {
                    str2 = "Phone or Email";
                } else if (iMax == 20) {
                    str2 = "Password";
                } else if (iMax == 30) {
                    str2 = "Profile";
                } else {
                    str2 = "Zero";
                }
            }
            if (this.statMaxLoginStep > 0) {
                statisticsEventBuilderEvent = statisticsService.event("Login Quit");
            } else {
                statisticsEventBuilderEvent = statisticsService.event("Registration Quit");
            }
            statisticsEventBuilderEvent.priority(10).param(EventConstants.CommentPost.TYPE, str).param("Step", str2).source(getStringParam(ExternalPostPreviewFragment.SOURCE));
            int i11 = this.statErrorCode;
            if (i11 != 0) {
                statisticsEventBuilderEvent.param("Error Code", i11);
            }
        }
        for (Fragment fragment : getSupportFragmentManager().B0()) {
            if ((fragment instanceof EmailSignupFragment) || (fragment instanceof SignUpAddProfileFragment)) {
                return;
            }
        }
    }

    void setCreatingAccount(boolean z6) {
        setRequesting(z6);
    }

    void updateViews() {
        boolean z6;
        String progressText;
        View viewFindViewById = findViewById(com.narvii.amino.master.R.id.frame);
        View viewFindViewById2 = findViewById(com.narvii.amino.master.R.id.submit_frame);
        TextView textView = (TextView) viewFindViewById2.findViewById(com.narvii.amino.master.R.id.progress_text);
        if (this.submittingFragment == null && this.account.getKeychainStatus() <= 0) {
            z6 = false;
        } else {
            z6 = true;
        }
        setVisibilityAnim(viewFindViewById, !z6);
        setVisibilityAnim(viewFindViewById2, z6);
        AccountBaseFragment accountBaseFragment = this.submittingFragment;
        if (accountBaseFragment == null) {
            progressText = null;
        } else {
            progressText = accountBaseFragment.getProgressText();
        }
        textView.setText(progressText);
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i10) {
        this.startingActivity = true;
        if (i10 != 0 && !this.startingRequestCodes.contains(Integer.valueOf(i10))) {
            this.startingRequestCodes.add(Integer.valueOf(i10));
        }
        safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, i10);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i10, @Nullable Intent intent, int i11, int i12, int i13) throws IntentSender.SendIntentException {
        this.startingActivity = true;
        if (i10 != 0 && !this.startingRequestCodes.contains(Integer.valueOf(i10))) {
            this.startingRequestCodes.add(Integer.valueOf(i10));
        }
        super.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishWithResult(boolean z6) {
        Intent intent = getIntent();
        intent.putExtra("newAccount", z6);
        setResult(-1, intent);
        finish();
    }
}
