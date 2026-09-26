package com.bytedance.tea.common.utility;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public class Logger {
    private static final String TAG = "Logger";
    static int mLevel = 4;

    public static void d(String str) {
        d(TAG, str);
    }

    public static boolean debug() {
        return mLevel <= 3;
    }

    public static void e(String str) {
        e(TAG, str);
    }

    public static int getLogLevel() {
        return mLevel;
    }

    public static void i(String str) {
        i(TAG, str);
    }

    public static void setLogLevel(int i10) {
        mLevel = i10;
    }

    public static void v(String str) {
        v(TAG, str);
    }

    public static void w(String str) {
        w(TAG, str);
    }

    public static void d(String str, String str2) {
        if (str2 != null && mLevel <= 3) {
            Log.d(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (str2 != null && mLevel <= 6) {
            Log.e(str, str2);
        }
    }

    private static String getSimpleClassName(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf < 0 ? str : str.substring(iLastIndexOf + 1);
    }

    public static void i(String str, String str2) {
        if (str2 != null && mLevel <= 4) {
            Log.i(str, str2);
        }
    }

    public static void st(String str, int i10) {
        try {
            throw new Exception();
        } catch (Exception e) {
            StackTraceElement[] stackTrace = e.getStackTrace();
            StringBuilder sb = new StringBuilder();
            for (int i11 = 1; i11 < Math.min(i10, stackTrace.length); i11++) {
                if (i11 > 1) {
                    sb.append("\n");
                }
                sb.append(getSimpleClassName(stackTrace[i11].getClassName()));
                sb.append(".");
                sb.append(stackTrace[i11].getMethodName());
            }
            v(str, sb.toString());
        }
    }

    public static void throwException(Throwable th) {
        if (th == null) {
            return;
        }
        th.printStackTrace();
        if (debug()) {
            throw new RuntimeException("Error! Now in debug, we alert to you to correct it !", th);
        }
    }

    public static void v(String str, String str2) {
        if (str2 != null && mLevel <= 2) {
            Log.v(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (str2 != null && mLevel <= 5) {
            Log.w(str, str2);
        }
    }

    public static void alertErrorInfo(String str) {
        if (!debug()) {
        } else {
            throw new IllegalStateException(str);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (!(str2 == null && th == null) && mLevel <= 3) {
            Log.d(str, str2, th);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (!(str2 == null && th == null) && mLevel <= 6) {
            Log.e(str, str2, th);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (!(str2 == null && th == null) && mLevel <= 4) {
            Log.i(str, str2, th);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (!(str2 == null && th == null) && mLevel <= 2) {
            Log.v(str, str2, th);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (!(str2 == null && th == null) && mLevel <= 5) {
            Log.w(str, str2, th);
        }
    }
}
