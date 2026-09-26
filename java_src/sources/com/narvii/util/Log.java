package com.narvii.util;

import com.narvii.app.NVApplication;
import com.narvii.util.log.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Log {
    private static final boolean D;
    static final int DEFAULT_MAX_CHUNK_SIZE = 2048;
    private static final boolean E;
    private static final boolean I;
    public static final String TAG = "narvii";
    private static final boolean V;
    private static final boolean W;
    public static final ArrayList<Logger> loggers;

    public static void d(String str, String str2) {
        if (D) {
            android.util.Log.d(str, str2);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(3, str, str2, null);
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

    public static void i(String str, String str2, Throwable th) {
        if (I) {
            android.util.Log.i(str, str2, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(4, str, str2, th);
        }
    }

    public static void v(String str, String str2) {
        if (V) {
            android.util.Log.v(str, str2);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(2, str, str2, null);
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

    static {
        boolean z6 = NVApplication.DEBUG;
        V = z6;
        D = z6;
        I = z6;
        W = z6;
        E = z6;
        loggers = new ArrayList<>();
    }

    public static Exception msgException(String str) {
        Exception exc = new Exception(str);
        StackTraceElement[] stackTrace = exc.getStackTrace();
        if (stackTrace != null) {
            String name = Log.class.getName();
            List arrayList = new ArrayList(Arrays.asList(stackTrace));
            int iMin = Math.min(8, arrayList.size());
            for (int i10 = 1; i10 < iMin; i10++) {
                if (name.equals(((StackTraceElement) arrayList.get(i10)).getClassName())) {
                    arrayList = arrayList.subList(i10 + 1, arrayList.size());
                    break;
                }
            }
            exc.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
        }
        return exc;
    }

    static void printChunk(int i10, String str, String str2) {
        if (V) {
            android.util.Log.println(i10, str, str2);
        }
    }

    static int adjustEnd(String str, int i10, int i11) {
        if (i11 == str.length() || str.charAt(i11) == '\n') {
            return i11;
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            if (str.charAt(i12) == '\n') {
                return i12 + 1;
            }
        }
        return i11;
    }

    public static boolean bp(Object obj) {
        w("breakpoint", String.valueOf(obj));
        return false;
    }

    public static void println(int i10, String str, String str2) {
        if (str2.length() <= 2048) {
            printChunk(i10, str, str2);
            return;
        }
        int length = str2.length();
        int i11 = 0;
        while (i11 < length) {
            int iAdjustEnd = adjustEnd(str2, i11, Math.min(i11 + 2048, length));
            printChunk(i10, str, str2.substring(i11, iAdjustEnd));
            i11 = iAdjustEnd;
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

    public static void e(String str, String str2) {
        if (E) {
            android.util.Log.e(str, str2);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(6, str, str2, null);
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

    public static void v(String str) {
        if (V) {
            android.util.Log.v(TAG, str);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(2, TAG, str, null);
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

    public static void e(String str, Throwable th) {
        if (E) {
            android.util.Log.e(TAG, str, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(6, TAG, str, th);
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

    public static void w(String str, Throwable th) {
        if (W) {
            android.util.Log.w(TAG, str, th);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(5, TAG, str, th);
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

    public static void i(String str) {
        if (I) {
            android.util.Log.i(TAG, str);
        }
        Iterator<Logger> it = loggers.iterator();
        while (it.hasNext()) {
            it.next().log(4, TAG, str, null);
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
}
