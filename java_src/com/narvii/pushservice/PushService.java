package com.narvii.pushservice;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.InstanceIdResult;
import com.narvii.account.AccountService;
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
import com.narvii.util.http.NameValuePair;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class PushService {
    public static final int NOTIFY_TYPE_CHAT = 2;
    public static final int NOTIFY_TYPE_MARKETING = 4;
    public static final int NOTIFY_TYPE_NORMAL = 1;
    static final String TAG = "narvii_push";
    private NVContext context;
    private boolean intercept;
    private boolean isMaster;
    private long lastTokenTime;
    private NotificationManager notifiManager;
    private SharedPreferences prefs;
    public boolean resumed;
    private final EventDispatcher<PushListener> listeners = new EventDispatcher<>();
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.pushservice.PushService.1
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

    public interface PushListener {
        boolean onInterceptNotification(PushPayload pushPayload);

        void onPushPayload(PushPayload pushPayload);
    }

    public PushService(NVContext nVContext) {
        this.context = nVContext;
        this.isMaster = NVApplication.CLIENT_TYPE == 100;
        this.notifiManager = (NotificationManager) nVContext.getContext().getSystemService("notification");
        LocalBroadcastManager.getInstance(this.context.getContext()).registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.prefs = nVContext.getContext().getSharedPreferences("push", 0);
    }

    public void dismissNotification(int i, int i2) {
        int i3 = this.isMaster ? ((i << 3) & (-8)) | i2 : i2;
        this.notifiManager.cancel(i3);
        if (i2 == 1 || i2 == 2) {
            new File(((AccountService) this.context.getService("account")).getDir(), "push_" + i3).delete();
        }
    }

    public void dismissChatNotification(int i, String str) {
        int i2 = this.isMaster ? ((i << 3) & (-8)) | 2 : 2;
        PushPayloadSet pushPayloadSet = null;
        try {
            pushPayloadSet = (PushPayloadSet) JacksonUtils.DEFAULT_MAPPER.readValue(new File(((AccountService) this.context.getService("account")).getDir(), "push_" + i2), PushPayloadSet.class);
        } catch (Exception unused) {
        }
        if (pushPayloadSet != null) {
            pushPayloadSet.removeThread(str);
        }
        if (pushPayloadSet == null || pushPayloadSet.size() == 0) {
            dismissNotification(i, 2);
        }
    }

    public void dispatchPushPayload(final PushPayload pushPayload) throws Throwable {
        NotificationChannel notificationChannel;
        UserBlockService userBlockService;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Utils.post(new Runnable() { // from class: com.narvii.pushservice.PushService.2
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    PushService.this.dispatchPushPayload(pushPayload);
                }
            });
            return;
        }
        boolean z = false;
        if (!TextUtils.isEmpty(pushPayload.id)) {
            String string = this.prefs.getString("pushed_ids", null);
            ArrayList<String> arrayList = TextUtils.isEmpty(string) ? new ArrayList<>() : StringUtils.split(string, ",");
            if (!arrayList.contains(pushPayload.id)) {
                arrayList.add(pushPayload.id);
                while (arrayList.size() > 8) {
                    arrayList.remove(0);
                }
                this.prefs.edit().putString("pushed_ids", StringUtils.join(arrayList, ",")).apply();
            } else {
                Log.i(TAG, "duplicate push payload, ignored");
                return;
            }
        }
        AccountService accountService = (AccountService) this.context.getService("account");
        if ((!pushPayload.isMarketing() || (NVApplication.CLIENT_TYPE == 100 && pushPayload.ndcId != 0)) && (!accountService.hasAccount() || accountService.getKeychain() == null)) {
            Log.w(TAG, "push payload is ignored when logout");
            return;
        }
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
            if (!zAreNotificationsEnabled || Build.VERSION.SDK_INT < 26) {
                z = zAreNotificationsEnabled;
            } else {
                String channelId = pushNotificationService.getChannelId(pushPayload);
                if (channelId != null && (notificationChannel = ((NotificationManager) this.context.getContext().getSystemService(NotificationManager.class)).getNotificationChannel(channelId)) != null && notificationChannel.getImportance() != 0) {
                    z = true;
                }
            }
            ApiRequest.Builder builderTag = ApiRequest.builder().global().post().path("push/track").param("trackId", pushPayload.trackId).param("trackType", "receive").param("scenario", this.resumed ? DownloadService.KEY_FOREGROUND : "background").param("systemPushStatus", zAreNotificationsEnabled ? "on" : "off").param("shown", Boolean.valueOf(z)).tag(ApiService.ASYNC_CALL_TAG);
            if (zAreNotificationsEnabled && Build.VERSION.SDK_INT >= 26) {
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                NotificationManager notificationManager = (NotificationManager) this.context.getContext().getSystemService(NotificationManager.class);
                int i = NVApplication.CLIENT_TYPE;
                if (i == 100 || i == 101) {
                    objectNodeCreateObjectNode.put(NotificationChannelHelper.CHANNEL_BROADCAST, notificationManager.getNotificationChannel(NotificationChannelHelper.CHANNEL_BROADCAST).getImportance() != 0 ? "on" : "off");
                    objectNodeCreateObjectNode.put("chat", notificationManager.getNotificationChannel("chat").getImportance() != 0 ? "on" : "off");
                    objectNodeCreateObjectNode.put(NotificationChannelHelper.CHANNEL_ALERT, notificationManager.getNotificationChannel(NotificationChannelHelper.CHANNEL_ALERT).getImportance() == 0 ? "off" : "on");
                } else if (i == 200) {
                    objectNodeCreateObjectNode.put(NotificationChannelHelper.CHANNEL_COMMUNITY_MANAGEMENT, notificationManager.getNotificationChannel(NotificationChannelHelper.CHANNEL_COMMUNITY_MANAGEMENT).getImportance() == 0 ? "off" : "on");
                }
                builderTag.param("systemPushCategory", objectNodeCreateObjectNode);
            }
            ((ApiService) this.context.getService("api")).exec(builderTag.build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
            Log.i(TAG, "push receive with trackId: " + pushPayload.trackId);
        }
    }

    public void addPushListener(PushListener pushListener) {
        this.listeners.addListener(pushListener);
    }

    public void removePushListener(PushListener pushListener) {
        this.listeners.removeListener(pushListener);
    }

    public String getGcmToken() {
        return this.prefs.getString("gcmToken", null);
    }

    public void setGcmToken(String str, boolean z, Callback<Bundle> callback) {
        if (!TextUtils.isEmpty(str)) {
            this.prefs.edit().putString("gcmVersion", new PackageUtils(this.context.getContext()).getVersionName()).putString("gcmToken", str).putLong("gcmTokenTime", System.currentTimeMillis()).remove("fallbackAvos").commit();
        }
        bindGcmToken(z, callback);
    }

    public void updateGcmToken(final boolean z, final Callback<Bundle> callback) {
        PackageUtils packageUtils = new PackageUtils(this.context.getContext());
        if (!packageUtils.getVersionName().equals(this.prefs.getString("version", null))) {
            this.prefs.edit().clear().putString("version", packageUtils.getVersionName()).commit();
            Log.i(TAG, "version upgrade, reset push service!");
        }
        if (z) {
            this.prefs.edit().remove("gcmToken").apply();
        }
        String string = this.prefs.getString("gcmToken", null);
        boolean z2 = true;
        final boolean z3 = System.currentTimeMillis() - this.prefs.getLong("gcmTokenTime", 0L) > 604800000;
        if (string == null || z3) {
            if (checkPlayServices()) {
                FirebaseInstanceId.getInstance().getInstanceId().addOnCompleteListener(new OnCompleteListener<InstanceIdResult>() { // from class: com.narvii.pushservice.PushService.5
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public void onComplete(Task<InstanceIdResult> task) {
                        String token;
                        if (task.isSuccessful()) {
                            token = task.getResult().getToken();
                            Log.i(PushService.TAG, "fcm register: " + token);
                        } else {
                            Log.w(PushService.TAG, "fail to register fcm", task.getException());
                            token = null;
                        }
                        PushService.this.setGcmToken(token, z || z3, callback);
                    }
                });
                return;
            }
            Log.w(TAG, "google play service not available");
            if (!z && !z3) {
                z2 = false;
            }
            bindGcmToken(z2, callback);
            return;
        }
        bindGcmToken(z, callback);
    }

    public void bindGcmToken(boolean z, final Callback<Bundle> callback) {
        String str;
        AccountService accountService = (AccountService) this.context.getService("account");
        String userId = accountService.getUserId();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.lastTokenTime;
        if (jElapsedRealtime > 3600000 + j) {
            if (j == 0) {
            }
            this.lastTokenTime = jElapsedRealtime;
            if (this.context.getContext().getResources().getIdentifier("gcm_defaultSenderId", "string", this.context.getContext().getPackageName()) != 0) {
                new PackageUtils(this.context.getContext());
            }
        }
        final String string = this.prefs.getString("gcmToken", null);
        if (accountService.hasAccount()) {
            String string2 = accountService.getPrefs().getString("sid", null);
            if (string == null) {
                str = null;
            } else {
                str = "GCM$" + userId + "$" + string2 + "$" + string;
            }
            if (str == null) {
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
            String string3 = this.prefs.getString("lastBind", null);
            final boolean zIsEqualsNotNull = Utils.isEqualsNotNull(str, string3);
            if (string3 != null && !z && zIsEqualsNotNull) {
                if (callback != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putBoolean("changed", false);
                    bundle2.putBoolean("bind", true);
                    bundle2.putString("gcmToken", string);
                    callback.call(bundle2);
                    return;
                }
                return;
            }
            if (str.startsWith("GCM$")) {
                ApiRequest.Builder builder = ApiRequest.builder();
                builder.https().post();
                if (NVApplication.CLIENT_TYPE != 101) {
                    builder.global();
                }
                builder.path("/device").silent();
                builder.param("deviceID", accountService.getDeviceId()).param("deviceToken", string).param("deviceTokenType", 1).param("bundleID", this.context.getContext().getPackageName()).param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE)).param("timezone", Integer.valueOf(TimeZone.getDefault().getRawOffset() / 60000)).param("systemPushEnabled", Boolean.valueOf(new NotificationManagerHelper(this.context.getContext()).areNotificationsEnabled()));
                builder.tag(ApiService.DISABLE_RELOGIN_TAG);
                final String str2 = str;
                ((ApiService) this.context.getService("api")).exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.pushservice.PushService.6
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                        Log.i(PushService.TAG, "gcm token reged on server");
                        PushService.this.prefs.edit().putString("lastBind", str2).commit();
                        if (callback != null) {
                            Bundle bundle3 = new Bundle();
                            bundle3.putBoolean("changed", !zIsEqualsNotNull);
                            bundle3.putBoolean("bind", true);
                            bundle3.putString("gcmToken", string);
                            callback.call(bundle3);
                        }
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                        Log.w(PushService.TAG, "fail to reg gcm token (" + i + ")");
                        if (callback != null) {
                            Bundle bundle3 = new Bundle();
                            bundle3.putBoolean("changed", false);
                            bundle3.putBoolean("bind", false);
                            bundle3.putString("gcmToken", string);
                            callback.call(bundle3);
                        }
                    }
                });
                return;
            }
            return;
        }
        boolean zUnbind2 = unbind();
        if (callback != null) {
            Bundle bundle3 = new Bundle();
            bundle3.putBoolean("changed", zUnbind2);
            bundle3.putBoolean("bind", false);
            bundle3.putString("gcmToken", string);
            callback.call(bundle3);
        }
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

    private boolean checkPlayServices() {
        int iIsGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.context.getContext());
        if (iIsGooglePlayServicesAvailable == 0) {
        }
        return iIsGooglePlayServicesAvailable == 0 || iIsGooglePlayServicesAvailable == 2 || iIsGooglePlayServicesAvailable == 9;
    }
}
