package com.narvii.account;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.Scopes;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.influencer.FanClub;
import com.narvii.model.CheckInHistory;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
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
import com.narvii.util.Utils;
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.stats.StatsService;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class AccountService {
    public static final String ACTION_ACCOUNT_CHANGED = "com.narvii.action.ACCOUNT_CHANGED";
    public static final String ACTION_PRIVACY_MODE_CHANGED = "com.narvii.action.PRIVACY_CHANGED";
    public static final String ACTION_SID_CHANGED = "com.narvii.action.SID_CHANGED";
    public static final String FINISH_LOGIN_PAGE = "com.narvii.action.FINISH_LOGIN_PAGE";
    public static final int KEYCHAIN_CHECKING = 1;
    public static final int KEYCHAIN_FAILED = -2;
    public static final int KEYCHAIN_IDLE = 0;
    public static final int KEYCHAIN_LOGINING = 2;
    public static final String KEYCHAIN_STATUS_CHANGED = "com.narvii.action.KEYCHAIN_STATUS_CHANGED";
    public static final int KEYCHAIN_TIMEOUT = -1;
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
    private int type;
    private final EventDispatcher<ProfileListener> listeners = new EventDispatcher<>();
    private final EventDispatcher<CommunityReminderChangeInGlobalListener> communityReminderDispatcher = new EventDispatcher<>();
    private final EventDispatcher<FanClubListListener> fanClubListListeners = new EventDispatcher<>();
    private final EventDispatcher<RecentVisitorListener> recentVisitorListeners = new EventDispatcher<>();
    private final BroadcastReceiver visitPrivacyReceiver = new BroadcastReceiver() { // from class: com.narvii.account.AccountService.13
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AccountService.this.lastRequestRecentVisitorCountTime = 0L;
            if (AccountService.this.isResumed) {
                AccountService.this.updateRecentVisitorCount();
            }
        }
    };
    private boolean isResumed = false;
    private long lastRequestRecentVisitorCountTime = 0;

    /* loaded from: classes2.dex */
    public interface CommunityReminderChangeInGlobalListener {
        void onNoticeCountChanged(int i, int i2);

        void onNotificationCountChanged(int i, int i2);
    }

    /* loaded from: classes2.dex */
    public interface FanClubListListener {
        void onFanClubListChanged(List<FanClub> list);
    }

    public static abstract class ProfileListener {
        public void onCheckInChanged(boolean z, int i) {
        }

        public void onCheckInHistoryChanged(CheckInHistory checkInHistory) {
        }

        public void onNoticeCountChanged(int i) {
        }

        public void onNotificationCountChanged(int i) {
        }

        public void onOnlineStatusChanged(int i) {
        }

        public abstract void onProfileChanged(int i, User user);
    }

    /* loaded from: classes2.dex */
    public interface RecentVisitorListener {
        void onVisitorCountChanged(int i, int i2);
    }

    public AccountService(NVContext nVContext, int i, int i2) {
        this.context = nVContext;
        this.type = i;
        this.communityId = i2;
        this.prefs = nVContext.getContext().getSharedPreferences("account", 0);
        this.dir = new File(this.context.getContext().getFilesDir(), "account");
        this.dir.mkdir();
    }

    private boolean crossAppsRead() {
        int i = this.type;
        return i == 1 || i == 4 || i == 3;
    }

    private boolean crossAppsWrite() {
        int i = this.type;
        return i == 1 || i == 4 || i == 2;
    }

    public void addProfileListener(ProfileListener profileListener) {
        this.listeners.addListener(profileListener);
    }

    public void removeProfileListener(ProfileListener profileListener) {
        this.listeners.removeListener(profileListener);
    }

    public void addCommunityReminderChangeListener(CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener) {
        this.communityReminderDispatcher.addListener(communityReminderChangeInGlobalListener);
    }

    public void removeCommunityReminderChangeListener(CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener) {
        this.communityReminderDispatcher.removeListener(communityReminderChangeInGlobalListener);
    }

    public void addFanClubListListener(FanClubListListener fanClubListListener) {
        this.fanClubListListeners.addListener(fanClubListListener);
    }

    public void removeFanClubListListener(FanClubListListener fanClubListListener) {
        this.fanClubListListeners.removeListener(fanClubListListener);
    }

    public void addRecentVisitorListener(RecentVisitorListener recentVisitorListener) {
        recentVisitorListener.onVisitorCountChanged(getLocalRecentVisitorCount(), -1);
        this.recentVisitorListeners.addListener(recentVisitorListener);
    }

    public void removeRecentVisitorListener(RecentVisitorListener recentVisitorListener) {
        this.recentVisitorListeners.removeListener(recentVisitorListener);
    }

    public EventDispatcher<ProfileListener> getProfileDispatcher() {
        return this.listeners;
    }

    public SharedPreferences getPrefs() {
        return this.prefs;
    }

    public String getPrefsKey(String str) {
        return getPrefsKey(this.communityId, str);
    }

    public String getPrefsKey(int i, String str) {
        int i2 = this.type;
        if (i2 == 2) {
            return str + "_" + i;
        }
        if (i2 != 1 || i == 0) {
            return str;
        }
        return str + "_" + i;
    }

    private String getUserProfileKey() {
        return getUserProfileKey(this.communityId);
    }

    private String getUserProfileKey(int i) {
        return "profile_" + i;
    }

    public File getDir() {
        return this.dir;
    }

    public boolean hasAccount() {
        return this.prefs.getString("sid", null) != null;
    }

    public String getSessionID() {
        return this.prefs.getString("sid", null);
    }

    public String getUserId() {
        User user;
        if (!hasAccount()) {
            return null;
        }
        String string = this.prefs.getString("uid", null);
        if (string != null || (user = (User) JacksonUtils.readAs(this.prefs.getString(Scopes.PROFILE, null), User.class)) == null) {
            return string;
        }
        String str = user.uid;
        this.prefs.edit().putString("uid", str).apply();
        return str;
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

    public User getUserAccount() {
        if (!hasAccount()) {
            return null;
        }
        User user = (User) JacksonUtils.readAs(this.prefs.getString("account", null), User.class);
        return user == null ? new User() : user;
    }

    private String getAccountValue(String str) {
        return JacksonUtils.nodeString(getAccountJson(), str);
    }

    public String getEmail() {
        return getAccountValue("email");
    }

    public String getPhoneNumber() {
        return getAccountValue("phoneNumber");
    }

    public String getAminoId() {
        return getAccountValue("aminoId");
    }

    public int getVisitorPrivacyMode() {
        return JacksonUtils.nodeInt(getAccountJson(), "extensions", "visitSettings", "privacyMode");
    }

    public int getVisitorNotificationStatus() {
        return JacksonUtils.nodeInt(getAccountJson(), "extensions", "visitSettings", "notificationStatus");
    }

    public boolean isAminoIdEditable() {
        return JacksonUtils.nodeBoolean(getAccountJson(), "aminoIdEditable");
    }

    public boolean isFacebookConnected() {
        return !TextUtils.isEmpty(getAccountValue("facebookID"));
    }

    public boolean isGoogleConnected() {
        return !TextUtils.isEmpty(getAccountValue("googleID"));
    }

    public boolean hasActivation() {
        return getAccountJson() == null || !getAccountJson().has("activation") || JacksonUtils.nodeInt(getAccountJson(), "activation") > 0;
    }

    public boolean hasEmailActivation() {
        return JacksonUtils.nodeInt(getAccountJson(), "emailActivation") > 0;
    }

    public int optinAdsLevel() {
        int iNodeInt = JacksonUtils.nodeInt(getAccountJson(), -1, "extensions", "adsLevel");
        return iNodeInt < 0 ? JacksonUtils.nodeBoolean(getAccountJson(), "extensions", "adsEnabled") ? 2 : 0 : iNodeInt;
    }

    public int optinAdsFlags() {
        int iNodeInt = JacksonUtils.nodeInt(getAccountJson(), -1, "extensions", "adsFlags");
        return iNodeInt < 0 ? optinAdsLevel() == 0 ? 0 : 27 : iNodeInt;
    }

    public boolean hasPhoneActivation() {
        return JacksonUtils.nodeInt(getAccountJson(), "phoneNumberActivation") > 0;
    }

    public int getSecurityLevel() {
        return JacksonUtils.nodeInt(getAccountJson(), "securityLevel");
    }

    public int getPrivilegeOfMaxVideoDuration() {
        return JacksonUtils.nodeInt(getAccountJson(), 15, "extensions", "privilegeOfMaxVideoDuration") * 1000;
    }

    public boolean isUserProfileReady() {
        if (hasAccount()) {
            return !TextUtils.isEmpty(this.prefs.getString(getUserProfileKey(), null));
        }
        return false;
    }

    public long getUserProfileTimestamp() {
        if (hasAccount()) {
            return this.prefs.getLong(getPrefsKey("profile_t"), 0L);
        }
        return 0L;
    }

    public User getUserProfile() {
        return getUserProfile(this.communityId);
    }

    public User getCommunityUserProfile() {
        if (hasAccount()) {
            return (User) JacksonUtils.readAs(this.prefs.getString(getUserProfileKey(this.communityId), null), User.class);
        }
        return null;
    }

    public User getUserProfile(int i) {
        if (!hasAccount()) {
            return null;
        }
        String string = this.prefs.getString(getUserProfileKey(i), null);
        if (string == null) {
            string = this.prefs.getString(getUserProfileKey(0), null);
        }
        if (string == null) {
            string = this.prefs.getString("account", null);
        }
        User user = (User) JacksonUtils.readAs(string, User.class);
        return user == null ? new User() : user;
    }

    public void saveDevOptions(String str) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        editorEdit.putString("dev-option", str).apply();
    }

    public String getDevOptions() {
        if (hasAccount()) {
            return this.prefs.getString("dev-option", null);
        }
        return null;
    }

    private boolean isMasterGlobal() {
        return NVApplication.CLIENT_TYPE == 100 && this.communityId == 0;
    }

    public void updateProfile(User user, String str, boolean z) {
        updateProfile(user, DateTimeFormatter.parseISO8601(str).getTime(), z);
    }

    public void updateProfile(User user, long j, boolean z) {
        updateProfile(user, j, this.communityId, z);
    }

    public void updateProfile(User user, String str, int i, boolean z) {
        updateProfile(user, DateTimeFormatter.parseISO8601(str).getTime(), i, z);
    }

    public void updateProfile(User user, long j, final int i, boolean z) {
        ObjectNode objectNode;
        if (hasAccount()) {
            if (!Utils.isStringEquals(user.uid, getUserId())) {
                Log.e("update profile which doesnot match the current user");
                return;
            }
            Log.w(TAG, "try to update profile x" + this.communityId);
            if (Utils.shouldUpdateTimestamp(j, this.prefs.getLong(getPrefsKey(i, "profile_t"), 0L))) {
                User userProfile = getUserProfile(i);
                SharedPreferences.Editor editorEdit = this.prefs.edit();
                editorEdit.putLong(getPrefsKey(i, "profile_t"), j);
                final User user2 = (User) user.m46clone();
                if (user2.extensions == null) {
                    if (userProfile == null || (objectNode = userProfile.extensions) == null || (objectNode.size() == 1 && JacksonUtils.nodePath(userProfile.extensions, "hideUserProfile") != null)) {
                        user2.extensions = null;
                    } else {
                        user2.extensions = userProfile.extensions;
                    }
                }
                if (user2.fanClubList == null) {
                    user2.fanClubList = userProfile == null ? null : userProfile.fanClubList;
                }
                boolean z2 = !Utils.isListObjectEquals(user2.fanClubList, userProfile != null ? userProfile.fanClubList : null);
                int iCheckEqual = user2.checkEqual(userProfile);
                boolean z3 = iCheckEqual == 2;
                if (iCheckEqual != 0 || z2) {
                    editorEdit.putString(getUserProfileKey(i), JacksonUtils.writeAsString(user2)).apply();
                }
                if (z3) {
                    getProfileDispatcher().safeDispatch(new Callback() { // from class: com.narvii.account.-$$Lambda$AccountService$WtESRpYWVn4nv1CQfSifJwy7kzc
                        @Override // com.narvii.util.Callback
                        public final void call(Object obj) {
                            ((AccountService.ProfileListener) obj).onProfileChanged(i, user2);
                        }
                    });
                    if (z && this.communityId == i) {
                        ((NotificationCenter) this.context.getService("notification")).sendNotification(new Notification("update", user2));
                    }
                    Log.w(TAG, "dispatch profile change x" + this.communityId);
                    Log.w("x" + this.communityId + " profile changed");
                }
                if (z2) {
                    this.fanClubListListeners.safeDispatch(new Callback() { // from class: com.narvii.account.-$$Lambda$AccountService$wiR6pJPgcKzNkwkTzDNc4Nfk-L8
                        @Override // com.narvii.util.Callback
                        public final void call(Object obj) {
                            ((AccountService.FanClubListListener) obj).onFanClubListChanged(user2.fanClubList);
                        }
                    });
                }
            }
            ObjectNode objectNode2 = user.settings;
            if (objectNode2 != null) {
                updateOnlineStatus(JacksonUtils.nodeInt(objectNode2, "onlineStatus"), j, z);
            }
        }
    }

    public void updateProfile(User user, String str, int i, boolean z, boolean z2) {
        if (user == null) {
            return;
        }
        User userProfile = getUserProfile(i);
        ArrayList arrayList = null;
        ObjectNode objectNode = userProfile == null ? null : userProfile.extensions;
        if (z2) {
            Media[] backgroundMediaArray = BackgroundUtils.getBackgroundMediaArray(user.extensions);
            if (backgroundMediaArray != null) {
                arrayList = new ArrayList();
                Collections.addAll(arrayList, backgroundMediaArray);
            }
            BackgroundUtils.setBackgroundMediaList(objectNode, arrayList);
        }
        user.extensions = objectNode;
        updateProfile(user, str, i, z);
    }

    public void updateAccountJsonSilence(String str) {
        this.prefs.edit().putString("account", str).commit();
    }

    public void updateAccountSilently(User user) {
        this.prefs.edit().putString("account", JacksonUtils.writeAsString(user)).commit();
    }

    public void updateAminoId(String str, String str2, boolean z) {
        User user = (User) getUserProfile(0).m46clone();
        if (!Utils.isEquals(getAminoId(), str) || isAminoIdEditable() != z) {
            ObjectNode accountJson = getAccountJson();
            if (accountJson == null) {
                return;
            }
            accountJson.put("aminoId", str);
            accountJson.put("aminoIdEditable", z);
            updateAccountJsonSilence(accountJson.toString());
        }
        if (Utils.isEquals(user.aminoId, str)) {
            return;
        }
        user.aminoId = str;
        updateProfile(user, str2, 0, true);
    }

    public void updateVisitorSetting(Integer num, Integer num2) {
        boolean z;
        ObjectNode accountJson = getAccountJson();
        if (accountJson == null) {
            return;
        }
        ObjectNode objectNodeCreateObjectNode = (ObjectNode) accountJson.get("extensions");
        if (objectNodeCreateObjectNode == null) {
            objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ObjectNode objectNodeCreateObjectNode2 = (ObjectNode) objectNodeCreateObjectNode.get("visitSettings");
        if (objectNodeCreateObjectNode2 == null) {
            objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        }
        if (num == null || num.intValue() == JacksonUtils.nodeInt(objectNodeCreateObjectNode2, "privacyMode")) {
            z = false;
        } else {
            objectNodeCreateObjectNode2.put("privacyMode", num);
            z = true;
        }
        if (num2 != null && num2.intValue() != JacksonUtils.nodeInt(objectNodeCreateObjectNode2, "notificationStatus")) {
            objectNodeCreateObjectNode2.put("notificationStatus", num2);
            z = true;
        }
        objectNodeCreateObjectNode.put("visitSettings", objectNodeCreateObjectNode2);
        accountJson.put("extensions", objectNodeCreateObjectNode);
        if (z) {
            LocalBroadcastManager.getInstance(this.context.getContext()).sendBroadcast(new Intent(ACTION_PRIVACY_MODE_CHANGED));
        }
        updateAccountJsonSilence(accountJson.toString());
    }

    public int getNotificationCount() {
        return getNotificationCount(this.communityId);
    }

    public int getNotificationCount(int i) {
        if (hasAccount()) {
            return this.prefs.getInt(getPrefsKey(i, "notificationCount"), 0);
        }
        return 0;
    }

    public int getNoticeCount() {
        return getNoticeCount(this.communityId);
    }

    public int getNoticeCount(int i) {
        if (hasAccount()) {
            return this.prefs.getInt(getPrefsKey(i, "noticeCount"), 0);
        }
        return 0;
    }

    public long getNotificationCountTimestamp() {
        if (hasAccount()) {
            return this.prefs.getLong(getPrefsKey("notificationCount_t"), 0L);
        }
        return 0L;
    }

    public void updateNotificationCount(int i, long j, boolean z) {
        updateNotificationCount(this.communityId, i, j, z);
    }

    public void updateNotificationCount(int i, int i2, String str, boolean z) {
        updateNotificationCount(i, i2, DateTimeFormatter.parseISO8601(str).getTime(), z);
    }

    public void updateNotificationCount(final int i, final int i2, long j, boolean z) {
        AccountService accountService;
        if (hasAccount() && Utils.shouldUpdateTimestamp(j, this.prefs.getLong(getPrefsKey(i, "notificationCount_t"), 0L))) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey(i, "notificationCount_t"), j);
            if (i2 != this.prefs.getInt(getPrefsKey(i, "notificationCount"), 0)) {
                editorEdit.putInt(getPrefsKey(i, "notificationCount"), i2);
                editorEdit.apply();
                if (z && (accountService = (AccountService) NVApplication.instance().getService(i, "account")) != null) {
                    accountService.getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.1
                        @Override // com.narvii.util.Callback
                        public void call(ProfileListener profileListener) {
                            profileListener.onNotificationCountChanged(i2);
                        }
                    });
                }
            } else {
                editorEdit.apply();
            }
            if (!isMasterGlobal() || i <= 0) {
                return;
            }
            this.communityReminderDispatcher.dispatch(new Callback<CommunityReminderChangeInGlobalListener>() { // from class: com.narvii.account.AccountService.2
                @Override // com.narvii.util.Callback
                public void call(CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener) {
                    communityReminderChangeInGlobalListener.onNotificationCountChanged(i, i2);
                }
            });
        }
    }

    public void updateNotificationCount(int i, String str, boolean z) {
        updateNotificationCount(i, DateTimeFormatter.parseISO8601(str).getTime(), z);
    }

    public void updateNoticeCount(int i, String str, boolean z) {
        updateNoticeCount(this.communityId, i, str, z);
    }

    public void updateNoticeCount(final int i, final int i2, String str, boolean z) {
        AccountService accountService;
        if (hasAccount() && Utils.shouldUpdateTimestamp(DateTimeFormatter.parseISO8601(str).getTime(), this.prefs.getLong(getPrefsKey(i, "noticeCount_t"), 0L))) {
            long time = DateTimeFormatter.parseISO8601(str).getTime();
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey(i, "noticeCount_t"), time);
            if (i2 != this.prefs.getInt(getPrefsKey(i, "noticeCount"), 0)) {
                editorEdit.putInt(getPrefsKey(i, "noticeCount"), i2);
                editorEdit.apply();
                if (z && (accountService = (AccountService) NVApplication.instance().getService(i, "account")) != null) {
                    accountService.getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.3
                        @Override // com.narvii.util.Callback
                        public void call(ProfileListener profileListener) {
                            profileListener.onNoticeCountChanged(i2);
                        }
                    });
                }
            } else {
                editorEdit.apply();
            }
            if (!isMasterGlobal() || i <= 0) {
                return;
            }
            this.communityReminderDispatcher.dispatch(new Callback<CommunityReminderChangeInGlobalListener>() { // from class: com.narvii.account.AccountService.4
                @Override // com.narvii.util.Callback
                public void call(CommunityReminderChangeInGlobalListener communityReminderChangeInGlobalListener) {
                    communityReminderChangeInGlobalListener.onNoticeCountChanged(i, i2);
                }
            });
        }
    }

    public int getConsecutiveCheckInDays() {
        if (hasAccount()) {
            return this.prefs.getInt(getPrefsKey("checkInDays"), 0);
        }
        return 0;
    }

    public boolean hasCheckInToday() {
        if (hasAccount()) {
            return this.prefs.getBoolean(getPrefsKey("checkInToday"), false);
        }
        return false;
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

    public void updateCheckInInfo(final boolean z, final int i, long j, boolean z2) {
        boolean z3;
        if (hasAccount() && Utils.shouldUpdateTimestamp(j, this.prefs.getLong(getPrefsKey("checkIn_t"), 0L))) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey("checkIn_t"), j);
            if (z != this.prefs.getBoolean(getPrefsKey("checkInToday"), false)) {
                editorEdit.putBoolean(getPrefsKey("checkInToday"), z);
                z3 = true;
            } else {
                z3 = false;
            }
            if (i != this.prefs.getInt(getPrefsKey("checkInDays"), 0)) {
                editorEdit.putInt(getPrefsKey("checkInDays"), i);
                z3 = true;
            }
            editorEdit.apply();
            if (z3 && z2) {
                getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.5
                    @Override // com.narvii.util.Callback
                    public void call(ProfileListener profileListener) {
                        profileListener.onCheckInChanged(z, i);
                    }
                });
            }
        }
    }

    public void updateFanClub(int i, FanClub fanClub) {
        User userProfile;
        List<FanClub> list;
        int iIndexOfId;
        if (i == 0 || (userProfile = getUserProfile()) == null || (list = userProfile.fanClubList) == null || (iIndexOfId = Utils.indexOfId(list, fanClub.id())) < 0) {
            return;
        }
        userProfile.fanClubList.set(iIndexOfId, fanClub);
        updateProfile(userProfile, this.prefs.getLong(getPrefsKey(i, "profile_t"), 0L), i, false);
    }

    public void updateFanClubList(int i, List<FanClub> list) {
        User userProfile;
        if (i == 0 || (userProfile = getUserProfile()) == null) {
            return;
        }
        if (list == null) {
            userProfile.fanClubList = new ArrayList();
        } else {
            userProfile.fanClubList = list;
        }
        updateProfile(userProfile, this.prefs.getLong(getPrefsKey(i, "profile_t"), 0L), i, false);
    }

    public void deleteFanClub(int i, FanClub fanClub) {
        User userProfile;
        List<FanClub> list;
        if (i == 0 || fanClub == null || (userProfile = getUserProfile()) == null || (list = userProfile.fanClubList) == null || Utils.removeId(list, fanClub.targetUid) <= 0) {
            return;
        }
        updateProfile(userProfile, this.prefs.getLong(getPrefsKey(i, "profile_t"), 0L), i, false);
    }

    public FanClub getFanClub(String str) {
        User userProfile;
        List<FanClub> list;
        if (isMasterGlobal() || (userProfile = getUserProfile()) == null || (list = userProfile.fanClubList) == null) {
            return null;
        }
        return (FanClub) Utils.searchForId(list, str);
    }

    public FanClub getFanClub(int i, String str) {
        User userProfile;
        List<FanClub> list;
        if (i <= 0 || str == null || (userProfile = getUserProfile(i)) == null || (list = userProfile.fanClubList) == null) {
            return null;
        }
        return (FanClub) Utils.searchForId(list, str);
    }

    public void updateCheckInHistoryInfo(CheckInHistory checkInHistory, String str, boolean z) {
        updateCheckInHistoryInfo(checkInHistory, DateTimeFormatter.parseISO8601(str).getTime(), z);
    }

    public void updateCheckInHistoryInfo(final CheckInHistory checkInHistory, long j, boolean z) {
        if (checkInHistory != null && hasAccount() && Utils.shouldUpdateTimestamp(j, this.prefs.getLong(getPrefsKey("checkInHistory_t"), 0L))) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey("checkInHistory_t"), j);
            boolean z2 = false;
            String strWriteAsString = JacksonUtils.writeAsString(checkInHistory);
            if (!Utils.isStringEquals(strWriteAsString, this.prefs.getString(getPrefsKey("checkInHistory"), null))) {
                editorEdit.putString(getPrefsKey("checkInHistory"), strWriteAsString);
                z2 = true;
            }
            editorEdit.apply();
            if (z2 && z) {
                getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.6
                    @Override // com.narvii.util.Callback
                    public void call(ProfileListener profileListener) {
                        profileListener.onCheckInHistoryChanged(checkInHistory);
                    }
                });
            }
        }
    }

    public void updateCheckInInfo(boolean z, int i, String str, boolean z2) {
        updateCheckInInfo(z, i, DateTimeFormatter.parseISO8601(str).getTime(), z2);
    }

    public int getOnlineStatus() {
        return this.prefs.getInt(getPrefsKey("onlineStatus"), 0);
    }

    public void updateOnlineStatus(final int i, long j, boolean z) {
        if (hasAccount() && i != 0 && Utils.shouldUpdateTimestamp(j, this.prefs.getLong(getPrefsKey("onlineStatus_t"), 0L))) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.putLong(getPrefsKey("onlineStatus_t"), j);
            boolean z2 = false;
            if (i != this.prefs.getInt(getPrefsKey("onlineStatus"), 0)) {
                editorEdit.putInt(getPrefsKey("onlineStatus"), i);
                z2 = true;
            }
            editorEdit.apply();
            if (z2 && z) {
                getProfileDispatcher().safeDispatch(new Callback<ProfileListener>() { // from class: com.narvii.account.AccountService.7
                    @Override // com.narvii.util.Callback
                    public void call(ProfileListener profileListener) {
                        profileListener.onOnlineStatusChanged(i);
                    }
                });
            }
        }
    }

    public void updateOnlineStatus(int i, String str, boolean z) {
        updateOnlineStatus(i, DateTimeFormatter.parseISO8601(str).getTime(), z);
    }

    public void logout(boolean z) {
        Log.i("logout...");
        boolean z2 = false;
        if (z && AccountKeychain.readFrom(this.context.getContext()) != null) {
            z2 = true;
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
        Utils.post(new Runnable() { // from class: com.narvii.account.AccountService.8
            @Override // java.lang.Runnable
            public void run() {
                LocalBroadcastManager.getInstance(AccountService.this.context.getContext()).sendBroadcast(new Intent(AccountService.ACTION_ACCOUNT_CHANGED));
            }
        });
        this.lastRequestRecentVisitorCountTime = 0L;
        if (z2) {
            crossAppsWriteKeychain(null, null);
        }
    }

    public void relogin(final Callback<User> callback) {
        String userId = getUserId();
        AccountKeychain keychain = getKeychain();
        if (userId == null || keychain == null) {
            callback.call(null);
            return;
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global().path("/auth/login");
        builder.param("deviceID", getDeviceId());
        builder.param("email", keychain.email);
        builder.param("secret", keychain.secret);
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.tag(ApiService.DISABLE_RELOGIN_TAG);
        ((ApiService) this.context.getService("api")).exec(builder.build(), new AccountResponseListener(this.context) { // from class: com.narvii.account.AccountService.9
            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                accountResponse.sid.charAt(0);
                if (Utils.isEqualsNotNull(AccountService.this.getUserId(), accountResponse.account.uid)) {
                    Log.i("re-login succeed, updating..");
                    super.onFinish(apiRequest, accountResponse);
                    callback.call(accountResponse.account);
                } else {
                    Log.w("re-login succeed, but not same account, just ignore");
                    callback.call(null);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                callback.call(null);
            }
        });
    }

    public AccountKeychain getKeychain() {
        return AccountKeychain.readFrom(this.context.getContext());
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

    private void crossAppsWriteKeychain(final String str, final String str2) {
        if (crossAppsWrite()) {
            new Thread() { // from class: com.narvii.account.AccountService.10
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:46:0x00f4  */
                /* JADX WARN: Removed duplicated region for block: B:47:0x010e  */
                /* JADX WARN: Type inference failed for: r8v0 */
                /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.String, java.lang.String[]] */
                /* JADX WARN: Type inference failed for: r8v3 */
                /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
                @Override // java.lang.Thread, java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 419
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.narvii.account.AccountService.AnonymousClass10.run():void");
                }
            }.start();
        }
    }

    private AccountKeychain crossAppsReadKeychain() {
        String str;
        String str2;
        String str3;
        int i;
        PackageUtils.AminoPackage[] aminoPackageArr;
        String str4;
        PackageUtils packageUtils;
        int i2;
        Uri uri;
        String str5 = null;
        if (!crossAppsRead()) {
            return null;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ContentResolver contentResolver = this.context.getContext().getContentResolver();
        String[] strArr = {"EMAIL", "SECRET"};
        PackageUtils packageUtils2 = new PackageUtils(this.context.getContext());
        String packageName = this.context.getContext().getPackageName();
        PackageUtils.AminoPackage[] aminoPackageArrListAminoPackages = packageUtils2.listAminoPackages();
        int length = aminoPackageArrListAminoPackages.length;
        Exception e = null;
        AccountKeychain accountKeychain = null;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i3 >= length) {
                str = str5;
                str2 = str;
                break;
            }
            PackageUtils.AminoPackage aminoPackage = aminoPackageArrListAminoPackages[i3];
            if (packageName.equals(aminoPackage.packageName)) {
                i = i3;
                aminoPackageArr = aminoPackageArrListAminoPackages;
                str4 = packageName;
                packageUtils = packageUtils2;
                str = str5;
                i2 = length;
            } else {
                try {
                    try {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append("content://");
                        sb.append(packageUtils2.getKeychainAuthorities(aminoPackage));
                        sb.append("/keychain");
                        uri = Uri.parse(sb.toString());
                        i = i3;
                        i2 = length;
                        aminoPackageArr = aminoPackageArrListAminoPackages;
                        str4 = packageName;
                        packageUtils = packageUtils2;
                    } catch (Exception e2) {
                        e = e2;
                        i = i3;
                        i2 = length;
                        aminoPackageArr = aminoPackageArrListAminoPackages;
                        str4 = packageName;
                        packageUtils = packageUtils2;
                    }
                } catch (Exception e3) {
                    e = e3;
                    i = i3;
                    aminoPackageArr = aminoPackageArrListAminoPackages;
                    str4 = packageName;
                    packageUtils = packageUtils2;
                    str = str5;
                    i2 = length;
                }
                try {
                    Cursor cursorQuery = contentResolver.query(uri, strArr, null, null, null);
                    if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                        str = null;
                        i4++;
                    } else {
                        i5++;
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        if (TextUtils.isEmpty(string)) {
                            aminoPackage = aminoPackage;
                            str = null;
                            accountKeychain = null;
                        } else {
                            str = null;
                            try {
                                accountKeychain = new AccountKeychain(null, string, string2);
                                aminoPackage = aminoPackage;
                            } catch (Exception e4) {
                                e = e4;
                                aminoPackage = aminoPackage;
                                i6++;
                                Log.w("cross-apps get fail from package " + aminoPackage.packageName, e);
                                i3 = i + 1;
                                length = i2;
                                str5 = str;
                                packageName = str4;
                                packageUtils2 = packageUtils;
                                aminoPackageArrListAminoPackages = aminoPackageArr;
                            }
                        }
                        try {
                            str2 = aminoPackage.packageName;
                            break;
                        } catch (Exception e5) {
                            e = e5;
                            i6++;
                            Log.w("cross-apps get fail from package " + aminoPackage.packageName, e);
                            i3 = i + 1;
                            length = i2;
                            str5 = str;
                            packageName = str4;
                            packageUtils2 = packageUtils;
                            aminoPackageArrListAminoPackages = aminoPackageArr;
                        }
                    }
                } catch (Exception e6) {
                    e = e6;
                    aminoPackage = aminoPackage;
                    str = null;
                    i6++;
                    Log.w("cross-apps get fail from package " + aminoPackage.packageName, e);
                    i3 = i + 1;
                    length = i2;
                    str5 = str;
                    packageName = str4;
                    packageUtils2 = packageUtils;
                    aminoPackageArrListAminoPackages = aminoPackageArr;
                }
            }
            i3 = i + 1;
            length = i2;
            str5 = str;
            packageName = str4;
            packageUtils2 = packageUtils;
            aminoPackageArrListAminoPackages = aminoPackageArr;
        }
        AccountKeychain accountKeychain2 = accountKeychain;
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        if (i5 > 0) {
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
        ((LoggingService) this.context.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AndroidKeychain", "method", "read", "success", Integer.valueOf(i5), "fails", Integer.valueOf(i4), "errors", Integer.valueOf(i6), AccountNotice.LEVEL_MESSAGE, str3);
        return accountKeychain2;
    }

    private AccountKeychain crossAppReadMasterKeychain() {
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
                    AccountKeychain accountKeychain = TextUtils.isEmpty(string) ? null : new AccountKeychain(null, string, cursorQuery.getString(1));
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

    public void crossAppsCheckInBackground() {
        if (crossAppsRead()) {
            if (this.type == 3 || AccountKeychain.inited(this.context.getContext())) {
                crossAppsCheck();
            } else {
                new Thread() { // from class: com.narvii.account.AccountService.11
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        AccountService.this.crossAppsCheck();
                    }
                }.start();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6 A[Catch: all -> 0x012c, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0009, B:9:0x0017, B:12:0x0022, B:14:0x002c, B:42:0x00c6, B:43:0x0127, B:33:0x0082, B:36:0x0092, B:37:0x00a9, B:39:0x00b1, B:16:0x0036, B:17:0x0040, B:21:0x004f, B:23:0x005b, B:25:0x0064, B:26:0x006e), top: B:49:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0127 A[Catch: all -> 0x012c, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0009, B:9:0x0017, B:12:0x0022, B:14:0x002c, B:42:0x00c6, B:43:0x0127, B:33:0x0082, B:36:0x0092, B:37:0x00a9, B:39:0x00b1, B:16:0x0036, B:17:0x0040, B:21:0x004f, B:23:0x005b, B:25:0x0064, B:26:0x006e), top: B:49:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected synchronized void crossAppsCheck() {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.account.AccountService.crossAppsCheck():void");
    }

    public int getKeychainStatus() {
        return this.keychainStatus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchKeychainStatus(int i) {
        if (i != this.keychainStatus) {
            this.keychainStatus = i;
            Intent intent = new Intent(KEYCHAIN_STATUS_CHANGED);
            intent.putExtra(NotificationCompat.CATEGORY_STATUS, i);
            LocalBroadcastManager.getInstance(this.context.getContext()).sendBroadcast(intent);
        }
    }

    public String getDeviceId() {
        return ((DeviceIDService) this.context.getService("deviceid")).getDeviceId();
    }

    public void resume() {
        this.isResumed = true;
    }

    public void pause() {
        this.isResumed = false;
    }

    public void start() {
        LocalBroadcastManager.getInstance(this.context.getContext()).registerReceiver(this.visitPrivacyReceiver, new IntentFilter(ACTION_PRIVACY_MODE_CHANGED));
        LocalBroadcastManager.getInstance(this.context.getContext()).registerReceiver(this.visitPrivacyReceiver, new IntentFilter(ACTION_ACCOUNT_CHANGED));
    }

    public void stop() {
        LocalBroadcastManager.getInstance(this.context.getContext()).unregisterReceiver(this.visitPrivacyReceiver);
    }

    public void updateRecentVisitorCount() {
        if (hasAccount()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.lastRequestRecentVisitorCountTime > (NVApplication.DEBUG ? 10000L : 600000L)) {
                this.lastRequestRecentVisitorCountTime = jCurrentTimeMillis;
                sendReminderStatRequest(false);
            }
        }
    }

    public void forceUpdateRecentVisitorCount() {
        if (hasAccount()) {
            sendReminderStatRequest(true);
        }
    }

    private void sendReminderStatRequest(boolean z) {
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest.Builder builderPath = new ApiRequest.Builder().path("user-profile/reminder-stat");
        if (z) {
            builderPath.param("forceUpdate", true);
        }
        apiService.exec(builderPath.build(), new AnonymousClass14(RecentVisitorCountResponse.class));
    }

    /* renamed from: com.narvii.account.AccountService$14, reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass14 extends ApiResponseListener<RecentVisitorCountResponse> {
        AnonymousClass14(Class cls) {
            super(cls);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, final RecentVisitorCountResponse recentVisitorCountResponse) throws Exception {
            super.onFinish(apiRequest, (ApiRequest) recentVisitorCountResponse);
            int localRecentVisitorCount = AccountService.this.getLocalRecentVisitorCount();
            int i = recentVisitorCountResponse.unreadVisitorsCount;
            if (localRecentVisitorCount != i) {
                AccountService.this.setLocalRecentVisitorCount(i);
                AccountService.this.recentVisitorListeners.safeDispatch(new Callback() { // from class: com.narvii.account.-$$Lambda$AccountService$14$OSEbLc_FOzi2gpmcj8au9256k1Y
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        RecentVisitorCountResponse recentVisitorCountResponse2 = recentVisitorCountResponse;
                        ((AccountService.RecentVisitorListener) obj).onVisitorCountChanged(recentVisitorCountResponse2.unreadVisitorsCount, recentVisitorCountResponse2.visitorsCount);
                    }
                });
            }
        }
    }

    public void markRecentVisitorAsRead() {
        if (getLocalRecentVisitorCount() == 0) {
            return;
        }
        setLocalRecentVisitorCount(0);
        this.recentVisitorListeners.safeDispatch(new Callback() { // from class: com.narvii.account.-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((AccountService.RecentVisitorListener) obj).onVisitorCountChanged(0, -1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLocalRecentVisitorCount() {
        return this.prefs.getInt(getPrefsKey("visitorCount"), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLocalRecentVisitorCount(int i) {
        this.prefs.edit().putInt(getPrefsKey("visitorCount"), i).apply();
    }
}
