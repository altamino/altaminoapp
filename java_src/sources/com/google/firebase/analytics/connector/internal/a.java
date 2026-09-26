package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzie;
import com.google.android.gms.measurement.internal.zzii;
import com.google.android.gms.measurement.internal.zzij;
import com.google.android.gms.measurement.internal.zzkf;
import com.google.common.collect.a0;
import com.google.common.collect.d0;

/* JADX INFO: loaded from: classes11.dex */
public final class a {
    private static final d0<String> zza = d0.C("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");
    private static final a0<String> zzb = a0.C("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");
    private static final a0<String> zzc = a0.A("auto", "app", "am");
    private static final a0<String> zzd = a0.z("_r", "_dbg");
    private static final a0<String> zze = new a0.a().i(zzij.zza).i(zzij.zzb).k();
    private static final a0<String> zzf = a0.z("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static boolean g(com.google.firebase.analytics.connector.a.c cVar) {
        String str;
        if (cVar == null || (str = cVar.origin) == null || str.isEmpty()) {
            return false;
        }
        Object obj = cVar.value;
        if ((obj != null && zzkf.zza(obj) == null) || !j(str) || !f(str, cVar.name)) {
            return false;
        }
        String str2 = cVar.expiredEventName;
        if (str2 != null && (!e(str2, cVar.expiredEventParams) || !h(str, cVar.expiredEventName, cVar.expiredEventParams))) {
            return false;
        }
        String str3 = cVar.triggeredEventName;
        if (str3 != null && (!e(str3, cVar.triggeredEventParams) || !h(str, cVar.triggeredEventName, cVar.triggeredEventParams))) {
            return false;
        }
        String str4 = cVar.timedOutEventName;
        if (str4 != null) {
            return e(str4, cVar.timedOutEventParams) && h(str, cVar.timedOutEventName, cVar.timedOutEventParams);
        }
        return true;
    }

    public static Bundle a(com.google.firebase.analytics.connector.a.c cVar) {
        Bundle bundle = new Bundle();
        String str = cVar.origin;
        if (str != null) {
            bundle.putString("origin", str);
        }
        String str2 = cVar.name;
        if (str2 != null) {
            bundle.putString("name", str2);
        }
        Object obj = cVar.value;
        if (obj != null) {
            zzie.zza(bundle, obj);
        }
        String str3 = cVar.triggerEventName;
        if (str3 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str3);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, cVar.triggerTimeout);
        String str4 = cVar.timedOutEventName;
        if (str4 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, str4);
        }
        Bundle bundle2 = cVar.timedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, bundle2);
        }
        String str5 = cVar.triggeredEventName;
        if (str5 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, str5);
        }
        Bundle bundle3 = cVar.triggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, bundle3);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, cVar.timeToLive);
        String str6 = cVar.expiredEventName;
        if (str6 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str6);
        }
        Bundle bundle4 = cVar.expiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle4);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, cVar.creationTimestamp);
        bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, cVar.active);
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, cVar.triggeredTimestamp);
        return bundle;
    }

    public static void d(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    public static boolean e(String str, Bundle bundle) {
        if (zzb.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        a0<String> a0Var = zzd;
        int size = a0Var.size();
        int i10 = 0;
        while (i10 < size) {
            String str2 = a0Var.get(i10);
            i10++;
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean f(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals(AppMeasurement.FIAM_ORIGIN);
        }
        if (zze.contains(str2)) {
            return false;
        }
        a0<String> a0Var = zzf;
        int size = a0Var.size();
        int i10 = 0;
        while (i10 < size) {
            String str3 = a0Var.get(i10);
            i10++;
            if (str2.matches(str3)) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(String str, String str2, Bundle bundle) {
        if (!com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE.equals(str2)) {
            return true;
        }
        if (!j(str) || bundle == null) {
            return false;
        }
        a0<String> a0Var = zzd;
        int size = a0Var.size();
        int i10 = 0;
        while (i10 < size) {
            String str3 = a0Var.get(i10);
            i10++;
            if (bundle.containsKey(str3)) {
                return false;
            }
        }
        str.hashCode();
        switch (str) {
            case "fcm":
                bundle.putString("_cis", "fcm_integration");
                return true;
            case "fdl":
                bundle.putString("_cis", "fdl_integration");
                return true;
            case "fiam":
                bundle.putString("_cis", "fiam_integration");
                return true;
            default:
                return false;
        }
    }

    public static boolean i(String str) {
        return !zza.contains(str);
    }

    public static boolean j(String str) {
        return !zzc.contains(str);
    }

    public static com.google.firebase.analytics.connector.a.c b(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        com.google.firebase.analytics.connector.a.c cVar = new com.google.firebase.analytics.connector.a.c();
        cVar.origin = (String) Preconditions.checkNotNull((String) zzie.zza(bundle, "origin", String.class, null));
        cVar.name = (String) Preconditions.checkNotNull((String) zzie.zza(bundle, "name", String.class, null));
        cVar.value = zzie.zza(bundle, "value", Object.class, null);
        cVar.triggerEventName = (String) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        cVar.triggerTimeout = ((Long) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
        cVar.timedOutEventName = (String) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        cVar.timedOutEventParams = (Bundle) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        cVar.triggeredEventName = (String) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        cVar.triggeredEventParams = (Bundle) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        cVar.timeToLive = ((Long) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
        cVar.expiredEventName = (String) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        cVar.expiredEventParams = (Bundle) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        cVar.active = ((Boolean) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, Boolean.FALSE)).booleanValue();
        cVar.creationTimestamp = ((Long) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
        cVar.triggeredTimestamp = ((Long) zzie.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
        return cVar;
    }

    public static String c(String str) {
        String strZza = zzii.zza(str);
        if (strZza != null) {
            return strZza;
        }
        return str;
    }
}
