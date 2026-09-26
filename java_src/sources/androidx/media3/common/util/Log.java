package androidx.media3.common.util;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class Log {
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
    private static Logger logger = Logger.DEFAULT;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface LogLevel {
    }

    public interface Logger {
        public static final Logger DEFAULT = new Logger() { // from class: androidx.media3.common.util.Log.Logger.1
            @Override // androidx.media3.common.util.Log.Logger
            public void d(String str, String str2) {
                android.util.Log.d(str, str2);
            }

            @Override // androidx.media3.common.util.Log.Logger
            public void e(String str, String str2) {
                android.util.Log.e(str, str2);
            }

            @Override // androidx.media3.common.util.Log.Logger
            public void i(String str, String str2) {
                android.util.Log.i(str, str2);
            }

            @Override // androidx.media3.common.util.Log.Logger
            public void w(String str, String str2) {
                android.util.Log.w(str, str2);
            }
        };

        void d(String str, String str2);

        void e(String str, String str2);

        void i(String str, String str2);

        void w(String str, String str2);
    }

    public static void b(@androidx.annotation.Size String str, String str2) {
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

    public static void c(@androidx.annotation.Size String str, String str2) {
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
                    return android.util.Log.getStackTraceString(th).trim().replace("\t", "    ");
                }
                return th.getMessage();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void f(@androidx.annotation.Size String str, String str2) {
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

    public static void i(@androidx.annotation.Size String str, String str2) {
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

    private Log() {
    }

    private static String a(String str, @Nullable Throwable th) {
        String strE = e(th);
        if (!TextUtils.isEmpty(strE)) {
            return str + "\n  " + strE.replace("\n", "\n  ") + '\n';
        }
        return str;
    }

    public static void d(@androidx.annotation.Size String str, String str2, @Nullable Throwable th) {
        c(str, a(str2, th));
    }

    public static void g(@androidx.annotation.Size String str, String str2, @Nullable Throwable th) {
        f(str, a(str2, th));
    }

    public static void j(@androidx.annotation.Size String str, String str2, @Nullable Throwable th) {
        i(str, a(str2, th));
    }
}
