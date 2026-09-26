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
import android.os.SystemClock;
import android.provider.Settings;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.logging.LogContextInfo;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogEventServiceImpl;
import com.narvii.logging.LogUtils;
import com.narvii.logging.service.LogEventService;
import com.narvii.nvplayer.BufferingQuit;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.pushservice.PushNotificationService;
import com.narvii.pushservice.PushPayload;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.statistics.TeaManager;
import com.narvii.util.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class AppLogEventServiceProvider implements AutostartServiceProvider<LogEventService>, EventLogProfileService.EventLogProfileListener {
    long appLaunchTime;
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
    public void onRequestFailed(String str, boolean z6) {
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void shouldShowDialog() {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LogEventService logEventService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LogEventService logEventService) {
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
                    Log.e("fail to get idfa", th);
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
        SharedPreferences sharedPreferences = (SharedPreferences) this.nvContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
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

    @Override // com.narvii.services.ServiceProvider
    public LogEventService create(NVContext nVContext) {
        this.nvContext = nVContext;
        ((EventLogProfileService) nVContext.getService("eventLogProfile")).addListener(this);
        if (this.logEventServiceImpl == null) {
            this.logEventServiceImpl = new LogEventServiceImpl(nVContext) { // from class: com.narvii.services.AppLogEventServiceProvider.2
                @Override // com.narvii.logging.LogEventServiceImpl
                protected void sendThirdPartyLog(NVContext nVContext2, LogEvent logEvent, JSONObject jSONObject) {
                    TeaManager.logEvent(nVContext2, logEvent.actSemantic, jSONObject);
                }

                @Override // com.narvii.logging.LogEventServiceImpl
                protected JSONObject getAbTestConfigJsonObject() {
                    return com.ss.android.tea.common.applog.d.b();
                }
            };
        }
        LocalBroadcastManager.b(this.nvContext.getContext()).c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        logIDFA();
        return this.logEventServiceImpl;
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onProfileChanged(EventLogProfileResponse eventLogProfileResponse, boolean z6) {
        LogEventServiceImpl logEventServiceImpl = this.logEventServiceImpl;
        if (logEventServiceImpl != null) {
            logEventServiceImpl.setGlobalStrategyInfo(eventLogProfileResponse.globalStrategyInfo);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LogEventService logEventService) {
        LogEvent.Builder builderExtraParam = LogEvent.builder(nVContext).actClick().allowNoPage().actSemantic(ActSemantic.appQuit).extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(SystemClock.elapsedRealtime() - this.appLaunchTime));
        WeakReference<NVContext> weakReference = LogUtils.lastPauseContext;
        LogContextInfo logContextInfo = weakReference != null ? LogUtils.getLogContextInfo(weakReference.get()) : null;
        if (logContextInfo != null) {
            builderExtraParam.page(logContextInfo.pageName);
            builderExtraParam.pvId(logContextInfo.pvId);
            if (LogUtils.isStoryDetailPage(logContextInfo.pageName)) {
                NVPlayerManager.getNVPlayer(nVContext.getContext()).getVideoLogHelper().storyQuitOnBuffering(BufferingQuit.HOME);
            }
        }
        builderExtraParam.toThirdParty().send();
        LogEventServiceImpl logEventServiceImpl = this.logEventServiceImpl;
        if (logEventServiceImpl != null) {
            logEventServiceImpl.setPushTackId(null);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LogEventService logEventService) {
        PushNotificationService.PushFrom andRemove = PushNotificationService.FROM_PUSH.getAndRemove();
        LogEvent.Builder builderExtraParam = LogEvent.builder(nVContext).actClick().allowNoPage().actSemantic(ActSemantic.appLaunch).extraParam("launchType", this.launched ? "quickStart" : "coldStart");
        if (andRemove != null) {
            builderExtraParam.extraParam("launchFrom", "push");
            PushPayload pushPayload = andRemove.fromPushPayload;
            if (pushPayload != null) {
                LogEventServiceImpl logEventServiceImpl = this.logEventServiceImpl;
                if (logEventServiceImpl != null) {
                    logEventServiceImpl.setPushTackId(pushPayload.trackId);
                }
                builderExtraParam.extraParam("pushInfo", JacksonUtils.writeAsString(andRemove.fromPushPayload));
            }
        }
        builderExtraParam.toThirdParty().send();
        this.appLaunchTime = SystemClock.elapsedRealtime();
        this.launched = true;
        tryLogVIInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getOutPut(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] cArr = new char[str.length()];
        for (int i10 = 0; i10 < str.length(); i10++) {
            cArr[i10] = (char) (159 - str.charAt(i10));
        }
        return new String(cArr);
    }
}
