package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes7.dex */
public class f0 {
    private static final String DELIVERY_METRICS_EXPORT_TO_BIG_QUERY_PREF = "export_to_big_query";
    private static final String FCM_PREFERENCES = "com.google.firebase.messaging";
    private static final String MANIFEST_DELIVERY_METRICS_EXPORT_TO_BIG_QUERY_ENABLED = "delivery_metrics_exported_to_big_query_enabled";
    private static final String REENGAGEMENT_MEDIUM = "notification";
    private static final String REENGAGEMENT_SOURCE = "Firebase";

    public static boolean A(Intent intent) {
        if (intent == null || r(intent)) {
            return false;
        }
        return B(intent.getExtras());
    }

    public static boolean B(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return "1".equals(bundle.getString("google.c.a.e"));
    }

    static boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            com.google.firebase.f.l();
            Context contextK = com.google.firebase.f.l().k();
            SharedPreferences sharedPreferences = contextK.getSharedPreferences(FCM_PREFERENCES, 0);
            if (sharedPreferences.contains(DELIVERY_METRICS_EXPORT_TO_BIG_QUERY_PREF)) {
                return sharedPreferences.getBoolean(DELIVERY_METRICS_EXPORT_TO_BIG_QUERY_PREF, false);
            }
            try {
                PackageManager packageManager = contextK.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(contextK.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey(MANIFEST_DELIVERY_METRICS_EXPORT_TO_BIG_QUERY_ENABLED)) {
                    return applicationInfo.metaData.getBoolean(MANIFEST_DELIVERY_METRICS_EXPORT_TO_BIG_QUERY_ENABLED, false);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        } catch (IllegalStateException unused2) {
            Log.i(e.TAG, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    static t4.a b(t4.a.b bVar, Intent intent) {
        if (intent == null) {
            return null;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        t4.a.C0497a c0497aH = t4.a.p().m(p(extras)).e(bVar).f(f(extras)).i(m()).k(t4.a.d.ANDROID).h(k(extras));
        String strH = h(extras);
        if (strH != null) {
            c0497aH.g(strH);
        }
        String strO = o(extras);
        if (strO != null) {
            c0497aH.l(strO);
        }
        String strC = c(extras);
        if (strC != null) {
            c0497aH.c(strC);
        }
        String strI = i(extras);
        if (strI != null) {
            c0497aH.b(strI);
        }
        String strE = e(extras);
        if (strE != null) {
            c0497aH.d(strE);
        }
        long jN = n(extras);
        if (jN > 0) {
            c0497aH.j(jN);
        }
        return c0497aH.a();
    }

    @Nullable
    static String c(Bundle bundle) {
        return bundle.getString(e.a.COLLAPSE_KEY);
    }

    @Nullable
    static String d(Bundle bundle) {
        return bundle.getString("google.c.a.c_id");
    }

    @Nullable
    static String e(Bundle bundle) {
        return bundle.getString("google.c.a.c_l");
    }

    @NonNull
    static String f(Bundle bundle) {
        String string = bundle.getString(e.a.TO);
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            return (String) Tasks.await(com.google.firebase.installations.g.q(com.google.firebase.f.l()).getId());
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    static String g(Bundle bundle) {
        return bundle.getString("google.c.a.m_c");
    }

    @Nullable
    static String h(Bundle bundle) {
        String string = bundle.getString(e.a.MSGID);
        return string == null ? bundle.getString(e.a.MSGID_SERVER) : string;
    }

    @Nullable
    static String i(Bundle bundle) {
        return bundle.getString("google.c.a.m_l");
    }

    @Nullable
    static String j(Bundle bundle) {
        return bundle.getString("google.c.a.ts");
    }

    @NonNull
    static t4.a.c k(Bundle bundle) {
        return (bundle == null || !h0.t(bundle)) ? t4.a.c.DATA_MESSAGE : t4.a.c.DISPLAY_NOTIFICATION;
    }

    @NonNull
    static String l(Bundle bundle) {
        return (bundle == null || !h0.t(bundle)) ? "data" : "display";
    }

    @Nullable
    static long n(Bundle bundle) {
        if (bundle.containsKey(e.a.SENDER_ID)) {
            try {
                return Long.parseLong(bundle.getString(e.a.SENDER_ID));
            } catch (NumberFormatException e) {
                Log.w(e.TAG, "error parsing project number", e);
            }
        }
        com.google.firebase.f fVarL = com.google.firebase.f.l();
        String strD = fVarL.n().d();
        if (strD != null) {
            try {
                return Long.parseLong(strD);
            } catch (NumberFormatException e2) {
                Log.w(e.TAG, "error parsing sender ID", e2);
            }
        }
        String strC = fVarL.n().c();
        if (strC.startsWith("1:")) {
            String[] strArrSplit = strC.split(":");
            if (strArrSplit.length < 2) {
                return 0L;
            }
            String str = strArrSplit[1];
            if (str.isEmpty()) {
                return 0L;
            }
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException e6) {
                Log.w(e.TAG, "error parsing app ID", e6);
            }
        } else {
            try {
                return Long.parseLong(strC);
            } catch (NumberFormatException e7) {
                Log.w(e.TAG, "error parsing app ID", e7);
            }
        }
        return 0L;
    }

    @Nullable
    static String o(Bundle bundle) {
        String string = bundle.getString("from");
        if (string == null || !string.startsWith("/topics/")) {
            return null;
        }
        return string;
    }

    @NonNull
    static int p(Bundle bundle) {
        Object obj = bundle.get(e.a.TTL);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            Log.w(e.TAG, "Invalid TTL: " + obj);
            return 0;
        }
    }

    @Nullable
    static String q(Bundle bundle) {
        if (bundle.containsKey("google.c.a.udt")) {
            return bundle.getString("google.c.a.udt");
        }
        return null;
    }

    private static boolean r(Intent intent) {
        return FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction());
    }

    public static void s(Intent intent) {
        x("_nd", intent.getExtras());
    }

    public static void t(Intent intent) {
        x("_nf", intent.getExtras());
    }

    private static void w(t4.a.b bVar, Intent intent, @Nullable f2.g gVar) {
        if (gVar == null) {
            Log.e(e.TAG, "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            return;
        }
        t4.a aVarB = b(bVar, intent);
        if (aVarB == null) {
            return;
        }
        try {
            gVar.a("FCM_CLIENT_EVENT_LOGGING", t4.b.class, f2.b.b("proto"), new f2.e() { // from class: com.google.firebase.messaging.e0
                @Override // f2.e
                public final Object apply(Object obj) {
                    return ((t4.b) obj).c();
                }
            }).b(f2.c.d(t4.b.b().b(aVarB).a()));
        } catch (RuntimeException e) {
            Log.w(e.TAG, "Failed to send big query analytics payload.", e);
        }
    }

    @VisibleForTesting
    static void x(String str, Bundle bundle) {
        try {
            com.google.firebase.f.l();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String strD = d(bundle);
            if (strD != null) {
                bundle2.putString("_nmid", strD);
            }
            String strE = e(bundle);
            if (strE != null) {
                bundle2.putString("_nmn", strE);
            }
            String strI = i(bundle);
            if (!TextUtils.isEmpty(strI)) {
                bundle2.putString("label", strI);
            }
            String strG = g(bundle);
            if (!TextUtils.isEmpty(strG)) {
                bundle2.putString("message_channel", strG);
            }
            String strO = o(bundle);
            if (strO != null) {
                bundle2.putString("_nt", strO);
            }
            String strJ = j(bundle);
            if (strJ != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(strJ));
                } catch (NumberFormatException e) {
                    Log.w(e.TAG, "Error while parsing timestamp in GCM event", e);
                }
            }
            String strQ = q(bundle);
            if (strQ != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(strQ));
                } catch (NumberFormatException e2) {
                    Log.w(e.TAG, "Error while parsing use_device_time in GCM event", e2);
                }
            }
            String strL = l(bundle);
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", strL);
            }
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "Logging to scion event=" + str + " scionPayload=" + bundle2);
            }
            com.google.firebase.analytics.connector.a aVar = (com.google.firebase.analytics.connector.a) com.google.firebase.f.l().j(com.google.firebase.analytics.connector.a.class);
            if (aVar != null) {
                aVar.a(AppMeasurement.FCM_ORIGIN, str, bundle2);
            } else {
                Log.w(e.TAG, "Unable to log event: analytics library is missing");
            }
        } catch (IllegalStateException unused) {
            Log.e(e.TAG, "Default FirebaseApp has not been initialized. Skip logging event to GA.");
        }
    }

    private static void y(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (!"1".equals(bundle.getString("google.c.a.tc"))) {
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "Received event with track-conversion=false. Do not set user property");
                return;
            }
            return;
        }
        com.google.firebase.analytics.connector.a aVar = (com.google.firebase.analytics.connector.a) com.google.firebase.f.l().j(com.google.firebase.analytics.connector.a.class);
        if (Log.isLoggable(e.TAG, 3)) {
            Log.d(e.TAG, "Received event with track-conversion=true. Setting user property and reengagement event");
        }
        if (aVar == null) {
            Log.w(e.TAG, "Unable to set user property for conversion tracking:  analytics library is missing");
            return;
        }
        String string = bundle.getString("google.c.a.c_id");
        aVar.b(AppMeasurement.FCM_ORIGIN, "_ln", string);
        Bundle bundle2 = new Bundle();
        bundle2.putString("source", REENGAGEMENT_SOURCE);
        bundle2.putString(com.google.firebase.dynamiclinks.internal.b.KEY_MEDIUM, REENGAGEMENT_MEDIUM);
        bundle2.putString(com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN, string);
        aVar.a(AppMeasurement.FCM_ORIGIN, com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE, bundle2);
    }

    public static boolean z(Intent intent) {
        if (intent == null || r(intent)) {
            return false;
        }
        return a();
    }

    @NonNull
    static String m() {
        return com.google.firebase.f.l().k().getPackageName();
    }

    public static void u(Bundle bundle) {
        y(bundle);
        x("_no", bundle);
    }

    public static void v(Intent intent) {
        if (A(intent)) {
            x("_nr", intent.getExtras());
        }
        if (z(intent)) {
            w(t4.a.b.MESSAGE_DELIVERED, intent, FirebaseMessaging.q());
        }
    }
}
