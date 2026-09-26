package com.ss.android.tea.common.deviceregister;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.bytedance.tea.common.utility.Logger;
import com.bytedance.tea.common.utility.NetworkUtils;
import com.narvii.broadcast.DeliveryTimePickerFragment;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f3204a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static JSONObject f3205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f3206c;
    private static int d;
    private static n6.a e;
    private static String f;
    private static String g;
    private static String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f3207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f3208j;
    private static String k;
    private static String l;
    private static String m;
    private static String n;
    private static d o;
    private static ConcurrentHashMap<String, Object> p;

    public static int a() {
        return d;
    }

    public static void c(d dVar) {
        if (dVar != null) {
            o = dVar;
        }
    }

    public static void e(n6.a aVar) {
        e = aVar;
    }

    private static void j(Context context, JSONObject jSONObject) {
        String str;
        String networkOperatorName;
        String networkOperator = null;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            str = "";
            try {
                networkOperatorName = telephonyManager.getNetworkOperatorName();
                try {
                    networkOperator = telephonyManager.getNetworkOperator();
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                networkOperatorName = null;
            }
        } catch (Exception unused3) {
            str = null;
            networkOperatorName = null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (t6.d.h()) {
                sb.append("MIUI-");
            } else if (t6.d.j()) {
                sb.append("FLYME-");
            } else {
                String strD = t6.d.d();
                if (t6.d.c(strD)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(strD)) {
                    sb.append(strD);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Throwable unused4) {
        }
        d dVar = o;
        if (dVar != null) {
            try {
                String strU = dVar.u();
                String strB = o.B();
                if (!com.bytedance.tea.common.utility.d.a(strB)) {
                    jSONObject.put("clientudid", strB);
                }
                if (!com.bytedance.tea.common.utility.d.a(strU)) {
                    jSONObject.put("openudid", strU);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        try {
            if (!com.bytedance.tea.common.utility.d.a(str)) {
                jSONObject.put("udid", str);
            }
            if (!com.bytedance.tea.common.utility.d.a(networkOperatorName)) {
                jSONObject.put("carrier", networkOperatorName);
            }
            if (!com.bytedance.tea.common.utility.d.a(networkOperator)) {
                jSONObject.put("mcc_mnc", networkOperator);
            }
            if (sb.length() > 0) {
                String string = sb.toString();
                k = string;
                jSONObject.put("rom", string);
            }
        } catch (JSONException e6) {
            Logger.w("RegistrationHeaderHelper", "prepareUDID exception: " + e6);
        }
    }

    public static String b(Context context) {
        Signature[] signatureArr;
        if (com.bytedance.tea.common.utility.d.a(l) && context != null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
                if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length >= 1) {
                    Signature signature = signatureArr[0];
                    if (signature == null) {
                        return l;
                    }
                    l = com.bytedance.tea.common.utility.a.b(signature.toByteArray());
                }
                return l;
            } catch (Exception e2) {
                Logger.w("RegistrationHeaderHelper", "failed to get package sianature: " + e2);
            }
        }
        return l;
    }

    public static void d(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        if (Logger.debug()) {
            Logger.d("RegistrationHeaderHelper", "put header : key = " + str + ", val = " + obj.toString());
        }
        if (p == null) {
            p = new ConcurrentHashMap<>();
        }
        p.put(str, obj);
    }

    /* JADX WARN: Code duplicated, block: B:91:0x0232  */
    public static boolean g(Context context, JSONObject jSONObject) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        String str;
        int i10;
        HashMap map = new HashMap();
        if (f3205b != null) {
            synchronized (f3204a) {
                f(f3205b, jSONObject);
            }
            return true;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            String packageName = context.getPackageName();
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                f3206c = packageInfo.versionName;
                d = packageInfo.versionCode;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            n6.a aVar = e;
            if (aVar != null) {
                map.put("channel", aVar.d());
            }
            map.put("package", context.getPackageName());
            map.put("app_version", f3206c);
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(packageName, 0).applicationInfo;
            if (applicationInfo != null && (i10 = applicationInfo.labelRes) > 0) {
                jSONObject2.put("display_name", context.getString(i10));
            }
            if (e != null) {
                int i11 = d;
                if (i11 > 0) {
                    jSONObject2.put("update_version_code", i11);
                }
                int i12 = d;
                if (i12 > 0) {
                    jSONObject2.put("manifest_version_code", i12);
                }
            }
            String[] strArr = {"channel", "package", "app_version"};
            try {
                jSONObject2.put("aid", e.a());
                for (int i13 = 0; i13 < 3; i13++) {
                    String str2 = strArr[i13];
                    String str3 = (String) map.get(str2);
                    if (com.bytedance.tea.common.utility.d.a(str3)) {
                        Logger.w("RegistrationHeaderHelper", "init fail empty field: channel");
                        return false;
                    }
                    jSONObject2.put(str2, str3);
                }
                jSONObject2.put("version_code", d);
                jSONObject2.put("sdk_version", 2);
                jSONObject2.put("sdk_version_name", "2.4.3");
                jSONObject2.put("os", "Android");
                jSONObject2.put("os_version", Build.VERSION.RELEASE);
                jSONObject2.put("os_api", Build.VERSION.SDK_INT);
                jSONObject2.put("device_model", Build.MODEL);
                jSONObject2.put("device_brand", Build.BRAND);
                jSONObject2.put("device_manufacturer", Build.MANUFACTURER);
                jSONObject2.put("cpu_abi", Build.CPU_ABI);
                jSONObject2.put("build_serial", Build.SERIAL);
                String str4 = f;
                if (str4 == null) {
                    str4 = "";
                }
                jSONObject2.put("release_build", str4);
            } catch (Exception e6) {
                Logger.w("RegistrationHeaderHelper", "init exception 2: " + e6);
            }
            try {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                int i14 = displayMetrics.densityDpi;
                jSONObject2.put("density_dpi", i14);
                if (i14 == 120) {
                    str = "ldpi";
                } else if (i14 != 240) {
                    str = i14 != 320 ? "mdpi" : "xhdpi";
                } else {
                    str = "hdpi";
                }
                jSONObject2.put("display_density", str);
                jSONObject2.put("resolution", displayMetrics.heightPixels + "x" + displayMetrics.widthPixels);
            } catch (Exception e7) {
                Logger.w("RegistrationHeaderHelper", "init exception 3: " + e7);
            }
            try {
                String language = context.getResources().getConfiguration().locale.getLanguage();
                if (!com.bytedance.tea.common.utility.d.a(language)) {
                    jSONObject2.put("language", language);
                }
                String strC = NetworkUtils.c(context);
                if (!com.bytedance.tea.common.utility.d.a(strC)) {
                    jSONObject2.put("mc", strC);
                    g = strC;
                }
                int rawOffset = TimeZone.getDefault().getRawOffset() / DeliveryTimePickerFragment.ONE_HOUR;
                if (rawOffset < -12) {
                    rawOffset = -12;
                }
                if (rawOffset > 12) {
                    rawOffset = 12;
                }
                jSONObject2.put("timezone", rawOffset);
                String strE = NetworkUtils.e(context);
                if (strE != null) {
                    jSONObject2.put("access", strE);
                }
            } catch (Exception e10) {
                Logger.w("RegistrationHeaderHelper", "init exception 4: " + e10);
            }
            j(context, jSONObject2);
            i(context, jSONObject2);
            SharedPreferences sharedPreferences = context.getSharedPreferences("applog_stats", 0);
            String string = sharedPreferences.getString("mac_addr", null);
            String string2 = sharedPreferences.getString("google_aid", null);
            String string3 = sharedPreferences.getString("app_language", null);
            String string4 = sharedPreferences.getString("app_region", null);
            if (!com.bytedance.tea.common.utility.d.a(string)) {
                if (com.bytedance.tea.common.utility.d.a(g)) {
                    g = string;
                    try {
                        jSONObject2.put("mc", string);
                    } catch (JSONException e11) {
                        e11.printStackTrace();
                    }
                } else if (!string.equals(g)) {
                    z6 = true;
                }
                z6 = false;
            } else if (com.bytedance.tea.common.utility.d.a(g)) {
                z6 = false;
            } else {
                z6 = true;
            }
            try {
                String strC2 = a.q() ? r6.a.c(context) : null;
                if (com.bytedance.tea.common.utility.d.a(strC2)) {
                    strC2 = c.a();
                }
                String strC3 = c.c();
                String strE2 = c.e();
                if (com.bytedance.tea.common.utility.d.a(strC2) || strC2.equals(string2)) {
                    z10 = false;
                } else {
                    string2 = strC2;
                    z10 = true;
                }
                if (!com.bytedance.tea.common.utility.d.a(string2)) {
                    jSONObject2.put("google_aid", string2);
                }
                if (com.bytedance.tea.common.utility.d.a(strC3) || strC3.equals(string3)) {
                    z11 = false;
                } else {
                    string3 = strC3;
                    z11 = true;
                }
                if (!com.bytedance.tea.common.utility.d.a(string3)) {
                    jSONObject2.put("app_language", string3);
                }
                if (com.bytedance.tea.common.utility.d.a(strE2) || strE2.equals(string4)) {
                    z12 = false;
                } else {
                    string4 = strE2;
                    z12 = true;
                }
                if (!com.bytedance.tea.common.utility.d.a(string4)) {
                    jSONObject2.put("app_region", string4);
                }
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                if (z10) {
                    editorEdit.putString("google_aid", string2);
                }
                if (z11) {
                    editorEdit.putString("app_language", string3);
                }
                if (z12) {
                    editorEdit.putString("app_region", string4);
                }
                if (z11 || z12 || z10) {
                    editorEdit.commit();
                }
            } catch (Throwable unused) {
            }
            if (z6) {
                SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                editorEdit2.putString("mac_addr", g);
                editorEdit2.commit();
            }
            String string5 = sharedPreferences.getString("app_track", "");
            if (com.bytedance.tea.common.utility.d.a(string5)) {
                string5 = n;
            }
            try {
                if (!com.bytedance.tea.common.utility.d.a(string5)) {
                    jSONObject2.put("app_track", new JSONObject(string5));
                }
            } catch (Throwable th) {
                th.printStackTrace();
                Logger.w("RegistrationHeaderHelper", "init exception 5: " + th);
            }
            try {
                d dVar = o;
                if (dVar != null) {
                    h = dVar.J();
                    f3207i = o.F();
                    f3208j = o.H();
                }
                if (!com.bytedance.tea.common.utility.d.a(h)) {
                    jSONObject2.put("install_id", h);
                }
                if (!com.bytedance.tea.common.utility.d.a(f3207i)) {
                    jSONObject2.put("device_id", f3207i);
                }
                if (!com.bytedance.tea.common.utility.d.a(f3208j)) {
                    jSONObject2.put("ssid", f3208j);
                }
            } catch (Exception e12) {
                e12.printStackTrace();
                Logger.w("RegistrationHeaderHelper", "init exception 6: " + e12);
            }
            try {
                String country = Locale.getDefault().getCountry();
                if (!com.bytedance.tea.common.utility.d.a(country)) {
                    jSONObject2.put("region", country);
                }
                String id = Calendar.getInstance().getTimeZone().getID();
                if (!com.bytedance.tea.common.utility.d.a(id)) {
                    jSONObject2.put("tz_name", id);
                }
                jSONObject2.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis() / 1000));
                String simCountryIso = ((TelephonyManager) context.getSystemService("phone")).getSimCountryIso();
                if (!com.bytedance.tea.common.utility.d.a(simCountryIso)) {
                    jSONObject2.put("sim_region", simCountryIso);
                }
            } catch (Throwable th2) {
                Logger.w("RegistrationHeaderHelper", "init exception 7: " + th2);
            }
            try {
                SharedPreferences sharedPreferences2 = context.getSharedPreferences("header_custom", 0);
                String string6 = sharedPreferences2.getString("header_custom_info", null);
                if (string6 != null && string6.length() > 0) {
                    JSONObject jSONObject3 = new JSONObject(string6);
                    if (jSONObject3.length() > 0) {
                        jSONObject2.put("custom", jSONObject3);
                    }
                }
                String string7 = sharedPreferences2.getString("user_unique_id", null);
                if (com.bytedance.tea.common.utility.d.a(string7)) {
                    String strI = a.i();
                    if (!com.bytedance.tea.common.utility.d.a(strI)) {
                        jSONObject2.put("user_unique_id", strI);
                    }
                } else {
                    jSONObject2.put("user_unique_id", string7);
                    d.o(string7);
                }
            } catch (Throwable th3) {
                Logger.w("RegistrationHeaderHelper", "init exception 8: " + th3);
            }
            ConcurrentHashMap<String, Object> concurrentHashMap = p;
            if (concurrentHashMap != null) {
                for (Map.Entry<String, Object> entry : concurrentHashMap.entrySet()) {
                    try {
                        if (entry.getValue() != null) {
                            jSONObject2.put(entry.getKey(), entry.getValue());
                        }
                    } catch (JSONException e13) {
                        e13.printStackTrace();
                    }
                }
            }
            synchronized (f3204a) {
                f3205b = jSONObject2;
                f(jSONObject2, jSONObject);
            }
            return true;
        } catch (Exception e14) {
            Logger.w("RegistrationHeaderHelper", "init exception 1: " + e14);
            return false;
        }
    }

    public static String h(Context context) {
        if (com.bytedance.tea.common.utility.d.a(m)) {
            m = context.getSharedPreferences("applog_stats", 0).getString("user_agent", null);
        }
        return m;
    }

    private static void f(JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                jSONObject2.put(next, jSONObject.opt(next));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void i(Context context, JSONObject jSONObject) {
        String strB = b(context);
        if (strB != null) {
            try {
                jSONObject.put("sig_hash", strB);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }
}
