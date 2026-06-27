package com.narvii.pushservice;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.google.android.exoplayer2.offline.DownloadService;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.services.ServiceManager;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;

/* loaded from: classes.dex */
public abstract class PushApplication extends NVApplication {
    private final PushNotificationService pushNotificationService;
    private final BroadcastReceiver receiver;

    protected PushApplication(boolean z, int i, String str) {
        super(z, i, str);
        this.pushNotificationService = new PushNotificationService();
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.pushservice.PushApplication.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction()) || AccountService.ACTION_SID_CHANGED.equals(intent.getAction())) {
                    ((PushService) PushApplication.this.getService("push")).bindGcmToken(false, null);
                }
            }
        };
    }

    @Override // com.narvii.app.NVApplication
    protected void initApplicationServices(ServiceManager serviceManager) {
        serviceManager.addServiceProvider("_push", new PushStartupService());
        serviceManager.addServiceProvider("push", new PushServiceProvider());
        serviceManager.addServiceProvider("_pushNotification", this.pushNotificationService);
        serviceManager.addServiceProvider("_wsPushRelay", new WsPushRelayProvider());
    }

    @Override // com.narvii.app.NVApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        LocalBroadcastManager.getInstance(this).registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_SID_CHANGED));
    }

    @Override // com.narvii.app.NVApplication
    protected boolean activityOnCreate(Activity activity) {
        int intExtra;
        boolean zActivityOnCreate = super.activityOnCreate(activity);
        if (activity != null && !activity.getClass().getSimpleName().contains("ForwardActivity")) {
            if (activity.getIntent() != null && (intExtra = activity.getIntent().getIntExtra("_pushClearType", 0)) != 0) {
                ((PushService) getService("push")).dismissNotification(activity.getIntent().getIntExtra("_pushClearCid", 0), intExtra);
            }
            if (activity.getIntent() != null && activity.getIntent().hasExtra("_pushTrackId")) {
                boolean z = ((PushService) getService("push")).resumed;
                String stringExtra = activity.getIntent().getStringExtra("_pushTrackId");
                ((ApiService) getService("api")).exec(ApiRequest.builder().global().post().path("push/track").param("trackId", stringExtra).param("trackType", "open").param("scenario", z ? DownloadService.KEY_FOREGROUND : "background").tag(ApiService.ASYNC_CALL_TAG).build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
                Log.i("narvii_push", "push open with trackId: " + stringExtra);
            }
        }
        return zActivityOnCreate;
    }

    private class PushStartupService implements AutostartServiceProvider<Object> {
        @Override // com.narvii.services.ServiceProvider
        public void destroy(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void pause(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void resume(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void stop(NVContext nVContext, Object obj) {
        }

        private PushStartupService() {
        }

        @Override // com.narvii.services.ServiceProvider
        public Object create(NVContext nVContext) {
            return new Object();
        }

        @Override // com.narvii.services.ServiceProvider
        public void start(NVContext nVContext, Object obj) {
            ((PushService) nVContext.getService("push")).updateGcmToken(false, null);
        }
    }
}
