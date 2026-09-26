package androidx.work;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public abstract class Logger {
    private static final int MAX_PREFIXED_TAG_LENGTH = 20;
    private static final int MAX_TAG_LENGTH = 23;
    private static final String TAG_PREFIX = "WM-";
    private static final Object sLock = new Object();
    private static volatile Logger sLogger;

    public static class LogcatLogger extends Logger {
        private final int mLoggingLevel;

        @Override // androidx.work.Logger
        public void a(@NonNull String tag, @NonNull String message) {
            if (this.mLoggingLevel <= 3) {
                Log.d(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void b(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.mLoggingLevel <= 3) {
                Log.d(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void c(@NonNull String tag, @NonNull String message) {
            if (this.mLoggingLevel <= 6) {
                Log.e(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void d(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.mLoggingLevel <= 6) {
                Log.e(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void f(@NonNull String tag, @NonNull String message) {
            if (this.mLoggingLevel <= 4) {
                Log.i(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void g(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.mLoggingLevel <= 4) {
                Log.i(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void j(@NonNull String tag, @NonNull String message) {
            if (this.mLoggingLevel <= 2) {
                Log.v(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void k(@NonNull String tag, @NonNull String message) {
            if (this.mLoggingLevel <= 5) {
                Log.w(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void l(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.mLoggingLevel <= 5) {
                Log.w(tag, message, throwable);
            }
        }

        public LogcatLogger(int loggingLevel) {
            super(loggingLevel);
            this.mLoggingLevel = loggingLevel;
        }
    }

    public abstract void a(@NonNull String tag, @NonNull String message);

    public abstract void b(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    public abstract void c(@NonNull String tag, @NonNull String message);

    public abstract void d(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    public abstract void f(@NonNull String tag, @NonNull String message);

    public abstract void g(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    public abstract void j(@NonNull String tag, @NonNull String message);

    public abstract void k(@NonNull String tag, @NonNull String message);

    public abstract void l(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    @NonNull
    public static Logger e() {
        Logger logger;
        synchronized (sLock) {
            try {
                if (sLogger == null) {
                    sLogger = new LogcatLogger(3);
                }
                logger = sLogger;
            } catch (Throwable th) {
                throw th;
            }
        }
        return logger;
    }

    public static void h(@NonNull Logger logger) {
        synchronized (sLock) {
            sLogger = logger;
        }
    }

    public Logger(int loggingLevel) {
    }

    @NonNull
    public static String i(@NonNull String tag) {
        int length = tag.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append(TAG_PREFIX);
        int i10 = MAX_PREFIXED_TAG_LENGTH;
        if (length >= i10) {
            sb.append(tag.substring(0, i10));
        } else {
            sb.append(tag);
        }
        return sb.toString();
    }
}
