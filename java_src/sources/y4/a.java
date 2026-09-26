package y4;

import androidx.annotation.VisibleForTesting;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public class a {
    private static volatile a instance;
    private boolean isLogcatEnabled;
    private final c logWrapper;

    @VisibleForTesting
    public a(c cVar) {
        this.isLogcatEnabled = false;
        this.logWrapper = cVar == null ? c.c() : cVar;
    }

    public boolean h() {
        return this.isLogcatEnabled;
    }

    public void i(boolean z6) {
        this.isLogcatEnabled = z6;
    }

    public static a e() {
        if (instance == null) {
            synchronized (a.class) {
                try {
                    if (instance == null) {
                        instance = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public void a(String str) {
        if (this.isLogcatEnabled) {
            this.logWrapper.a(str);
        }
    }

    public void b(String str, Object... objArr) {
        if (this.isLogcatEnabled) {
            this.logWrapper.a(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public void c(String str) {
        if (this.isLogcatEnabled) {
            this.logWrapper.b(str);
        }
    }

    public void d(String str, Object... objArr) {
        if (this.isLogcatEnabled) {
            this.logWrapper.b(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public void f(String str) {
        if (this.isLogcatEnabled) {
            this.logWrapper.d(str);
        }
    }

    public void g(String str, Object... objArr) {
        if (this.isLogcatEnabled) {
            this.logWrapper.d(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public void j(String str) {
        if (this.isLogcatEnabled) {
            this.logWrapper.e(str);
        }
    }

    public void k(String str, Object... objArr) {
        if (this.isLogcatEnabled) {
            this.logWrapper.e(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    private a() {
        this(null);
    }
}
