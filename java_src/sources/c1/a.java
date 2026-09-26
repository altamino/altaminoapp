package c1;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f889c;

    static {
        boolean zIsLoggable = Log.isLoggable("OcsBase", 3);
        f888b = zIsLoggable;
        f889c = zIsLoggable;
    }

    public static void a(Context context) {
        if (context != null) {
            boolean z6 = Settings.System.getInt(context.getContentResolver(), "log_switch_type", 0) != 0;
            f887a = z6;
            f889c = z6 || f888b;
            Log.i("OcsBase", "AFLog, sIsLogOn = " + f887a + ", sIsDebugTagOn = " + f888b);
        }
    }

    public static void b(String str) {
        if (f889c) {
            Log.d("OcsBase", str);
        }
    }

    public static void c(String str, String str2) {
        if (f889c) {
            Log.v("OcsBase.".concat(String.valueOf(str)), str2);
        }
    }

    public static void d(String str, String str2) {
        if (f889c) {
            Log.d("OcsBase.".concat(String.valueOf(str)), str2);
        }
    }

    public static void e(String str, String str2) {
        Log.i("OcsBase.".concat(String.valueOf(str)), str2);
    }

    public static void f(String str, String str2) {
        Log.e("OcsBase.".concat(String.valueOf(str)), str2);
    }
}
