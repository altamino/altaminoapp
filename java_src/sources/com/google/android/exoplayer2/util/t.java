package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes8.dex */
public final class t {
    public static final int LOG_LEVEL_ALL = 0;
    public static final int LOG_LEVEL_ERROR = 3;
    public static final int LOG_LEVEL_INFO = 1;
    public static final int LOG_LEVEL_OFF = Integer.MAX_VALUE;
    public static final int LOG_LEVEL_WARNING = 2;

    @GuardedBy
    private static int logLevel = 0;

    @GuardedBy
    private static boolean logStackTraces = true;
    private static final Object lock = new Object();

    @GuardedBy
    private static a logger = a.DEFAULT;

    public interface a {
        public static final a DEFAULT = new C0186a();

        void d(String str, String str2);

        void e(String str, String str2);

        void i(String str, String str2);

        void w(String str, String str2);

        /* JADX INFO: renamed from: com.google.android.exoplayer2.util.t$a$a, reason: collision with other inner class name */
        class C0186a implements a {
            C0186a() {
            }

            @Override // com.google.android.exoplayer2.util.t.a
            public void d(String str, String str2) {
                Log.d(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.t.a
            public void e(String str, String str2) {
                Log.e(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.t.a
            public void i(String str, String str2) {
                Log.i(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.t.a
            public void w(String str, String str2) {
                Log.w(str, str2);
            }
        }
    }

    public static void b(@Size String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel == 0) {
                    logger.d(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void c(@Size String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 3) {
                    logger.e(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public static String e(@Nullable Throwable th) {
        synchronized (lock) {
            try {
                if (th == null) {
                    return null;
                }
                if (h(th)) {
                    return "UnknownHostException (no network)";
                }
                if (logStackTraces) {
                    return Log.getStackTraceString(th).trim().replace("\t", "    ");
                }
                return th.getMessage();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void f(@Size String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 1) {
                    logger.i(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean h(@Nullable Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    public static void i(@Size String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 2) {
                    logger.w(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String a(String str, @Nullable Throwable th) {
        String strE = e(th);
        if (!TextUtils.isEmpty(strE)) {
            return str + "\n  " + strE.replace("\n", "\n  ") + '\n';
        }
        return str;
    }

    public static void d(@Size String str, String str2, @Nullable Throwable th) {
        c(str, a(str2, th));
    }

    public static void g(@Size String str, String str2, @Nullable Throwable th) {
        f(str, a(str2, th));
    }

    public static void j(@Size String str, String str2, @Nullable Throwable th) {
        i(str, a(str2, th));
    }
}
