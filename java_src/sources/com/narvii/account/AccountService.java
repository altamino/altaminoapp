package com.narvii.account;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import androidx.core.app.NotificationCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.Scopes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.liveramp.LiveRampHelper;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.influencer.FanClub;
import com.narvii.model.CheckInHistory;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BasicProfile;
import com.narvii.model.api.BasicProfileResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.post.BackgroundUtils;
import com.narvii.post.DraftManager;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.stats.StatsService;
import com.narvii.wallet.optinads.OptinAds;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AccountService {
    public static final String ACTION_ACCOUNT_CHANGED = "com.narvii.action.ACCOUNT_CHANGED";
    public static final String ACTION_SID_CHANGED = "com.narvii.action.SID_CHANGED";
    public static final String FINISH_LOGIN_PAGE = "com.narvii.action.FINISH_LOGIN_PAGE";
    public static final int GENDER_TYPE_FEMALE = 2;
    public static final int GENDER_TYPE_MALE = 1;
    public static final int GENDER_TYPE_OTHER = 255;
    public static final int GENDER_TYPE_UNKNOWN = 0;
    public static final int GLOBAL_USER_PROFILE = 0;
    public static final int KEYCHAIN_CHECKING = 1;
    public static final int KEYCHAIN_FAILED = -2;
    public static final int KEYCHAIN_IDLE = 0;
    public static final int KEYCHAIN_LOGINING = 2;
    public static final String KEYCHAIN_STATUS_CHANGED = "com.narvii.action.KEYCHAIN_STATUS_CHANGED";
    public static final int KEYCHAIN_TIMEOUT = -1;
    public static final String PREFS_AGE = "age";
    public static final String PREFS_GENDER = "gender";
    public static final String PREFS_LIVE_ELIGIBILITY = "live_eligibility";
    public static final String PREFS_LIVE_ELIGIBLE_AGE = "live_eligible_age";
    public static final String PREFS_LIVE_LAST_TIME_CHECK_OUT = "live_last_time_checkout";
    public static final String TAG = "AccountService";
    public static final int TYPE_DISABLED = 0;
    public static final int TYPE_INCUBATOR_AUXILIARY = 3;
    public static final int TYPE_INCUBATOR_GLOBAL = 1;
    public static final int TYPE_INCUBATOR_PER_COMMUNITY = 2;
    public static final int TYPE_STANDALONE_COMMUNITY = 4;
    private int communityId;
    private NVContext context;
    private File dir;
    private int keychainStatus;
    private SharedPreferences prefs;
    private PreferencesHelper prefsHelper;
    private int type;
    private final EventDispatcher<ProfileListener> listeners = new EventDispatcher<>();
    private final EventDispatcher<CommunityReminderChangeInGlobalListener> communityReminderDispatcher = new EventDispatcher<>();
    private final EventDispatcher<FanClubListListener> fanClubListListeners = new EventDispatcher<>();

    public interface CommunityReminderChangeInGlobalListener {
        void onNoticeCountChanged(int i10, int i11);

        void onNotificationCountChanged(int i10, int i11);
    }

    public interface FanClubListListener {
        void onFanClubListChanged(List<FanClub> list);
    }

    public static abstract class ProfileListener {
        public void onCheckInChanged(boolean z6, int i10) {
        }

        public void onCheckInHistoryChanged(CheckInHistory checkInHistory) {
        }

        public void onNoticeCountChanged(int i10) {
        }

        public void onNotificationCountChanged(int i10) {
        }

        public void onOnlineStatusChanged(int i10) {
        }

        public abstract void onProfileChanged(int i10, User user);
    }

    private boolean crossAppsRead() {
        int i10 = this.type;
        return i10 == 1 || i10 == 4 || i10 == 3;
    }

    private boolean crossAppsWrite() {
        int i10 = this.type;
        return i10 == 1 || i10 == 4 || i10 == 2;
    }

    private String getUserProfileKey() {
        return getUserProfileKey(this.communityId);
    }

    protected synchronized void crossAppsCheck() {
        try {
            if (crossAppsRead()) {
                AccountKeychain keychain = getKeychain();
                String userId = getUserId();
                if (this.type == 3) {
                    dispatchKeychainStatus(1);
                    AccountKeychain accountKeychainCrossAppReadMasterKeychain = crossAppReadMasterKeychain();
                    if (accountKeychainCrossAppReadMasterKeychain != null) {
                        if (keychain != null) {
                            if (Utils.isEquals(accountKeychainCrossAppReadMasterKeychain.email, keychain.email)) {
                                if (!Utils.isEquals(accountKeychainCrossAppReadMasterKeychain.secret, keychain.secret)) {
                                }
                            }
                        }
                        accountKeychainCrossAppReadMasterKeychain.writeTo(this.context.getContext());
                    } else {
                        AccountKeychain.remove(this.context.getContext());
                    }
                    keychain = accountKeychainCrossAppReadMasterKeychain;
                } else if (keychain == null && userId == null && !AccountKeychain.inited(this.context.getContext())) {
                    dispatchKeychainStatus(1);
                    keychain = crossAppsReadKeychain();
                    if (keychain != null) {
                        keychain.writeTo(this.context.getContext());
                    } else {
                        AccountKeychain.remove(this.context.getContext());
                    }
                }
                if (keychain != null || userId != null) {
                    if (keychain != null || userId == null) {
                        if (keychain == null || userId != null) {
                            if (!Utils.isEquals(userId, keychain.uid)) {
                                Log.w("keychain does not match uid, try to switch user");
                                logout(false);
                                keychain.writeTo(this.context.getContext());
                            }
                        }
                        Log.i("cross-apps login using " + keychain.email);
                        ApiService apiService = new ApiService(this.context);
                        ApiRequest.Builder builder = ApiRequest.builder();
                        builder.https().post().global().path("/auth/login");
                        builder.param(a0.a.o, getDeviceId());
                        builder.param("email", keychain.email);
                        builder.param("secret", keychain.secret);
                        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
                        builder.param("action", "auto");
                        final AccountKeychain accountKeychainM42clone = keychain.m42clone();
                        apiService.exec(builder.build(), new AccountResponseListener(this.context) { // from class: com.narvii.account.AccountService.12
                            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
                            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                                super.onFinish(apiRequest, accountResponse);
                                AccountKeychain accountKeychain = accountKeychainM42clone;
                                accountKeychain.uid = accountResponse.account.uid;
                                accountKeychain.writeTo(AccountService.this.context.getContext());
                                AccountService.this.dispatchKeychainStatus(0);
                                LiveRampHelper.setLRUserEmail(accountKeychainM42clone.email);
                                Log.w("cross-apps login succeed with " + accountKeychainM42clone.email);
                            }

                            @Override // com.narvii.util.http.ApiResponseListener
                            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                                if (i10 / 100 == 2) {
                                    AccountKeychain.remove(AccountService.this.context.getContext());
                                }
                                if (i10 == 0) {
                                    AccountService.this.dispatchKeychainStatus(-1);
                                } else {
                                    AccountService.this.dispatchKeychainStatus(-2);
                                }
                                Log.w("cross-apps login fail");
                            }
                        });
                        Log.i("cross-apps login start..");
                        dispatchKeychainStatus(2);
                    }
                    Log.i("cross-apps logout");
                    dispatchKeychainStatus(2);
                    logout(false);
                }
                dispatchKeychainStatus(0);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public File getDir() {
        return this.dir;
    }

    public FanClub getFanClub(String str) {
        User userProfile;
        List<FanClub> list;
        if (isMasterGlobal() || (userProfile = getUserProfile()) == null || (list = userProfile.fanClubList) == null) {
            return null;
        }
        return (FanClub) Utils.searchForId(list, str);
    }

    public User getGlobalUserProfile() {
        return getUserProfile(0);
    }

    public int getKeychainStatus() {
        return this.keychainStatus;
    }

    public int getNoticeCount() {
        return getNoticeCount(this.communityId);
    }

    public int getNotificationCount() {
        return getNotificationCount(this.communityId);
    }

    public SharedPreferences getPrefs() {
        return this.prefs;
    }

    public String getPrefsKey(String str) {
        return getPrefsKey(this.communityId, str);
    }

    public EventDispatcher<ProfileListener> getProfileDispatcher() {
        return this.listeners;
    }

    public User getUserProfile() {
        return getUserProfile(this.communityId);
    }

    public void updateAminoId(String str, String str2, boolean z6) {
        User user = (User) getUserProfile(0).m1622clone();
        if (!Utils.isEquals(getAminoId(), str) || isAminoIdEditable() != z6) {
            ObjectNode accountJson = getAccountJson();
            if (accountJson == null) {
                return;
            }
            accountJson.put("aminoId", str);
            accountJson.put("aminoIdEditable", z6);
            updateAccountJsonSilence(accountJson.toString());
        }
        if (Utils.isEquals(user.aminoId, str)) {
            return;
        }
        user.aminoId = str;
        updateProfile(user, str2, 0, true);
    }

    public void updateCheckInHistoryInfo(CheckInHistory checkInHistory, String str, boolean z6) {
        updateCheckInHistoryInfo(checkInHistory, DateTimeFormatter.parseISO8601(str).getTime(), z6);
    }

    public void updateCheckInInfo(final boolean z6, final int i10, long j6, boolean z10) {
        boolean z11;
        if (hasAccount() && Utils.shouldUpdateTimestamp(j6, this.prefs.getLong(getPrefsKey("checkIn_t"), 0L))) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey("checkIn_t"), j6);
            boolean z12 = true;
            if (z6 != this.prefs.getBoolean(getPrefsKey("checkInToday"), false)) {
                editorEdit.putBoolean(getPrefsKey("checkInToday"), z6);
                z11 = true;
            } else {
                z11 = false;
            }
            if (i10 != this.prefs.getInt(getPrefsKey("checkInDays"), 0)) {
                editorEdit.putInt(getPrefsKey("checkInDays"), i10);
            } else {
                z12 = z11;
            }
            editorEdit.apply();
            if (z12 && z10) {
                getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.5
                    @Override // com.narvii.util.Callback
                    public void call(ProfileListener profileListener) {
                        profileListener.onCheckInChanged(z6, i10);
                    }
                });
            }
        }
    }

    public void updateNoticeCount(int i10, String str, boolean z6) {
        updateNoticeCount(this.communityId, i10, str, z6);
    }

    public void updateNotificationCount(int i10, long j6, boolean z6) {
        updateNotificationCount(this.communityId, i10, j6, z6);
    }

    public void updateOnlineStatus(final int i10, long j6, boolean z6) {
        if (hasAccount() && i10 != 0 && Utils.shouldUpdateTimestamp(j6, this.prefs.getLong(getPrefsKey("onlineStatus_t"), 0L))) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey("onlineStatus_t"), j6);
            boolean z10 = false;
            if (i10 != this.prefs.getInt(getPrefsKey("onlineStatus"), 0)) {
                editorEdit.putInt(getPrefsKey("onlineStatus"), i10);
                z10 = true;
            }
            editorEdit.apply();
            if (z10 && z6) {
                getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.7
                    @Override // com.narvii.util.Callback
                    public void call(ProfileListener profileListener) {
                        profileListener.onOnlineStatusChanged(i10);
                    }
                });
            }
        }
    }

    public void updateProfile(User user, String str, boolean z6) {
        updateProfile(user, DateTimeFormatter.parseISO8601(str).getTime(), z6);
    }

    public enum LiveEligibleStatus {
        LIVE_ELIGIBLE,
        UNDERAGED,
        BIRTHDATE_INCOMPLETE,
        UNDEFINED;

        public Integer age = null;

        LiveEligibleStatus() {
        }
    }

    private AccountKeychain crossAppsReadKeychain() {
        String str;
        int i10;
        String str2;
        String str3;
        PackageUtils.AminoPackage aminoPackage;
        int i11;
        int i12;
        String str4 = null;
        if (!crossAppsRead()) {
            return null;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ContentResolver contentResolver = this.context.getContext().getContentResolver();
        String[] strArr = {"EMAIL", "SECRET"};
        PackageUtils packageUtils = new PackageUtils(this.context.getContext());
        String packageName = this.context.getContext().getPackageName();
        PackageUtils.AminoPackage[] aminoPackageArrListAminoPackages = packageUtils.listAminoPackages();
        int length = aminoPackageArrListAminoPackages.length;
        int i13 = 0;
        Exception e = null;
        AccountKeychain accountKeychain = null;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (true) {
            if (i14 >= length) {
                str = str4;
                i10 = i13;
                str2 = str;
                break;
            }
            PackageUtils.AminoPackage aminoPackage2 = aminoPackageArrListAminoPackages[i14];
            if (packageName.equals(aminoPackage2.packageName)) {
                i11 = i14;
                i12 = length;
                str = str4;
                i10 = i13;
            } else {
                try {
                    StringBuilder sb = new StringBuilder(46);
                    sb.append("content://");
                    sb.append(packageUtils.getKeychainAuthorities(aminoPackage2));
                    sb.append("/keychain");
                    i11 = i14;
                    i10 = i13;
                    i12 = length;
                    try {
                        Cursor cursorQuery = contentResolver.query(Uri.parse(sb.toString()), strArr, null, null, null);
                        if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                            str = null;
                            i15++;
                        } else {
                            i16++;
                            String string = cursorQuery.getString(i10);
                            String string2 = cursorQuery.getString(1);
                            if (TextUtils.isEmpty(string)) {
                                str = null;
                                accountKeychain = null;
                            } else {
                                str = null;
                                try {
                                    accountKeychain = new AccountKeychain(null, string, string2);
                                } catch (Exception e2) {
                                    e = e2;
                                    aminoPackage = aminoPackage2;
                                }
                            }
                            try {
                                str2 = aminoPackage.packageName;
                                break;
                            } catch (Exception e6) {
                                e = e6;
                            }
                        }
                    } catch (Exception e7) {
                        e = e7;
                        aminoPackage = aminoPackage2;
                        str = null;
                    }
                } catch (Exception e10) {
                    e = e10;
                    aminoPackage = aminoPackage2;
                    i11 = i14;
                    i12 = length;
                    str = str4;
                    i10 = i13;
                }
                i17++;
                Log.w("cross-apps get fail from package " + aminoPackage.packageName, e);
            }
            i13 = i10;
            str4 = str;
            length = i12;
            i14 = i11 + 1;
        }
        AccountKeychain accountKeychain2 = accountKeychain;
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        if (i16 > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("cross-apps get ");
            sb2.append(accountKeychain2 == null ? str : accountKeychain2.email);
            sb2.append(" from package ");
            sb2.append(str2);
            sb2.append(" in ");
            sb2.append(jElapsedRealtime2);
            sb2.append("ms");
            Log.i(sb2.toString());
        } else {
            Log.i("cross-apps get no account keychain in " + jElapsedRealtime2 + "ms");
        }
        if (e != null) {
            str3 = e.getClass().getSimpleName() + " " + e.getMessage();
        } else {
            str3 = str;
        }
        LoggingService loggingService = (LoggingService) this.context.getService("logging");
        Object[] objArr = new Object[10];
        objArr[i10] = "method";
        objArr[1] = "read";
        objArr[2] = "success";
        objArr[3] = Integer.valueOf(i16);
        objArr[4] = "fails";
        objArr[5] = Integer.valueOf(i15);
        objArr[6] = "errors";
        objArr[7] = Integer.valueOf(i17);
        objArr[8] = AccountNotice.LEVEL_MESSAGE;
        objArr[9] = str3;
        loggingService.logEvent("AndroidKeychain", objArr);
        return accountKeychain2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchKeychainStatus(int i10) {
        if (i10 != this.keychainStatus) {
            this.keychainStatus = i10;
            Intent intent = new Intent(KEYCHAIN_STATUS_CHANGED);
            intent.putExtra(NotificationCompat.CATEGORY_STATUS, i10);
            LocalBroadcastManager.b(this.context.getContext()).d(intent);
        }
    }

    private String getUserProfileKey(int i10) {
        return "profile_" + i10;
    }

    private boolean isMasterGlobal() {
        return NVApplication.CLIENT_TYPE == 100 && this.communityId == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$logout$2() {
        LocalBroadcastManager.b(this.context.getContext()).d(new Intent(ACTION_ACCOUNT_CHANGED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateProfile$1(User user, FanClubListListener fanClubListListener) {
        fanClubListListener.onFanClubListChanged(user.fanClubList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAgeAndGender(BasicProfileResponse basicProfileResponse) {
        String str;
        BasicProfile basicProfile = basicProfileResponse.basicProfile;
        if (basicProfile.age > 0) {
            int i10 = basicProfile.gender;
            if (i10 != 1) {
                str = i10 != 2 ? "nonBinary" : "female";
            } else {
                str = "male";
            }
            this.prefs.edit().putInt(PREFS_AGE, basicProfileResponse.basicProfile.age).apply();
            this.prefs.edit().putString("gender", str).apply();
            FirebaseAnalytics.getInstance(this.context.getContext()).c(PREFS_AGE, String.valueOf(basicProfileResponse.basicProfile.age));
        }
    }

    public void addCommunityReminderChangeListener(CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener) {
        this.communityReminderDispatcher.addListener(communityReminderChangeInGlobalListener);
    }

    public void addFanClubListListener(FanClubListListener fanClubListListener) {
        this.fanClubListListeners.addListener(fanClubListListener);
    }

    public void addProfileListener(ProfileListener profileListener) {
        this.listeners.addListener(profileListener);
    }

    public void deleteFanClub(int i10, FanClub fanClub) {
        User userProfile;
        List<FanClub> list;
        if (i10 == 0 || fanClub == null || (userProfile = getUserProfile()) == null || (list = userProfile.fanClubList) == null || Utils.removeId(list, fanClub.targetUid) <= 0) {
            return;
        }
        updateProfile(userProfile, this.prefs.getLong(getPrefsKey(i10, "profile_t"), 0L), i10, false);
    }

    public String getAminoId() {
        return getAccountValue("aminoId");
    }

    public String getEmail() {
        return getAccountValue("email");
    }

    public AccountKeychain getKeychain() {
        return AccountKeychain.readFrom(this.context.getContext());
    }

    public int getNoticeCount(int i10) {
        if (hasAccount()) {
            return this.prefs.getInt(getPrefsKey(i10, "noticeCount"), 0);
        }
        return 0;
    }

    public int getNotificationCount(int i10) {
        if (hasAccount()) {
            return this.prefs.getInt(getPrefsKey(i10, "notificationCount"), 0);
        }
        return 0;
    }

    public int getOnlineStatus() {
        return this.prefs.getInt(getPrefsKey("onlineStatus"), 0);
    }

    public String getPhoneNumber() {
        return getAccountValue(HintConstants.AUTOFILL_HINT_PHONE_NUMBER);
    }

    public String getPrefsKey(int i10, String str) {
        int i11 = this.type;
        if (i11 == 2) {
            return str + "_" + i10;
        }
        if (i11 != 1 || i10 == 0) {
            return str;
        }
        return str + "_" + i10;
    }

    public String getSessionID() {
        return this.prefs.getString(CmcdConfiguration.KEY_SESSION_ID, null);
    }

    public User getUserProfile(int i10) {
        if (!hasAccount()) {
            return null;
        }
        String string = this.prefs.getString(getUserProfileKey(i10), null);
        if (string == null) {
            string = this.prefs.getString(getUserProfileKey(0), null);
        }
        if (string == null) {
            string = this.prefs.getString("account", null);
        }
        User user = (User) JacksonUtils.readAs(string, User.class);
        return user == null ? new User() : user;
    }

    public boolean hasAccount() {
        return this.prefs.getString(CmcdConfiguration.KEY_SESSION_ID, null) != null;
    }

    public void hasBirthday(final Callback<Boolean> callback) {
        if (this.prefs.contains(PREFS_AGE)) {
            callback.call(Boolean.TRUE);
        } else {
            ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("/persona/profile/basic").build(), new ApiResponseListener<BasicProfileResponse>(BasicProfileResponse.class) { // from class: com.narvii.account.AccountService.13
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, BasicProfileResponse basicProfileResponse) throws Exception {
                    super.onFinish(apiRequest, basicProfileResponse);
                    AccountService.this.saveAgeAndGender(basicProfileResponse);
                    callback.call(Boolean.valueOf(AccountService.this.prefs.contains(AccountService.PREFS_AGE)));
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    callback.call(null);
                }
            });
        }
    }

    public boolean isFacebookConnected() {
        return !TextUtils.isEmpty(getAccountValue("facebookID"));
    }

    public boolean isGoogleConnected() {
        return !TextUtils.isEmpty(getAccountValue("googleID"));
    }

    public void logout(boolean z6) {
        Log.i("logout...");
        boolean z10 = false;
        if (z6 && AccountKeychain.readFrom(this.context.getContext()) != null) {
            z10 = true;
        }
        DraftManager.archiveDrafts(this.context, true);
        DraftManager.removeOldDrafts(this.context.getContext());
        Utils.deleteDir(getDir());
        AccountKeychain.remove(this.context.getContext());
        StatsService statsService = (StatsService) this.context.getService("stats");
        if (statsService != null) {
            statsService.clearAll();
        }
        this.prefs.edit().clear().commit();
        Utils.post(new Runnable() { // from class: com.narvii.account.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f1701a.lambda$logout$2();
            }
        });
        if (z10) {
            crossAppsWriteKeychain(null, null);
        }
    }

    public int optinAdsLevel() {
        if (!((AccountService) this.context.getService("account")).hasAccount() || OptinAds.forceAds()) {
            return 2;
        }
        int iNodeInt = JacksonUtils.nodeInt(getAccountJson(), -1, "extensions", "adsLevel");
        if (iNodeInt < 0) {
            return JacksonUtils.nodeBoolean(getAccountJson(), "extensions", "adsEnabled") ? 2 : 0;
        }
        return iNodeInt;
    }

    public void removeCommunityReminderChangeListener(CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener) {
        this.communityReminderDispatcher.removeListener(communityReminderChangeInGlobalListener);
    }

    public void removeFanClubListListener(FanClubListListener fanClubListListener) {
        this.fanClubListListeners.removeListener(fanClubListListener);
    }

    public void removeProfileListener(ProfileListener profileListener) {
        this.listeners.removeListener(profileListener);
    }

    public void saveDevOptions(String str) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        editorEdit.putString("dev-option", str).apply();
    }

    public void setKeychain(String str, String str2, String str3) throws Throwable {
        AccountKeychain accountKeychain = new AccountKeychain(str, str2, str3);
        AccountKeychain keychain = getKeychain();
        if (keychain == null || !keychain.equals(accountKeychain)) {
            accountKeychain.writeTo(this.context.getContext());
            if (crossAppsWrite()) {
                if (keychain != null && Utils.isStringEquals(str2, keychain.email) && Utils.isStringEquals(str3, keychain.secret)) {
                    return;
                }
                crossAppsWriteKeychain(str2, str3);
            }
        }
    }

    public void updateAccountJsonSilence(String str) {
        this.prefs.edit().putString("account", str).commit();
    }

    public void updateAccountSilently(User user) {
        this.prefs.edit().putString("account", JacksonUtils.writeAsString(user)).commit();
    }

    public void updateCheckInHistoryInfo(final CheckInHistory checkInHistory, long j6, boolean z6) {
        boolean z10;
        if (checkInHistory != null && hasAccount() && Utils.shouldUpdateTimestamp(j6, this.prefs.getLong(getPrefsKey("checkInHistory_t"), 0L))) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey("checkInHistory_t"), j6);
            String strWriteAsString = JacksonUtils.writeAsString(checkInHistory);
            if (Utils.isStringEquals(strWriteAsString, this.prefs.getString(getPrefsKey("checkInHistory"), null))) {
                z10 = false;
            } else {
                editorEdit.putString(getPrefsKey("checkInHistory"), strWriteAsString);
                z10 = true;
            }
            editorEdit.apply();
            if (z10 && z6) {
                getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.6
                    @Override // com.narvii.util.Callback
                    public void call(ProfileListener profileListener) {
                        profileListener.onCheckInHistoryChanged(checkInHistory);
                    }
                });
            }
        }
    }

    public void updateFanClub(int i10, FanClub fanClub) {
        User userProfile;
        List<FanClub> list;
        int iIndexOfId;
        if (i10 == 0 || (userProfile = getUserProfile()) == null || (list = userProfile.fanClubList) == null || (iIndexOfId = Utils.indexOfId(list, fanClub.id())) < 0) {
            return;
        }
        userProfile.fanClubList.set(iIndexOfId, fanClub);
        updateProfile(userProfile, this.prefs.getLong(getPrefsKey(i10, "profile_t"), 0L), i10, false);
    }

    public void updateFanClubList(int i10, List<FanClub> list) {
        User userProfile;
        if (i10 == 0 || (userProfile = getUserProfile()) == null) {
            return;
        }
        if (list == null) {
            userProfile.fanClubList = new ArrayList();
        } else {
            userProfile.fanClubList = list;
        }
        updateProfile(userProfile, this.prefs.getLong(getPrefsKey(i10, "profile_t"), 0L), i10, false);
    }

    public void updateLiveLastTimeCheckout() {
        this.prefs.edit().putLong(PREFS_LIVE_LAST_TIME_CHECK_OUT, new Date().getTime()).apply();
    }

    public void updateNoticeCount(final int i10, final int i11, String str, boolean z6) {
        AccountService accountService;
        if (hasAccount() && Utils.shouldUpdateTimestamp(DateTimeFormatter.parseISO8601(str).getTime(), this.prefs.getLong(getPrefsKey(i10, "noticeCount_t"), 0L))) {
            long time = DateTimeFormatter.parseISO8601(str).getTime();
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey(i10, "noticeCount_t"), time);
            if (i11 != this.prefs.getInt(getPrefsKey(i10, "noticeCount"), 0)) {
                editorEdit.putInt(getPrefsKey(i10, "noticeCount"), i11);
                editorEdit.apply();
                if (z6 && (accountService = (AccountService) NVApplication.instance().getService(i10, "account")) != null) {
                    accountService.getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.3
                        @Override // com.narvii.util.Callback
                        public void call(ProfileListener profileListener) {
                            profileListener.onNoticeCountChanged(i11);
                        }
                    });
                }
            } else {
                editorEdit.apply();
            }
            if (!isMasterGlobal() || i10 <= 0) {
                return;
            }
            this.communityReminderDispatcher.dispatch(new Callback<CommunityReminderChangeInGlobalListener>() { // from class: com.narvii.account.AccountService.4
                @Override // com.narvii.util.Callback
                public void call(CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener) {
                    communityReminderChangeInGlobalListener.onNoticeCountChanged(i10, i11);
                }
            });
        }
    }

    public void updateNotificationCount(int i10, int i11, String str, boolean z6) {
        updateNotificationCount(i10, i11, DateTimeFormatter.parseISO8601(str).getTime(), z6);
    }

    public void updateProfile(User user, long j6, boolean z6) {
        updateProfile(user, j6, this.communityId, z6);
    }

    public AccountService(NVContext nVContext, int i10, int i11) {
        this.context = nVContext;
        this.type = i10;
        this.communityId = i11;
        this.prefs = nVContext.getContext().getSharedPreferences("account", 0);
        this.prefsHelper = new PreferencesHelper(this.context);
        File file = new File(this.context.getContext().getFilesDir(), "account");
        this.dir = file;
        file.mkdir();
    }

    private AccountKeychain crossAppReadMasterKeychain() {
        AccountKeychain accountKeychain;
        if (!crossAppsRead()) {
            return null;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ContentResolver contentResolver = this.context.getContext().getContentResolver();
        String[] strArr = {"EMAIL", "SECRET"};
        PackageUtils packageUtils = new PackageUtils(this.context.getContext());
        String packageName = this.context.getContext().getPackageName();
        String masterPackageName = packageUtils.getMasterPackageName();
        if (!Utils.isEquals(packageName, masterPackageName) && packageUtils.isPackageInstalled(masterPackageName)) {
            try {
                StringBuilder sb = new StringBuilder(46);
                sb.append("content://");
                sb.append(packageUtils.getKeychainAuthorities(new PackageUtils.AminoPackage(0, 0, packageUtils.getMasterPackageName())));
                sb.append("/keychain");
                Cursor cursorQuery = contentResolver.query(Uri.parse(sb.toString()), strArr, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    if (TextUtils.isEmpty(string)) {
                        accountKeychain = null;
                    } else {
                        accountKeychain = new AccountKeychain(null, string, string2);
                    }
                    Log.i("cross-apps get " + string + " from package " + masterPackageName + " in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                    return accountKeychain;
                }
            } catch (Exception e) {
                Log.w("cross-apps get fail from package " + masterPackageName, e);
            }
        }
        Log.i("cross-apps get no account keychain in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
        return null;
    }

    private void crossAppsWriteKeychain(final String str, final String str2) {
        if (!crossAppsWrite()) {
            return;
        }
        new Thread() { // from class: com.narvii.account.AccountService.10
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v18, types: [com.narvii.util.logging.LoggingService] */
            /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object[]] */
            /* JADX WARN: Type inference failed for: r3v0, types: [android.content.ContentResolver] */
            /* JADX WARN: Type inference failed for: r4v12 */
            /* JADX WARN: Type inference failed for: r4v13 */
            /* JADX WARN: Type inference failed for: r4v15 */
            /* JADX WARN: Type inference failed for: r4v16 */
            /* JADX WARN: Type inference failed for: r4v17 */
            /* JADX WARN: Type inference failed for: r4v18 */
            /* JADX WARN: Type inference failed for: r4v2 */
            /* JADX WARN: Type inference failed for: r4v21 */
            /* JADX WARN: Type inference failed for: r4v22 */
            /* JADX WARN: Type inference failed for: r4v23 */
            /* JADX WARN: Type inference failed for: r4v24 */
            /* JADX WARN: Type inference failed for: r4v25 */
            /* JADX WARN: Type inference failed for: r4v26 */
            /* JADX WARN: Type inference failed for: r4v27 */
            /* JADX WARN: Type inference failed for: r4v28 */
            /* JADX WARN: Type inference failed for: r8v0 */
            /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.String, java.lang.String[]] */
            /* JADX WARN: Type inference failed for: r8v13 */
            /* JADX WARN: Type inference failed for: r8v2 */
            /* JADX WARN: Type inference failed for: r8v3 */
            /* JADX WARN: Type inference failed for: r8v5 */
            /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String str3;
                ?? r10;
                PackageUtils packageUtils;
                ?? r5;
                ?? r11;
                boolean z6;
                ?? r12;
                if (str == null) {
                    str3 = "cross-apps delete";
                } else {
                    str3 = "cross-apps update " + str;
                }
                String str4 = str3;
                ?? contentResolver = AccountService.this.context.getContext().getContentResolver();
                PackageUtils packageUtils2 = new PackageUtils(AccountService.this.context.getContext());
                String packageName = AccountService.this.context.getContext().getPackageName();
                PackageUtils.AminoPackage[] aminoPackageArrListAminoPackages = packageUtils2.listAminoPackages();
                int length = aminoPackageArrListAminoPackages.length;
                ?? r13 = 0;
                Exception e = null;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                while (i10 < length) {
                    PackageUtils.AminoPackage aminoPackage = aminoPackageArrListAminoPackages[i10];
                    if (packageName.equals(aminoPackage.packageName)) {
                        packageUtils = packageUtils2;
                        r5 = r13;
                    } else if (packageUtils2.verifyPackageSignature(aminoPackage.packageName)) {
                        try {
                            StringBuilder sb = new StringBuilder(46);
                            sb.append("content://");
                            sb.append(packageUtils2.getKeychainAuthorities(aminoPackage));
                            sb.append("/keychain");
                            Uri uri = Uri.parse(sb.toString());
                            if (str == null) {
                                z6 = contentResolver.delete(uri, r13, r13) > 0;
                                packageUtils = packageUtils2;
                                r12 = r13;
                            } else {
                                ContentValues contentValues = new ContentValues();
                                packageUtils = packageUtils2;
                                try {
                                    contentValues.put("EMAIL", str);
                                    contentValues.put("SECRET", str2);
                                    r11 = 0;
                                    r12 = 0;
                                    r12 = 0;
                                    try {
                                        z6 = contentResolver.update(uri, contentValues, null, null) > 0;
                                    } catch (Exception e2) {
                                        e = e2;
                                        i13++;
                                        z6 = false;
                                        r5 = r11;
                                    }
                                } catch (Exception e6) {
                                    e = e6;
                                    r11 = 0;
                                }
                            }
                            if (z6) {
                                i11++;
                            } else {
                                i12++;
                            }
                        } catch (Exception e7) {
                            e = e7;
                            packageUtils = packageUtils2;
                            r11 = r13;
                        }
                        if (z6) {
                            r5 = r12;
                            r5 = r12;
                            Log.i(str4 + " succeed " + aminoPackage.packageName);
                        } else {
                            r5 = r12;
                            r5 = r12;
                            Log.w(str4 + " failed " + aminoPackage.packageName, e);
                        }
                    } else {
                        Log.w("package signature mismatch: " + aminoPackage.packageName);
                        packageUtils = packageUtils2;
                        r5 = r13;
                    }
                    i10++;
                    r13 = r5;
                    packageUtils2 = packageUtils;
                }
                ?? r14 = r13;
                if (e != null) {
                    r10 = e.getClass().getSimpleName() + " " + e.getMessage();
                } else {
                    r10 = r14;
                }
                ((LoggingService) AccountService.this.context.getService("logging")).logEvent("AndroidKeychain", new Object[]{"method", "write", "success", Integer.valueOf(i11), "fails", Integer.valueOf(i12), "errors", Integer.valueOf(i13), AccountNotice.LEVEL_MESSAGE, r10});
            }
        }.start();
    }

    private String getAccountValue(String str) {
        return JacksonUtils.nodeString(getAccountJson(), str);
    }

    public void adWatched(String str) {
        String userId = getUserId();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().path("/external/offer-reward/tapdaq-mobile");
        builder.param("uid", userId);
        builder.param("eventId", str);
        ((ApiService) this.context.getService("api")).exec(builder.build(), new AccountResponseListener(this.context) { // from class: com.narvii.account.AccountService.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
            }

            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            }
        });
    }

    public void crossAppsCheckInBackground() {
        if (!crossAppsRead()) {
            return;
        }
        if (this.type != 3 && !AccountKeychain.inited(this.context.getContext())) {
            new Thread() { // from class: com.narvii.account.AccountService.11
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    AccountService.this.crossAppsCheck();
                }
            }.start();
        } else {
            crossAppsCheck();
        }
    }

    public ObjectNode getAccountJson() {
        if (hasAccount()) {
            try {
                return (ObjectNode) JacksonUtils.DEFAULT_MAPPER.readTree(this.prefs.getString("account", null));
            } catch (Exception unused) {
                Log.w("unable to read account as json");
            }
        }
        return null;
    }

    public CheckInHistory getCheckInHistory() {
        if (hasAccount()) {
            try {
                return (CheckInHistory) JacksonUtils.readAs(this.prefs.getString(getPrefsKey("checkInHistory"), null), CheckInHistory.class);
            } catch (Exception e) {
                Log.e("json", e);
            }
        }
        return null;
    }

    public User getCommunityUserProfile() {
        if (!hasAccount()) {
            return null;
        }
        return (User) JacksonUtils.readAs(this.prefs.getString(getUserProfileKey(this.communityId), null), User.class);
    }

    public int getConsecutiveCheckInDays() {
        if (!hasAccount()) {
            return 0;
        }
        return this.prefs.getInt(getPrefsKey("checkInDays"), 0);
    }

    public String getDevOptions() {
        if (!hasAccount()) {
            return null;
        }
        return this.prefs.getString("dev-option", null);
    }

    public String getDeviceId() {
        return a0.b.k();
    }

    public long getNotificationCountTimestamp() {
        if (!hasAccount()) {
            return 0L;
        }
        return this.prefs.getLong(getPrefsKey("notificationCount_t"), 0L);
    }

    public int getPrivilegeOfMaxVideoDuration() {
        return JacksonUtils.nodeInt(getAccountJson(), 15, "extensions", "privilegeOfMaxVideoDuration") * 1000;
    }

    public int getSecurityLevel() {
        return JacksonUtils.nodeInt(getAccountJson(), "securityLevel");
    }

    public User getUserAccount() {
        if (!hasAccount()) {
            return null;
        }
        User user = (User) JacksonUtils.readAs(this.prefs.getString("account", null), User.class);
        if (user == null) {
            return new User();
        }
        return user;
    }

    public String getUserId() {
        User user;
        if (!hasAccount()) {
            return null;
        }
        String string = this.prefs.getString("uid", null);
        if (string == null && (user = (User) JacksonUtils.readAs(this.prefs.getString(Scopes.PROFILE, null), User.class)) != null) {
            String str = user.uid;
            this.prefs.edit().putString("uid", str).apply();
            return str;
        }
        return string;
    }

    public long getUserProfileTimestamp() {
        if (!hasAccount()) {
            return 0L;
        }
        return this.prefs.getLong(getPrefsKey("profile_t"), 0L);
    }

    public boolean hasActivation() {
        if (getAccountJson() != null && getAccountJson().has("activation") && JacksonUtils.nodeInt(getAccountJson(), "activation") <= 0) {
            return false;
        }
        return true;
    }

    public boolean hasCheckInToday() {
        if (!hasAccount()) {
            return false;
        }
        return this.prefs.getBoolean(getPrefsKey("checkInToday"), false);
    }

    public boolean hasEmailActivation() {
        if (JacksonUtils.nodeInt(getAccountJson(), "emailActivation") > 0) {
            return true;
        }
        return false;
    }

    public boolean hasPhoneActivation() {
        if (JacksonUtils.nodeInt(getAccountJson(), "phoneNumberActivation") > 0) {
            return true;
        }
        return false;
    }

    public void initAgeAndGender() {
        if (getUserId() != null) {
            if (!this.prefs.contains(PREFS_AGE) || !this.prefs.contains("gender")) {
                ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("/persona/profile/basic").build(), new ApiResponseListener<BasicProfileResponse>(BasicProfileResponse.class) { // from class: com.narvii.account.AccountService.14
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, BasicProfileResponse basicProfileResponse) throws Exception {
                        super.onFinish(apiRequest, basicProfileResponse);
                        AccountService.this.saveAgeAndGender(basicProfileResponse);
                    }
                });
            }
        }
    }

    public boolean isAminoIdEditable() {
        return JacksonUtils.nodeBoolean(getAccountJson(), "aminoIdEditable");
    }

    public boolean isUserProfileReady() {
        if (hasAccount()) {
            return !TextUtils.isEmpty(this.prefs.getString(getUserProfileKey(), null));
        }
        return false;
    }

    public int optinAdsFlags() {
        int iNodeInt = JacksonUtils.nodeInt(getAccountJson(), -1, "extensions", "adsFlags");
        if (iNodeInt >= 0 && !OptinAds.forceAds()) {
            return iNodeInt;
        }
        if (optinAdsLevel() == 0) {
            return 0;
        }
        return 27;
    }

    public void relogin(final Callback<User> callback) {
        String userId = getUserId();
        final AccountKeychain keychain = getKeychain();
        if (userId != null && keychain != null) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.https().post().global().path("/auth/login");
            builder.param(a0.a.o, getDeviceId());
            builder.param("email", keychain.email);
            builder.param("secret", keychain.secret);
            builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
            builder.tag(ApiService.DISABLE_RELOGIN_TAG);
            ((ApiService) this.context.getService("api")).exec(builder.build(), new AccountResponseListener(this.context) { // from class: com.narvii.account.AccountService.9
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    callback.call(null);
                }

                @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                    accountResponse.sid.charAt(0);
                    if (!Utils.isEqualsNotNull(AccountService.this.getUserId(), accountResponse.account.uid)) {
                        Log.w("re-login succeed, but not same account, just ignore");
                        callback.call(null);
                    } else {
                        Log.i("re-login succeed, updating..");
                        LiveRampHelper.setLRUserEmail(keychain.email);
                        super.onFinish(apiRequest, accountResponse);
                        callback.call(accountResponse.account);
                    }
                }
            });
            return;
        }
        callback.call(null);
    }

    public void updateNotificationCount(final int i10, final int i11, long j6, boolean z6) {
        AccountService accountService;
        if (hasAccount() && Utils.shouldUpdateTimestamp(j6, this.prefs.getLong(getPrefsKey(i10, "notificationCount_t"), 0L))) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey(i10, "notificationCount_t"), j6);
            if (i11 != this.prefs.getInt(getPrefsKey(i10, "notificationCount"), 0)) {
                editorEdit.putInt(getPrefsKey(i10, "notificationCount"), i11);
                editorEdit.apply();
                if (z6 && (accountService = (AccountService) NVApplication.instance().getService(i10, "account")) != null) {
                    accountService.getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.1
                        @Override // com.narvii.util.Callback
                        public void call(ProfileListener profileListener) {
                            profileListener.onNotificationCountChanged(i11);
                        }
                    });
                }
            } else {
                editorEdit.apply();
            }
            if (!isMasterGlobal() || i10 <= 0) {
                return;
            }
            this.communityReminderDispatcher.dispatch(new Callback<CommunityReminderChangeInGlobalListener>() { // from class: com.narvii.account.AccountService.2
                @Override // com.narvii.util.Callback
                public void call(CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener) {
                    communityReminderChangeInGlobalListener.onNotificationCountChanged(i10, i11);
                }
            });
        }
    }

    public void updateProfile(User user, String str, int i10, boolean z6) {
        updateProfile(user, DateTimeFormatter.parseISO8601(str).getTime(), i10, z6);
    }

    public void updateProfile(User user, long j6, final int i10, boolean z6) {
        ObjectNode objectNode;
        if (hasAccount()) {
            if (!Utils.isStringEquals(user.uid, getUserId())) {
                Log.e("update profile which doesnot match the current user");
                return;
            }
            String str = TAG;
            Log.w(str, "try to update profile x" + this.communityId);
            if (Utils.shouldUpdateTimestamp(j6, this.prefs.getLong(getPrefsKey(i10, "profile_t"), 0L))) {
                User userProfile = getUserProfile(i10);
                SharedPreferences.Editor editorEdit = this.prefs.edit();
                editorEdit.putLong(getPrefsKey(i10, "profile_t"), j6);
                final User user2 = (User) user.m1622clone();
                if (user2.extensions == null) {
                    if (userProfile != null && (objectNode = userProfile.extensions) != null && (objectNode.size() != 1 || JacksonUtils.nodePath(userProfile.extensions, "hideUserProfile") == null)) {
                        user2.extensions = userProfile.extensions;
                    } else {
                        user2.extensions = null;
                    }
                }
                if (user2.fanClubList == null) {
                    user2.fanClubList = userProfile == null ? null : userProfile.fanClubList;
                }
                boolean z10 = !Utils.isListObjectEquals(user2.fanClubList, userProfile != null ? userProfile.fanClubList : null);
                int iCheckEqual = user2.checkEqual(userProfile);
                boolean z11 = iCheckEqual == 2;
                if (iCheckEqual != 0 || z10) {
                    editorEdit.putString(getUserProfileKey(i10), JacksonUtils.writeAsString(user2)).apply();
                }
                if (z11) {
                    getProfileDispatcher().safeDispatch(new Callback() { // from class: com.narvii.account.d
                        @Override // com.narvii.util.Callback
                        public final void call(Object obj) {
                            ((AccountService.ProfileListener) obj).onProfileChanged(i10, user2);
                        }
                    });
                    if (z6 && this.communityId == i10) {
                        ((NotificationCenter) this.context.getService("notification")).sendNotification(new Notification("update", user2));
                    }
                    Log.w(str, "dispatch profile change x" + this.communityId);
                    Log.w("x" + this.communityId + " profile changed");
                }
                if (z10) {
                    this.fanClubListListeners.safeDispatch(new Callback() { // from class: com.narvii.account.e
                        @Override // com.narvii.util.Callback
                        public final void call(Object obj) {
                            AccountService.lambda$updateProfile$1(user2, (AccountService.FanClubListListener) obj);
                        }
                    });
                }
            }
            ObjectNode objectNode2 = user.settings;
            if (objectNode2 != null) {
                updateOnlineStatus(JacksonUtils.nodeInt(objectNode2, "onlineStatus"), j6, z6);
            }
        }
    }

    public FanClub getFanClub(int i10, String str) {
        User userProfile;
        List<FanClub> list;
        if (i10 <= 0 || str == null || (userProfile = getUserProfile(i10)) == null || (list = userProfile.fanClubList) == null) {
            return null;
        }
        return (FanClub) Utils.searchForId(list, str);
    }

    public void updateOnlineStatus(int i10, String str, boolean z6) {
        updateOnlineStatus(i10, DateTimeFormatter.parseISO8601(str).getTime(), z6);
    }

    public void updateCheckInInfo(boolean z6, int i10, String str, boolean z10) {
        updateCheckInInfo(z6, i10, DateTimeFormatter.parseISO8601(str).getTime(), z10);
    }

    public void updateNotificationCount(int i10, String str, boolean z6) {
        updateNotificationCount(i10, DateTimeFormatter.parseISO8601(str).getTime(), z6);
    }

    public void updateProfile(User user, String str, int i10, boolean z6, boolean z10) {
        if (user == null) {
            return;
        }
        User userProfile = getUserProfile(i10);
        ArrayList arrayList = null;
        ObjectNode objectNode = userProfile == null ? null : userProfile.extensions;
        if (z10) {
            Media[] backgroundMediaArray = BackgroundUtils.getBackgroundMediaArray(user.extensions);
            if (backgroundMediaArray != null) {
                arrayList = new ArrayList();
                Collections.addAll(arrayList, backgroundMediaArray);
            }
            BackgroundUtils.setBackgroundMediaList(objectNode, arrayList);
        }
        user.extensions = objectNode;
        updateProfile(user, str, i10, z6);
    }
}
