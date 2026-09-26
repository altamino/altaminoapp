package com.google.firebase.perf.util;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes8.dex */
public class n {
    private static Boolean isDebugLoggingEnabled;

    public static int c(long j6) {
        if (j6 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j6 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j6;
    }

    public static void a(boolean z6, String str) {
        if (!z6) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean b(@NonNull Context context) {
        Boolean bool = isDebugLoggingEnabled;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean boolValueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            isDebugLoggingEnabled = boolValueOf;
            return boolValueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            y4.a.e().a("No perf logcat meta data found " + e.getMessage());
            return false;
        }
    }

    public static String d(@NonNull String str) {
        HttpUrl httpUrl = HttpUrl.parse(str);
        if (httpUrl != null) {
            return httpUrl.newBuilder().username("").password("").query(null).fragment(null).toString();
        }
        return str;
    }

    public static String e(String str, int i10) {
        int iLastIndexOf;
        if (str.length() <= i10) {
            return str;
        }
        if (str.charAt(i10) == '/') {
            return str.substring(0, i10);
        }
        HttpUrl httpUrl = HttpUrl.parse(str);
        if (httpUrl == null) {
            return str.substring(0, i10);
        }
        if (httpUrl.encodedPath().lastIndexOf(47) >= 0 && (iLastIndexOf = str.lastIndexOf(47, i10 - 1)) >= 0) {
            return str.substring(0, iLastIndexOf);
        }
        return str.substring(0, i10);
    }
}
