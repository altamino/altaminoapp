package androidx.room;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class AutoCloser {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String autoCloseBug = "https://issuetracker.google.com/issues/new?component=413107&template=1096568";
    private long autoCloseTimeoutInMs;

    @NotNull
    private final Runnable autoCloser;

    @GuardedBy
    @Nullable
    private SupportSQLiteDatabase delegateDatabase;
    public SupportSQLiteOpenHelper delegateOpenHelper;

    @NotNull
    private final Runnable executeAutoCloser;

    @NotNull
    private final Executor executor;

    @NotNull
    private final Handler handler;

    @GuardedBy
    private long lastDecrementRefCountTimeStamp;

    @NotNull
    private final Object lock;
    private boolean manuallyClosed;

    @Nullable
    private Runnable onAutoCloseCallback;

    @GuardedBy
    private int refCount;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Nullable
    public final SupportSQLiteDatabase h() {
        return this.delegateDatabase;
    }

    public final void l(@NotNull Runnable onAutoClose) {
        kotlin.jvm.internal.t.j(onAutoClose, "onAutoClose");
        this.onAutoCloseCallback = onAutoClose;
    }

    public final void m(@NotNull SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        kotlin.jvm.internal.t.j(supportSQLiteOpenHelper, "<set-?>");
        this.delegateOpenHelper = supportSQLiteOpenHelper;
    }

    public AutoCloser(long j6, @NotNull TimeUnit autoCloseTimeUnit, @NotNull Executor autoCloseExecutor) {
        kotlin.jvm.internal.t.j(autoCloseTimeUnit, "autoCloseTimeUnit");
        kotlin.jvm.internal.t.j(autoCloseExecutor, "autoCloseExecutor");
        this.handler = new Handler(Looper.getMainLooper());
        this.lock = new Object();
        this.autoCloseTimeoutInMs = autoCloseTimeUnit.toMillis(j6);
        this.executor = autoCloseExecutor;
        this.lastDecrementRefCountTimeStamp = SystemClock.uptimeMillis();
        this.executeAutoCloser = new Runnable() { // from class: androidx.room.a
            @Override // java.lang.Runnable
            public final void run() {
                AutoCloser.f(this.f821a);
            }
        };
        this.autoCloser = new Runnable() { // from class: androidx.room.b
            @Override // java.lang.Runnable
            public final void run() {
                AutoCloser.c(this.f822a);
            }
        };
    }

    public final void d() throws IOException {
        synchronized (this.lock) {
            try {
                this.manuallyClosed = true;
                SupportSQLiteDatabase supportSQLiteDatabase = this.delegateDatabase;
                if (supportSQLiteDatabase != null) {
                    supportSQLiteDatabase.close();
                }
                this.delegateDatabase = null;
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        synchronized (this.lock) {
            try {
                int i10 = this.refCount;
                if (i10 <= 0) {
                    throw new IllegalStateException("ref count is 0 or lower but we're supposed to decrement".toString());
                }
                int i11 = i10 - 1;
                this.refCount = i11;
                if (i11 == 0) {
                    if (this.delegateDatabase == null) {
                        return;
                    } else {
                        this.handler.postDelayed(this.executeAutoCloser, this.autoCloseTimeoutInMs);
                    }
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <V> V g(@NotNull e8.l<? super SupportSQLiteDatabase, ? extends V> block) {
        kotlin.jvm.internal.t.j(block, "block");
        try {
            return block.invoke(j());
        } finally {
            e();
        }
    }

    @NotNull
    public final SupportSQLiteOpenHelper i() {
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.delegateOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            return supportSQLiteOpenHelper;
        }
        kotlin.jvm.internal.t.B("delegateOpenHelper");
        return null;
    }

    @NotNull
    public final SupportSQLiteDatabase j() {
        synchronized (this.lock) {
            this.handler.removeCallbacks(this.executeAutoCloser);
            this.refCount++;
            if (!(!this.manuallyClosed)) {
                throw new IllegalStateException("Attempting to open already closed database.".toString());
            }
            SupportSQLiteDatabase supportSQLiteDatabase = this.delegateDatabase;
            if (supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen()) {
                return supportSQLiteDatabase;
            }
            SupportSQLiteDatabase writableDatabase = i().getWritableDatabase();
            this.delegateDatabase = writableDatabase;
            return writableDatabase;
        }
    }

    public final void k(@NotNull SupportSQLiteOpenHelper delegateOpenHelper) {
        kotlin.jvm.internal.t.j(delegateOpenHelper, "delegateOpenHelper");
        m(delegateOpenHelper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(AutoCloser this$0) {
        l0 l0Var;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        synchronized (this$0.lock) {
            try {
                if (SystemClock.uptimeMillis() - this$0.lastDecrementRefCountTimeStamp < this$0.autoCloseTimeoutInMs) {
                    return;
                }
                if (this$0.refCount != 0) {
                    return;
                }
                Runnable runnable = this$0.onAutoCloseCallback;
                if (runnable != null) {
                    runnable.run();
                    l0Var = l0.INSTANCE;
                } else {
                    l0Var = null;
                }
                if (l0Var != null) {
                    SupportSQLiteDatabase supportSQLiteDatabase = this$0.delegateDatabase;
                    if (supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen()) {
                        supportSQLiteDatabase.close();
                    }
                    this$0.delegateDatabase = null;
                    l0 l0Var2 = l0.INSTANCE;
                    return;
                }
                throw new IllegalStateException("onAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568".toString());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(AutoCloser this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.executor.execute(this$0.autoCloser);
    }
}
