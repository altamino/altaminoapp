package com.narvii.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.provider.Settings;
import android.support.v4.content.LocalBroadcastManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogEventServiceImpl;
import com.narvii.logging.service.LogEventService;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AppLogEventServiceProvider implements AutostartServiceProvider<LogEventService>, EventLogProfileService.EventLogProfileListener {
    boolean launched;
    LogEventServiceImpl logEventServiceImpl;
    private boolean loggingVI;
    NVContext nvContext;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.services.AppLogEventServiceProvider.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                AppLogEventServiceProvider.this.logIDFA();
            }
        }
    };

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void clearResponseWhenAccountChange() {
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LogEventService logEventService) {
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onRequestFailed(String str, boolean z) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LogEventService logEventService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LogEventService logEventService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LogEventService logEventService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LogEventService logEventService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public LogEventService create(NVContext nVContext) {
        this.nvContext = nVContext;
        ((EventLogProfileService) nVContext.getService("eventLogProfile")).addListener(this);
        if (this.logEventServiceImpl == null) {
            this.logEventServiceImpl = new LogEventServiceImpl(nVContext) { // from class: com.narvii.services.AppLogEventServiceProvider.2
                @Override // com.narvii.logging.LogEventServiceImpl
                protected void sendThirdPartyLog(NVContext nVContext2, LogEvent logEvent, JSONObject jSONObject) {
                }
            };
        }
        LocalBroadcastManager.getInstance(this.nvContext.getContext()).registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        logIDFA();
        return this.logEventServiceImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logIDFA() {
        AsyncTask.execute(new Runnable() { // from class: com.narvii.services.AppLogEventServiceProvider.3
            @Override // java.lang.Runnable
            public void run() {
                AdvertisingIdClient.Info advertisingIdInfo;
                final String string = null;
                try {
                    advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(AppLogEventServiceProvider.this.nvContext.getContext());
                } catch (Throwable th) {
                    Log.i("fail to get idfa", th);
                    advertisingIdInfo = null;
                }
                final String id = advertisingIdInfo != null ? advertisingIdInfo.getId() : null;
                try {
                    string = Settings.Secure.getString(NVApplication.instance().getContentResolver(), "android_id");
                } catch (Exception unused) {
                }
                Utils.post(new Runnable() { // from class: com.narvii.services.AppLogEventServiceProvider.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LogEvent.builder(AppLogEventServiceProvider.this.nvContext).appEvent().actType(ActType.auto).actSemantic(ActSemantic.idfa).extraParam("idfa", id).extraParam("androidId", string).send();
                    }
                });
            }
        });
    }

    private void tryLogVIInfo() {
        SharedPreferences sharedPreferences = (SharedPreferences) this.nvContext.getService("prefs");
        if (sharedPreferences == null || sharedPreferences.getBoolean("viInfoSent", false) || this.loggingVI) {
            return;
        }
        this.loggingVI = true;
        new Thread(new Runnable() { // from class: com.narvii.services.AppLogEventServiceProvider.4
            @Override // java.lang.Runnable
            public void run() {
                ApplicationInfo applicationInfo;
                String outPut = "";
                try {
                    try {
                        PackageManager packageManager = AppLogEventServiceProvider.this.nvContext.getContext().getPackageManager();
                        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
                        ArrayList arrayList = new ArrayList();
                        for (PackageInfo packageInfo : installedPackages) {
                            if (packageInfo != null && !TextUtils.isEmpty(packageInfo.packageName) && (applicationInfo = packageManager.getApplicationInfo(packageInfo.packageName, 128)) != null) {
                                CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                                if (!android.text.TextUtils.isEmpty(applicationLabel)) {
                                    arrayList.add(applicationLabel.toString());
                                }
                            }
                        }
                        outPut = AppLogEventServiceProvider.this.getOutPut(android.text.TextUtils.join(",", arrayList));
                    } catch (Exception e) {
                        Log.e("viInfo", e);
                    }
                } finally {
                    LogEvent.builder(AppLogEventServiceProvider.this.nvContext).appEvent().actType(ActType.auto).actSemantic(ActSemantic.at).extraParam("viInfo", "").send();
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getOutPut(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] cArr = new char[str.length()];
        for (int i = 0; i < str.length(); i++) {
            cArr[i] = (char) (159 - str.charAt(i));
        }
        return new String(cArr);
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onProfileChanged(EventLogProfileResponse eventLogProfileResponse, boolean z) {
        LogEventServiceImpl logEventServiceImpl = this.logEventServiceImpl;
        if (logEventServiceImpl != null) {
            logEventServiceImpl.setGlobalStrategyInfo(eventLogProfileResponse.globalStrategyInfo);
        }
    }
}
