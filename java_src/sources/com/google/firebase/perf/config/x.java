package com.google.firebase.perf.config;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
@VisibleForTesting
public class x {
    private static final String PREFS_NAME = "FirebasePerfSharedPrefs";
    private static x instance;
    private static final y4.a logger = y4.a.e();
    private final ExecutorService serialExecutor;
    private volatile SharedPreferences sharedPref;

    public synchronized void i(final Context context) {
        if (this.sharedPref == null && context != null) {
            this.serialExecutor.execute(new Runnable() { // from class: com.google.firebase.perf.config.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1605a.h(context);
                }
            });
        }
    }

    public boolean j(String str, double d) {
        if (str == null) {
            logger.a("Key is null when setting double value on device cache.");
            return false;
        }
        if (this.sharedPref == null) {
            i(d());
            if (this.sharedPref == null) {
                return false;
            }
        }
        this.sharedPref.edit().putLong(str, Double.doubleToRawLongBits(d)).apply();
        return true;
    }

    public boolean k(String str, long j6) {
        if (str == null) {
            logger.a("Key is null when setting long value on device cache.");
            return false;
        }
        if (this.sharedPref == null) {
            i(d());
            if (this.sharedPref == null) {
                return false;
            }
        }
        this.sharedPref.edit().putLong(str, j6).apply();
        return true;
    }

    public boolean l(String str, String str2) {
        if (str == null) {
            logger.a("Key is null when setting String value on device cache.");
            return false;
        }
        if (this.sharedPref == null) {
            i(d());
            if (this.sharedPref == null) {
                return false;
            }
        }
        if (str2 == null) {
            this.sharedPref.edit().remove(str).apply();
            return true;
        }
        this.sharedPref.edit().putString(str, str2).apply();
        return true;
    }

    public boolean m(String str, boolean z6) {
        if (str == null) {
            logger.a("Key is null when setting boolean value on device cache.");
            return false;
        }
        if (this.sharedPref == null) {
            i(d());
            if (this.sharedPref == null) {
                return false;
            }
        }
        this.sharedPref.edit().putBoolean(str, z6).apply();
        return true;
    }

    @SuppressLint({"ThreadPoolCreation"})
    public static synchronized x e() {
        try {
            if (instance == null) {
                instance = new x(Executors.newSingleThreadExecutor());
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Context context) {
        if (this.sharedPref != null || context == null) {
            return;
        }
        this.sharedPref = context.getSharedPreferences(PREFS_NAME, 0);
    }

    public com.google.firebase.perf.util.g<Boolean> b(String str) {
        if (str == null) {
            logger.a("Key is null when getting boolean value on device cache.");
            return com.google.firebase.perf.util.g.a();
        }
        if (this.sharedPref == null) {
            i(d());
            if (this.sharedPref == null) {
                return com.google.firebase.perf.util.g.a();
            }
        }
        if (!this.sharedPref.contains(str)) {
            return com.google.firebase.perf.util.g.a();
        }
        try {
            return com.google.firebase.perf.util.g.e(Boolean.valueOf(this.sharedPref.getBoolean(str, false)));
        } catch (ClassCastException e) {
            logger.b("Key %s from sharedPreferences has type other than long: %s", str, e.getMessage());
            return com.google.firebase.perf.util.g.a();
        }
    }

    public com.google.firebase.perf.util.g<Double> c(String str) {
        if (str == null) {
            logger.a("Key is null when getting double value on device cache.");
            return com.google.firebase.perf.util.g.a();
        }
        if (this.sharedPref == null) {
            i(d());
            if (this.sharedPref == null) {
                return com.google.firebase.perf.util.g.a();
            }
        }
        if (!this.sharedPref.contains(str)) {
            return com.google.firebase.perf.util.g.a();
        }
        try {
            try {
                return com.google.firebase.perf.util.g.e(Double.valueOf(Double.longBitsToDouble(this.sharedPref.getLong(str, 0L))));
            } catch (ClassCastException unused) {
                return com.google.firebase.perf.util.g.e(Double.valueOf(Float.valueOf(this.sharedPref.getFloat(str, 0.0f)).doubleValue()));
            }
        } catch (ClassCastException e) {
            logger.b("Key %s from sharedPreferences has type other than double: %s", str, e.getMessage());
            return com.google.firebase.perf.util.g.a();
        }
    }

    public com.google.firebase.perf.util.g<Long> f(String str) {
        if (str == null) {
            logger.a("Key is null when getting long value on device cache.");
            return com.google.firebase.perf.util.g.a();
        }
        if (this.sharedPref == null) {
            i(d());
            if (this.sharedPref == null) {
                return com.google.firebase.perf.util.g.a();
            }
        }
        if (!this.sharedPref.contains(str)) {
            return com.google.firebase.perf.util.g.a();
        }
        try {
            return com.google.firebase.perf.util.g.e(Long.valueOf(this.sharedPref.getLong(str, 0L)));
        } catch (ClassCastException e) {
            logger.b("Key %s from sharedPreferences has type other than long: %s", str, e.getMessage());
            return com.google.firebase.perf.util.g.a();
        }
    }

    public com.google.firebase.perf.util.g<String> g(String str) {
        if (str == null) {
            logger.a("Key is null when getting String value on device cache.");
            return com.google.firebase.perf.util.g.a();
        }
        if (this.sharedPref == null) {
            i(d());
            if (this.sharedPref == null) {
                return com.google.firebase.perf.util.g.a();
            }
        }
        if (!this.sharedPref.contains(str)) {
            return com.google.firebase.perf.util.g.a();
        }
        try {
            return com.google.firebase.perf.util.g.e(this.sharedPref.getString(str, ""));
        } catch (ClassCastException e) {
            logger.b("Key %s from sharedPreferences has type other than String: %s", str, e.getMessage());
            return com.google.firebase.perf.util.g.a();
        }
    }

    @VisibleForTesting
    public x(ExecutorService executorService) {
        this.serialExecutor = executorService;
    }

    @Nullable
    private Context d() {
        try {
            com.google.firebase.f.l();
            return com.google.firebase.f.l().k();
        } catch (IllegalStateException unused) {
            return null;
        }
    }
}
