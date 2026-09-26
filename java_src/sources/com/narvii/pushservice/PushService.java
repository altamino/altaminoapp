package com.narvii.pushservice;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RemoteMessage;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.userblock.UserBlockService;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.PackageUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.badge.BadgeService;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.IAntiFraud;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class PushService {
    public static final int NOTIFY_TYPE_CHAT = 2;
    public static final int NOTIFY_TYPE_MARKETING = 4;
    public static final int NOTIFY_TYPE_NORMAL = 1;
    static final String TAG = "narvii_push";
    private NVContext context;
    private boolean intercept;
    private boolean isMaster;
    private long lastTokenTime;
    private final EventDispatcher<PushListener> listeners = new EventDispatcher<>();
    private NotificationManager notifiManager;
    private SharedPreferences prefs;
    private final BroadcastReceiver receiver;
    public boolean resumed;

    public interface PushListener {
        boolean onInterceptNotification(PushPayload pushPayload);

        void onPushPayload(PushPayload pushPayload);
    }

    public void bindGcmToken(boolean z6, final Callback<Bundle> callback) {
        String str;
        AccountService accountService = (AccountService) this.context.getService("account");
        String userId = accountService.getUserId();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j6 = this.lastTokenTime;
        if (jElapsedRealtime > 3600000 + j6) {
            boolean z10 = j6 == 0;
            this.lastTokenTime = jElapsedRealtime;
            Resources resources = this.context.getContext().getResources();
            int identifier = resources.getIdentifier("gcm_defaultSenderId", TypedValues.Custom.S_STRING, this.context.getContext().getPackageName());
            if (identifier != 0) {
                RemoteMessage.a aVarA = new RemoteMessage.a(resources.getString(identifier) + "@fcm.googleapis.com").d(60).c(UUID.randomUUID().toString()).a("did", a0.b.k()).a("dt", String.valueOf((System.currentTimeMillis() - a0.b.m()) / 1000)).a("ua", System.getProperty("http.agent")).a("lc", Locale.getDefault().toString()).a("vc", String.valueOf(new PackageUtils(this.context.getContext()).getVersionCode()));
                if (z10) {
                    aVarA.a("i0", "1");
                }
                if (userId != null) {
                    aVarA.a("uid", userId);
                }
                FirebaseMessaging.l().A(aVarA.b());
            }
        }
        final String string = this.prefs.getString("gcmToken", null);
        if (!accountService.hasAccount()) {
            boolean zUnbind = unbind();
            if (callback != null) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("changed", zUnbind);
                bundle.putBoolean("bind", false);
                bundle.putString("gcmToken", string);
                callback.call(bundle);
                return;
            }
            return;
        }
        String string2 = accountService.getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null);
        if (string == null) {
            str = null;
        } else {
            str = "GCM$" + userId + "$" + string2 + "$" + string;
        }
        if (str == null) {
            boolean zUnbind2 = unbind();
            if (callback != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("changed", zUnbind2);
                bundle2.putBoolean("bind", false);
                bundle2.putString("gcmToken", string);
                callback.call(bundle2);
                return;
            }
            return;
        }
        String string3 = this.prefs.getString("lastBind", null);
        final boolean zIsEqualsNotNull = Utils.isEqualsNotNull(str, string3);
        if (string3 != null && !z6 && zIsEqualsNotNull) {
            if (callback != null) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("changed", false);
                bundle3.putBoolean("bind", true);
                bundle3.putString("gcmToken", string);
                callback.call(bundle3);
                return;
            }
            return;
        }
        if (str.startsWith("GCM$")) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.https().post();
            builder.global();
            builder.path("/device").silent();
            builder.param(a0.a.o, accountService.getDeviceId()).param("deviceToken", string).param("deviceTokenType", 1).param("bundleID", this.context.getContext().getPackageName()).param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE)).param("timezone", Integer.valueOf(TimeZone.getDefault().getRawOffset() / 60000)).param("systemPushEnabled", Boolean.valueOf(new NotificationManagerHelper(this.context.getContext()).areNotificationsEnabled()));
            builder.tag(ApiService.DISABLE_RELOGIN_TAG);
            final String str2 = str;
            ((ApiService) this.context.getService("api")).exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.pushservice.PushService.5
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                    Log.w(PushService.TAG, "fail to reg gcm token (" + i10 + ")");
                    if (callback != null) {
                        Bundle bundle4 = new Bundle();
                        bundle4.putBoolean("changed", false);
                        bundle4.putBoolean("bind", false);
                        bundle4.putString("gcmToken", string);
                        callback.call(bundle4);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    Log.i(PushService.TAG, "gcm token reged on server");
                    PushService.this.prefs.edit().putString("lastBind", str2).commit();
                    if (callback != null) {
                        Bundle bundle4 = new Bundle();
                        bundle4.putBoolean("changed", !zIsEqualsNotNull);
                        bundle4.putBoolean("bind", true);
                        bundle4.putString("gcmToken", string);
                        callback.call(bundle4);
                    }
                }
            });
        }
    }

    private NameValuePair getAuid() {
        return new NameValuePair("AUID", ((AuidService) this.context.getService("auid")).getAuid());
    }

    private NameValuePair getNDCAuth() {
        return new NameValuePair("NDCAUTH", "sid=" + ((AccountService) this.context.getService("account")).getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null));
    }

    private NameValuePair getNdcDeviceId() {
        return new NameValuePair(a0.a.l, a0.b.k());
    }

    private NameValuePair getSMDeviceID() {
        return new NameValuePair(a0.a.m, ((IAntiFraud) this.context.getService("antiFraud")).getDeviceId());
    }

    private boolean unbind() {
        String string = this.prefs.getString("lastBind", null);
        if (string == null) {
            return false;
        }
        if (string.startsWith("GCM$")) {
            Log.i(TAG, "gcm token unbinded");
        }
        this.prefs.edit().remove("lastBind").commit();
        return true;
    }

    public void addPushListener(PushListener pushListener) {
        this.listeners.addListener(pushListener);
    }

    public void dismissChatNotification(int i10, String str) {
        PushPayloadSet pushPayloadSet;
        int i11 = this.isMaster ? ((i10 << 3) & (-8)) | 2 : 2;
        try {
            pushPayloadSet = (PushPayloadSet) JacksonUtils.DEFAULT_MAPPER.readValue(new File(((AccountService) this.context.getService("account")).getDir(), "push_" + i11), PushPayloadSet.class);
        } catch (Exception unused) {
            pushPayloadSet = null;
        }
        if (pushPayloadSet != null) {
            pushPayloadSet.removeThread(str);
        }
        if (pushPayloadSet == null || pushPayloadSet.size() == 0) {
            dismissNotification(i10, 2);
        }
    }

    public void dismissNotification(int i10, int i11) {
        int i12 = this.isMaster ? ((i10 << 3) & (-8)) | i11 : i11;
        this.notifiManager.cancel(i12);
        if (i11 == 1 || i11 == 2) {
            new File(((AccountService) this.context.getService("account")).getDir(), "push_" + i12).delete();
        }
    }

    public String getGcmToken() {
        return this.prefs.getString("gcmToken", null);
    }

    @NotNull
    List<NameValuePair> getPostHeaders() {
        ArrayList arrayList = new ArrayList();
        NameValuePair nDCAuth = getNDCAuth();
        NameValuePair sMDeviceID = getSMDeviceID();
        NameValuePair ndcDeviceId = getNdcDeviceId();
        NameValuePair auid = getAuid();
        arrayList.add(nDCAuth);
        arrayList.add(sMDeviceID);
        arrayList.add(ndcDeviceId);
        arrayList.add(auid);
        return arrayList;
    }

    public void removePushListener(PushListener pushListener) {
        this.listeners.removeListener(pushListener);
    }

    public void updateGcmToken(final boolean z6, final Callback<Bundle> callback) {
        PackageUtils packageUtils = new PackageUtils(this.context.getContext());
        if (!packageUtils.getVersionName().equals(this.prefs.getString("version", null))) {
            this.prefs.edit().clear().putString("version", packageUtils.getVersionName()).commit();
            Log.i(TAG, "version upgrade, reset push service!");
        }
        if (z6) {
            this.prefs.edit().remove("gcmToken").apply();
        }
        String string = this.prefs.getString("gcmToken", null);
        final boolean z10 = System.currentTimeMillis() - this.prefs.getLong("gcmTokenTime", 0L) > 604800000;
        if (string != null && !z10) {
            bindGcmToken(z6, callback);
        } else if (checkPlayServices()) {
            FirebaseMessaging.l().o().addOnCompleteListener(new OnCompleteListener() { // from class: com.narvii.pushservice.e
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.f2655a.lambda$updateGcmToken$0(z6, z10, callback, task);
                }
            });
        } else {
            Log.w(TAG, "google play service not available");
            bindGcmToken(z6 || z10, callback);
        }
    }

    public PushService(NVContext nVContext) {
        boolean z6;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.narvii.pushservice.PushService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                    if (PushService.this.isMaster) {
                        PushService.this.notifiManager.cancelAll();
                    } else {
                        PushService.this.dismissNotification(0, 1);
                        PushService.this.dismissNotification(0, 2);
                    }
                }
            }
        };
        this.receiver = broadcastReceiver;
        this.context = nVContext;
        if (NVApplication.CLIENT_TYPE == 100) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isMaster = z6;
        this.notifiManager = (NotificationManager) nVContext.getContext().getSystemService("notification");
        LocalBroadcastManager.b(this.context.getContext()).c(broadcastReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.prefs = nVContext.getContext().getSharedPreferences("push", 0);
    }

    private boolean checkPlayServices() {
        boolean z6;
        int iIsGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.context.getContext());
        StatisticsService statisticsService = (StatisticsService) this.context.getService("statistics");
        if (iIsGooglePlayServicesAvailable == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        statisticsService.setDeviceProperty("google_service_available", Boolean.valueOf(z6));
        statisticsService.setDeviceProperty("google_service_status", Integer.valueOf(iIsGooglePlayServicesAvailable));
        if (iIsGooglePlayServicesAvailable != 0 && iIsGooglePlayServicesAvailable != 2 && iIsGooglePlayServicesAvailable != 9) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateGcmToken$0(boolean z6, boolean z10, Callback callback, Task task) {
        String str;
        boolean z11;
        if (task.isSuccessful()) {
            str = (String) task.getResult();
            Log.i(TAG, "fcm register: " + str);
        } else {
            Log.w(TAG, "fail to register fcm", task.getException());
            str = null;
        }
        if (!z6 && !z10) {
            z11 = false;
        } else {
            z11 = true;
        }
        setGcmToken(str, z11, callback);
    }

    public void dispatchPushPayload(final PushPayload pushPayload) {
        String str;
        Object obj;
        String str2;
        String str3;
        NotificationChannel notificationChannel;
        UserBlockService userBlockService;
        ArrayList<String> arrayListSplit;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Utils.post(new Runnable() { // from class: com.narvii.pushservice.PushService.2
                @Override // java.lang.Runnable
                public void run() {
                    PushService.this.dispatchPushPayload(pushPayload);
                }
            });
            return;
        }
        boolean z6 = false;
        if (!TextUtils.isEmpty(pushPayload.id)) {
            String string = this.prefs.getString("pushed_ids", null);
            if (TextUtils.isEmpty(string)) {
                arrayListSplit = new ArrayList<>();
            } else {
                arrayListSplit = StringUtils.split(string, ",");
            }
            if (!arrayListSplit.contains(pushPayload.id)) {
                arrayListSplit.add(pushPayload.id);
                while (arrayListSplit.size() > 8) {
                    arrayListSplit.remove(0);
                }
                this.prefs.edit().putString("pushed_ids", StringUtils.join(arrayListSplit, ",")).apply();
            } else {
                Log.i(TAG, "duplicate push payload, ignored");
                return;
            }
        }
        AccountService accountService = (AccountService) this.context.getService("account");
        if ((pushPayload.isMarketing() && (NVApplication.CLIENT_TYPE != 100 || pushPayload.ndcId == 0)) || (accountService.hasAccount() && accountService.getKeychain() != null)) {
            if (pushPayload.uid != null && (userBlockService = (UserBlockService) this.context.getService("block")) != null && userBlockService.isBlocked(pushPayload.uid)) {
                switch (pushPayload.msgType) {
                    case 52:
                    case 53:
                    case 54:
                        break;
                    default:
                        Log.w(TAG, "filter payload from blocked user");
                        break;
                }
                return;
            }
            this.listeners.dispatch(new Callback<PushListener>() { // from class: com.narvii.pushservice.PushService.3
                @Override // com.narvii.util.Callback
                public void call(PushListener pushListener) {
                    pushListener.onPushPayload(pushPayload);
                }
            });
            this.intercept = false;
            this.listeners.dispatch(new Callback<PushListener>() { // from class: com.narvii.pushservice.PushService.4
                @Override // com.narvii.util.Callback
                public void call(PushListener pushListener) {
                    if (PushService.this.intercept || !pushListener.onInterceptNotification(pushPayload)) {
                        return;
                    }
                    PushService.this.intercept = true;
                }
            });
            if (this.intercept) {
                return;
            }
            if (pushPayload.aps.badge != 0) {
                ((BadgeService) this.context.getService("badge")).setBadge(pushPayload.aps.badge);
            }
            PushNotificationService pushNotificationService = (PushNotificationService) this.context.getService("_pushNotification");
            pushNotificationService.showPushNotification(pushPayload);
            if (pushPayload.trackId != null) {
                boolean zAreNotificationsEnabled = new NotificationManagerHelper(this.context.getContext()).areNotificationsEnabled();
                if (zAreNotificationsEnabled && Build.VERSION.SDK_INT >= 26) {
                    String channelId = pushNotificationService.getChannelId(pushPayload);
                    if (channelId != null && (notificationChannel = ((NotificationManager) this.context.getContext().getSystemService(NotificationManager.class)).getNotificationChannel(channelId)) != null && notificationChannel.getImportance() != 0) {
                        z6 = true;
                    }
                } else {
                    z6 = zAreNotificationsEnabled;
                }
                ApiRequest.Builder builderParam = ApiRequest.builder().global().post().path("push/track").headers(getPostHeaders()).param("trackId", pushPayload.trackId).param("trackType", "receive");
                if (this.resumed) {
                    str = DownloadService.KEY_FOREGROUND;
                } else {
                    str = "background";
                }
                ApiRequest.Builder builderParam2 = builderParam.param("scenario", str);
                String str4 = "off";
                if (!zAreNotificationsEnabled) {
                    obj = "off";
                } else {
                    obj = "on";
                }
                ApiRequest.Builder builderTag = builderParam2.param("systemPushStatus", obj).param("shown", Boolean.valueOf(z6)).tag(ApiService.ASYNC_CALL_TAG);
                if (zAreNotificationsEnabled && Build.VERSION.SDK_INT >= 26) {
                    ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                    NotificationManager notificationManager = (NotificationManager) this.context.getContext().getSystemService(NotificationManager.class);
                    int i10 = NVApplication.CLIENT_TYPE;
                    if (i10 == 100) {
                        if (notificationManager.getNotificationChannel(NotificationChannelHelper.CHANNEL_BROADCAST).getImportance() == 0) {
                            str2 = "off";
                        } else {
                            str2 = "on";
                        }
                        objectNodeCreateObjectNode.put(NotificationChannelHelper.CHANNEL_BROADCAST, str2);
                        if (notificationManager.getNotificationChannel("chat").getImportance() == 0) {
                            str3 = "off";
                        } else {
                            str3 = "on";
                        }
                        objectNodeCreateObjectNode.put("chat", str3);
                        if (notificationManager.getNotificationChannel(NotificationChannelHelper.CHANNEL_ALERT).getImportance() != 0) {
                            str4 = "on";
                        }
                        objectNodeCreateObjectNode.put(NotificationChannelHelper.CHANNEL_ALERT, str4);
                    } else if (i10 == 200) {
                        if (notificationManager.getNotificationChannel(NotificationChannelHelper.CHANNEL_COMMUNITY_MANAGEMENT).getImportance() != 0) {
                            str4 = "on";
                        }
                        objectNodeCreateObjectNode.put(NotificationChannelHelper.CHANNEL_COMMUNITY_MANAGEMENT, str4);
                    }
                    builderTag.param("systemPushCategory", objectNodeCreateObjectNode);
                }
                ((ApiService) this.context.getService("api")).exec(builderTag.build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
                Log.i(TAG, "push receive with trackId: " + pushPayload.trackId);
                return;
            }
            return;
        }
        Log.w(TAG, "push payload is ignored when logout");
    }

    public void setGcmToken(String str, boolean z6, Callback<Bundle> callback) {
        if (!TextUtils.isEmpty(str)) {
            this.prefs.edit().putString("gcmVersion", new PackageUtils(this.context.getContext()).getVersionName()).putString("gcmToken", str).putLong("gcmTokenTime", System.currentTimeMillis()).remove("fallbackAvos").commit();
        }
        bindGcmToken(z6, callback);
    }
}
