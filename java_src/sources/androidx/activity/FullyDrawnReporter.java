package androidx.activity;

import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class FullyDrawnReporter {

    @NotNull
    private final Executor executor;

    @NotNull
    private final Object lock;

    @GuardedBy
    @NotNull
    private final List<e8.a<l0>> onReportCallbacks;

    @NotNull
    private final e8.a<l0> reportFullyDrawn;

    @GuardedBy
    private boolean reportPosted;

    @NotNull
    private final Runnable reportRunnable;

    @GuardedBy
    private boolean reportedFullyDrawn;

    @GuardedBy
    private int reporterCount;

    public FullyDrawnReporter(@NotNull Executor executor, @NotNull e8.a<l0> reportFullyDrawn) {
        t.j(executor, "executor");
        t.j(reportFullyDrawn, "reportFullyDrawn");
        this.executor = executor;
        this.reportFullyDrawn = reportFullyDrawn;
        this.lock = new Object();
        this.onReportCallbacks = new ArrayList();
        this.reportRunnable = new Runnable() { // from class: androidx.activity.h
            @Override // java.lang.Runnable
            public final void run() {
                FullyDrawnReporter.h(this.f47a);
            }
        };
    }

    private final void f() {
        if (this.reportPosted || this.reporterCount != 0) {
            return;
        }
        this.reportPosted = true;
        this.executor.execute(this.reportRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(FullyDrawnReporter this$0) {
        t.j(this$0, "this$0");
        synchronized (this$0.lock) {
            try {
                this$0.reportPosted = false;
                if (this$0.reporterCount == 0 && !this$0.reportedFullyDrawn) {
                    this$0.reportFullyDrawn.invoke();
                    this$0.d();
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(@NotNull e8.a<l0> callback) {
        boolean z6;
        t.j(callback, "callback");
        synchronized (this.lock) {
            if (this.reportedFullyDrawn) {
                z6 = true;
            } else {
                this.onReportCallbacks.add(callback);
                z6 = false;
            }
        }
        if (z6) {
            callback.invoke();
        }
    }

    public final void c() {
        synchronized (this.lock) {
            try {
                if (!this.reportedFullyDrawn) {
                    this.reporterCount++;
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @RestrictTo
    public final void d() {
        synchronized (this.lock) {
            try {
                this.reportedFullyDrawn = true;
                Iterator<T> it = this.onReportCallbacks.iterator();
                while (it.hasNext()) {
                    ((e8.a) it.next()).invoke();
                }
                this.onReportCallbacks.clear();
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e() {
        boolean z6;
        synchronized (this.lock) {
            z6 = this.reportedFullyDrawn;
        }
        return z6;
    }

    public final void g() {
        int i10;
        synchronized (this.lock) {
            try {
                if (!this.reportedFullyDrawn && (i10 = this.reporterCount) > 0) {
                    this.reporterCount = i10 - 1;
                    f();
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
