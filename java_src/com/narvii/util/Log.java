package com.narvii.util;

import com.narvii.app.NVApplication;
import com.narvii.util.log.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class Log {
    static final int DEFAULT_MAX_CHUNK_SIZE = 2048;
    public static final String TAG = "narvii";
    private static final boolean V = NVApplication.DEBUG;
    private static final boolean D = V;
    private static final boolean I = D;
    private static final boolean W = I;
    private static final boolean E = W;
    public static final ArrayList<Logger> loggers = new ArrayList<>();

    public static void v(String str, String str2) {
        if (V) {
            android.util.Log.v(str, str2);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(2, str, str2, null);
        }
    }

    public static void v(String str) {
        if (V) {
            android.util.Log.v(TAG, str);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(2, TAG, str, null);
        }
    }

    public static void d(String str, String str2) {
        if (D) {
            android.util.Log.d(str, str2);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(3, str, str2, null);
        }
    }

    public static void d(String str) {
        if (D) {
            android.util.Log.d(TAG, str);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(3, TAG, str, null);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (I) {
            android.util.Log.i(str, str2, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(4, str, str2, th);
        }
    }

    public static void i(String str, String str2) {
        if (I) {
            android.util.Log.i(str, str2);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(4, str, str2, null);
        }
    }

    public static void i(String str, Throwable th) {
        if (I) {
            android.util.Log.i(TAG, str, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(4, TAG, str, th);
        }
    }

    public static void i(String str) {
        if (I) {
            android.util.Log.i(TAG, str);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(4, TAG, str, null);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (W) {
            android.util.Log.w(str, str2, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(5, str, str2, th);
        }
    }

    public static void w(String str, String str2) {
        if (W) {
            android.util.Log.w(str, str2);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(5, str, str2, null);
        }
    }

    public static void w(String str, Throwable th) {
        if (W) {
            android.util.Log.w(TAG, str, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(5, TAG, str, th);
        }
    }

    public static void w(String str) {
        if (W) {
            android.util.Log.w(TAG, str);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(5, TAG, str, null);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (E) {
            android.util.Log.e(str, str2, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(6, str, str2, th);
        }
    }

    public static void e(String str, String str2) {
        if (E) {
            android.util.Log.e(str, str2);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(6, str, str2, null);
        }
    }

    public static void e(String str, Throwable th) {
        if (E) {
            android.util.Log.e(TAG, str, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(6, TAG, str, th);
        }
    }

    public static void e(String str) {
        if (E) {
            android.util.Log.e(TAG, str);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(6, TAG, str, null);
        }
    }

    public static Exception msgException(String str) {
        Exception exc = new Exception(str);
        StackTraceElement[] stackTrace = exc.getStackTrace();
        if (stackTrace != null) {
            String name = Log.class.getName();
            List arrayList = new ArrayList(Arrays.asList(stackTrace));
            int iMin = Math.min(8, arrayList.size());
            int i = 1;
            while (true) {
                if (i >= iMin) {
                    break;
                }
                if (name.equals(((StackTraceElement) arrayList.get(i)).getClassName())) {
                    arrayList = arrayList.subList(i + 1, arrayList.size());
                    break;
                }
                i++;
            }
            exc.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
        }
        return exc;
    }

    public static boolean bp(Object obj) {
        w("breakpoint", String.valueOf(obj));
        return false;
    }

    public static void println(int i, String str, String str2) {
        if (str2.length() <= 2048) {
            printChunk(i, str, str2);
            return;
        }
        int length = str2.length();
        int i2 = 0;
        while (i2 < length) {
            int iAdjustEnd = adjustEnd(str2, i2, Math.min(i2 + 2048, length));
            printChunk(i, str, str2.substring(i2, iAdjustEnd));
            i2 = iAdjustEnd;
        }
    }

    static int adjustEnd(String str, int i, int i2) {
        if (i2 == str.length() || str.charAt(i2) == '\n') {
            return i2;
        }
        for (int i3 = i2 - 1; i < i3; i3--) {
            if (str.charAt(i3) == '\n') {
                return i3 + 1;
            }
        }
        return i2;
    }

    static void printChunk(int i, String str, String str2) {
        if (V) {
            android.util.Log.println(i, str, str2);
        }
    }
}
