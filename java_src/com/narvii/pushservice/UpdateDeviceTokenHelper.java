package com.narvii.pushservice;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.api.ApiResponse;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Log;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.TmpValue;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class UpdateDeviceTokenHelper implements AutostartServiceProvider<Object> {
    public static final TmpValue<Integer> GLOBAL_ENTER = new TmpValue<>();
    static final long REQUEST_DURATION = 600000;
    private static final String REQ_TAG = "cid";
    public AccountService accountService;
    LocalBroadcastManager lbm;
    String prevUid;
    final HashMap<Integer, Long> requestTime = new HashMap<>();
    final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.pushservice.UpdateDeviceTokenHelper.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NVApplication nVApplicationInstance = NVApplication.instance();
            if (!Utils.isEquals(((AccountService) nVApplicationInstance.getService("account")).getUserId(), UpdateDeviceTokenHelper.this.prevUid)) {
                UpdateDeviceTokenHelper.this.requestTime.clear();
            }
            UpdateDeviceTokenHelper.this.sendDeviceRequest(nVApplicationInstance, 0);
        }
    };
    private final ApiResponseListener<DeviceResponse> deviceInfoListener = new ApiResponseListener<DeviceResponse>(DeviceResponse.class) { // from class: com.narvii.pushservice.UpdateDeviceTokenHelper.2
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            if (i == 232) {
                Log.w("global device token not exists, try to bind again");
                ((PushService) NVApplication.instance().getService("push")).bindGcmToken(true, null);
            } else if (i == 0) {
                UpdateDeviceTokenHelper.this.requestTime.remove(Integer.valueOf(apiRequest.tagInt(UpdateDeviceTokenHelper.REQ_TAG, 0)));
            }
        }
    };

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
        Long l;
        if ((nVContext instanceof Application) && this.lbm == null) {
            this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
            this.lbm.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        }
        if (!Utils.isEquals(((AccountService) nVContext.getService("account")).getUserId(), this.prevUid)) {
            this.requestTime.clear();
        }
        int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        if (GLOBAL_ENTER.compareAndRemove(Integer.valueOf(communityId)) && (l = this.requestTime.get(Integer.valueOf(communityId))) != null && l.longValue() > SystemClock.elapsedRealtime() - 600000) {
            Log.i("enter community by headline, skip /device");
        } else {
            this.requestTime.put(Integer.valueOf(communityId), Long.valueOf(SystemClock.elapsedRealtime()));
            sendDeviceRequest(nVContext, communityId);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
        LocalBroadcastManager localBroadcastManager;
        if (!(nVContext instanceof Application) || (localBroadcastManager = this.lbm) == null) {
            return;
        }
        localBroadcastManager.unregisterReceiver(this.receiver);
        this.lbm = null;
    }

    void sendDeviceRequest(NVContext nVContext, int i) {
        this.accountService = (AccountService) nVContext.getService("account");
        int timeZoneInMin = Utils.getTimeZoneInMin();
        NotificationManagerHelper notificationManagerHelper = new NotificationManagerHelper(nVContext.getContext());
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().communityId(i);
        builder.path("/device").silent();
        builder.param("deviceID", this.accountService.getDeviceId()).param("bundleID", nVContext.getContext().getPackageName()).param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE)).param("timezone", Integer.valueOf(timeZoneInMin)).param("systemPushEnabled", Boolean.valueOf(notificationManagerHelper.areNotificationsEnabled())).param("locale", Locale.getDefault().toString()).tag(ApiService.ASYNC_CALL_TAG).tag(REQ_TAG, Integer.valueOf(i));
        String gcmToken = ((PushService) nVContext.getService("push")).getGcmToken();
        if (!TextUtils.isEmpty(gcmToken)) {
            builder.param("deviceToken", gcmToken);
            builder.param("deviceTokenType", 1);
        }
        ((ApiService) nVContext.getService("api")).exec(builder.build(), this.deviceInfoListener);
    }
}
