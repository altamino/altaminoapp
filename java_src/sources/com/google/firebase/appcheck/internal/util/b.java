package com.google.firebase.appcheck.internal.util;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class b {
    private int logLevel = 4;
    private final String tag;
    public static final String TAG = "FirebaseAppCheck";
    static final b DEFAULT_LOGGER = new b(TAG);

    @NonNull
    public static b f() {
        return DEFAULT_LOGGER;
    }

    public void b(@NonNull String str) {
        c(str, null);
    }

    public void c(@NonNull String str, @Nullable Throwable th) {
        if (a(3)) {
            Log.d(this.tag, str, th);
        }
    }

    public void d(@NonNull String str) {
        e(str, null);
    }

    public void e(@NonNull String str, @Nullable Throwable th) {
        if (a(6)) {
            Log.e(this.tag, str, th);
        }
    }

    private boolean a(int i10) {
        return this.logLevel <= i10 || Log.isLoggable(this.tag, i10);
    }

    public b(@NonNull String str) {
        this.tag = str;
    }
}
