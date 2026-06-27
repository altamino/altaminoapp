package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public class zzbad {
    public static void zzdp(String str) {
        if (isLoggable(3)) {
            Log.d("Ads", str);
        }
    }

    public static void zzb(String str, Throwable th) {
        if (isLoggable(3)) {
            Log.d("Ads", str, th);
        }
    }

    public static void zzen(String str) {
        if (isLoggable(6)) {
            Log.e("Ads", str);
        }
    }

    public static void zzc(String str, Throwable th) {
        if (isLoggable(6)) {
            Log.e("Ads", str, th);
        }
    }

    public static void zzeo(String str) {
        if (isLoggable(4)) {
            Log.i("Ads", str);
        }
    }

    public static void zzep(String str) {
        if (isLoggable(5)) {
            Log.w("Ads", str);
        }
    }

    public static void zzd(String str, Throwable th) {
        if (isLoggable(5)) {
            Log.w("Ads", str, th);
        }
    }

    @VisibleForTesting
    private static String zzeq(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4) {
            return str;
        }
        int lineNumber = stackTrace[3].getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append(" @");
        sb.append(lineNumber);
        return sb.toString();
    }

    public static void zze(String str, Throwable th) {
        if (isLoggable(5)) {
            if (th != null) {
                zzd(zzeq(str), th);
            } else {
                zzep(zzeq(str));
            }
        }
    }

    public static void zzer(String str) {
        zze(str, null);
    }

    public static boolean isLoggable(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }
}
