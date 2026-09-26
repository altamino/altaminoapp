package com.narvii.util.statistics;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.measurement.AppMeasurement;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.community.AffiliationsService;
import com.narvii.util.ABTest2;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.wallet.MembershipService;
import com.ss.android.tea.common.applog.c;
import com.ss.android.tea.common.applog.d;
import com.ss.android.tea.common.applog.g;
import com.ss.android.tea.common.applog.h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import kotlinx.serialization.json.internal.b;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class TeaManager {
    private static AccountService account;
    private static AffiliationsService affiliations;
    private static boolean headersReady;
    private static boolean inited;
    private static MembershipService membership;
    private static SharedPreferences prefs;
    private static CrashlyticsUtils.CrashLog prevCrashLog;
    private static boolean teaInited;
    private static String teaUserId;
    private static final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.util.statistics.TeaManager.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            TeaManager.headersReady = false;
        }
    };
    private static final AffiliationsService.AffiliationChangeListener affiliationsListener = new AffiliationsService.AffiliationChangeListener() { // from class: com.narvii.util.statistics.TeaManager.3
        @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
        public void onAffiliationChanged() {
            TeaManager.headersReady = false;
        }
    };

    public static void logEvent(NVContext nVContext, StatisticsEventBuilder statisticsEventBuilder) {
        if (TextUtils.isEmpty(statisticsEventBuilder.eventName) || !prepareTea(nVContext.getContext())) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, Object> entry : statisticsEventBuilder.params.entrySet()) {
                jSONObject.put(teaName(entry.getKey()), teaValue(entry.getValue()));
            }
            s6.a.a(teaName(statisticsEventBuilder.eventName), jSONObject);
        } catch (Exception unused) {
        }
    }

    public static void init(Context context) {
        if (inited) {
            return;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.narvii.util.statistics.TeaManager.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                if (TeaManager.prepareTea(activity)) {
                    d.h(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                if (TeaManager.prepareTea(activity)) {
                    d.i(activity);
                }
            }
        });
        inited = true;
        prevCrashLog = CrashlyticsUtils.prevCrashLog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean prepareTea(Context context) {
        if (!inited) {
            return false;
        }
        if (account == null) {
            account = (AccountService) NVApplication.instance().getService("account");
        }
        if (affiliations == null) {
            affiliations = (AffiliationsService) NVApplication.instance().getService("affiliations");
        }
        if (membership == null) {
            membership = (MembershipService) NVApplication.instance().getService("membership");
        }
        if (prefs == null) {
            prefs = (SharedPreferences) NVApplication.instance().getService(IncubatorApplication.PREFS_SERVICE_KEY);
        }
        if (!teaInited) {
            Locale locale = Locale.getDefault();
            String language = locale.getLanguage();
            Locale locale2 = Locale.US;
            d.e(g.a(context).d(context.getString(R.string.tea_app_name)).e("default").c(Integer.parseInt(context.getString(R.string.tea_app_id))).g(h.AMERICA).f(new c(null, language.toLowerCase(locale2), locale.getCountry().toLowerCase(locale2))).b());
            teaInited = true;
            LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(context);
            BroadcastReceiver broadcastReceiver = receiver;
            localBroadcastManagerB.c(broadcastReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            localBroadcastManagerB.c(broadcastReceiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
            AffiliationsService affiliationsService = affiliations;
            if (affiliationsService != null) {
                affiliationsService.affiliationChangeListeners.addListener(affiliationsListener);
            }
        }
        String userId = account.getUserId();
        if (!Utils.isEquals(userId, teaUserId)) {
            d.k(userId);
            teaUserId = userId;
            headersReady = false;
        }
        if (!headersReady) {
            HashMap map = new HashMap();
            map.put("client_type", "Android");
            map.put("login_status", account.hasAccount() ? "True" : "False");
            if (NVApplication.CLIENT_TYPE == 100) {
                map.put("installed_master", "True");
                map.put("latest_app", "Master");
            }
            if (NVApplication.CLIENT_TYPE == 200) {
                map.put("installed_acm", "True");
            }
            if (affiliations != null) {
                StringBuilder sb = new StringBuilder();
                Iterator<Integer> it = affiliations.affiliations().iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(b.COMMA);
                }
                map.put("affiliations", sb.toString());
            }
            map.put("email_activated", account.hasEmailActivation() ? "True" : "False");
            map.put("amino_plus_membership", membership.isMembership() ? "True" : "False");
            map.put("amino_plus_expired", membership.hasMemberShipExpired() ? "True" : "False");
            map.put("amino_plus_autorenew", membership.isAutoRenew() ? "True" : "False");
            map.put("optin_ads_on", account.optinAdsLevel() > 0 ? "True" : "False");
            boolean zLogTea = a0.b.q() ? ABTest2.logTea(NVApplication.instance(), map) : false;
            d.j(map);
            headersReady = zLogTea;
        }
        if (prevCrashLog != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("type", prevCrashLog.crashType);
                jSONObject.put("name", teaValue(prevCrashLog.errorType));
                jSONObject.put(AccountNotice.LEVEL_MESSAGE, teaValue(prevCrashLog.errorMessage));
                jSONObject.put("stack", teaValue(prevCrashLog.errorStack));
                jSONObject.put("states", teaValue(prevCrashLog.states));
            } catch (Exception unused) {
            }
            s6.a.a(AppMeasurement.CRASH_ORIGIN, jSONObject);
            prevCrashLog = null;
        }
        return true;
    }

    private static String teaName(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i10 = 0;
        char c7 = 0;
        char c10 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt >= '0' && cCharAt <= '9') || (cCharAt >= 'a' && cCharAt <= 'z')) {
                sb.append(cCharAt);
                c7 = cCharAt;
            } else if (cCharAt >= 'A' && cCharAt <= 'Z') {
                if (c10 >= 'a' && c10 <= 'z' && c7 != '_') {
                    sb.append('_');
                }
                c7 = (char) (cCharAt + ' ');
                sb.append(c7);
            } else if (c7 != '_') {
                sb.append('_');
                c7 = '_';
            }
            i10++;
            c10 = cCharAt;
        }
        return sb.toString();
    }

    private static Object teaValue(Object obj) {
        if (obj instanceof Double) {
            return Float.valueOf(((Double) obj).floatValue());
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? "True" : "False";
        }
        return ("".equals(obj) || obj == null) ? "null" : obj;
    }

    public static void logEvent(NVContext nVContext, String str, Object[] objArr) {
        if (TextUtils.isEmpty(str) || !prepareTea(nVContext.getContext())) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (int i10 = 0; i10 < objArr.length; i10 += 2) {
                jSONObject.put(teaName((String) objArr[i10]), teaValue(objArr[i10 + 1]));
            }
            s6.a.a(teaName(str), jSONObject);
        } catch (Exception unused) {
        }
    }

    public static void logEvent(NVContext nVContext, String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || !prepareTea(nVContext.getContext())) {
            return;
        }
        try {
            s6.a.a(str, jSONObject);
        } catch (Exception unused) {
        }
    }
}
