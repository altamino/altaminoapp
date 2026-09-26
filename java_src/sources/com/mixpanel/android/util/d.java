package com.mixpanel.android.util;

import android.util.Log;

/* JADX INFO: loaded from: classes9.dex */
public class d {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int NONE = Integer.MAX_VALUE;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int sMinLevel = 5;

    public static void a(String str, String str2) {
        if (h(3)) {
            Log.d(str, str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (h(3)) {
            Log.d(str, str2, th);
        }
    }

    public static void c(String str, String str2) {
        if (h(6)) {
            Log.e(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (h(6)) {
            Log.e(str, str2, th);
        }
    }

    public static void e(String str, String str2) {
        if (h(4)) {
            Log.i(str, str2);
        }
    }

    public static void f(String str, String str2, Throwable th) {
        if (h(4)) {
            Log.i(str, str2, th);
        }
    }

    public static void g(int i10) {
        sMinLevel = i10;
    }

    private static boolean h(int i10) {
        return sMinLevel <= i10;
    }

    public static void i(String str, String str2) {
        if (h(2)) {
            Log.v(str, str2);
        }
    }

    public static void j(String str, String str2, Throwable th) {
        if (h(2)) {
            Log.v(str, str2, th);
        }
    }

    public static void k(String str, String str2) {
        if (h(5)) {
            Log.w(str, str2);
        }
    }
}
