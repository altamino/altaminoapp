package com.google.firebase.crashlytics.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes10.dex */
public class g {
    private int logLevel = 4;
    private final String tag;
    public static final String TAG = "FirebaseCrashlytics";
    static final g DEFAULT_LOGGER = new g(TAG);

    public static g f() {
        return DEFAULT_LOGGER;
    }

    public void b(String str) {
        c(str, null);
    }

    public void c(String str, Throwable th) {
        if (a(3)) {
            Log.d(this.tag, str, th);
        }
    }

    public void d(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th) {
        if (a(6)) {
            Log.e(this.tag, str, th);
        }
    }

    public void g(String str) {
        h(str, null);
    }

    public void h(String str, Throwable th) {
        if (a(4)) {
            Log.i(this.tag, str, th);
        }
    }

    public void i(String str) {
        j(str, null);
    }

    public void j(String str, Throwable th) {
        if (a(2)) {
            Log.v(this.tag, str, th);
        }
    }

    public void k(String str) {
        l(str, null);
    }

    public void l(String str, Throwable th) {
        if (a(5)) {
            Log.w(this.tag, str, th);
        }
    }

    private boolean a(int i10) {
        return this.logLevel <= i10 || Log.isLoggable(this.tag, i10);
    }

    public g(String str) {
        this.tag = str;
    }
}
