package androidx.room;

import android.annotation.SuppressLint;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.lifecycle.LiveData;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@SuppressLint({"RestrictedApi"})
public final class RoomTrackingLiveData<T> extends LiveData<T> {

    @NotNull
    private final Callable<T> computeFunction;

    @NotNull
    private final AtomicBoolean computing;

    @NotNull
    private final InvalidationLiveDataContainer container;

    @NotNull
    private final RoomDatabase database;
    private final boolean inTransaction;

    @NotNull
    private final AtomicBoolean invalid;

    @NotNull
    private final Runnable invalidationRunnable;

    @NotNull
    private final InvalidationTracker.Observer observer;

    @NotNull
    private final Runnable refreshRunnable;

    @NotNull
    private final AtomicBoolean registeredObserver;

    @NotNull
    public final Runnable s() {
        return this.invalidationRunnable;
    }

    public RoomTrackingLiveData(@NotNull RoomDatabase database, @NotNull InvalidationLiveDataContainer container, boolean z6, @NotNull Callable<T> computeFunction, @NotNull final String[] tableNames) {
        kotlin.jvm.internal.t.j(database, "database");
        kotlin.jvm.internal.t.j(container, "container");
        kotlin.jvm.internal.t.j(computeFunction, "computeFunction");
        kotlin.jvm.internal.t.j(tableNames, "tableNames");
        this.database = database;
        this.container = container;
        this.inTransaction = z6;
        this.computeFunction = computeFunction;
        this.observer = new InvalidationTracker.Observer(tableNames) { // from class: androidx.room.RoomTrackingLiveData$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public void c(@NotNull Set<String> tables) {
                kotlin.jvm.internal.t.j(tables, "tables");
                ArchTaskExecutor.h().b(this.s());
            }
        };
        this.invalid = new AtomicBoolean(true);
        this.computing = new AtomicBoolean(false);
        this.registeredObserver = new AtomicBoolean(false);
        this.refreshRunnable = new Runnable() { // from class: androidx.room.v
            @Override // java.lang.Runnable
            public final void run() {
                RoomTrackingLiveData.v(this.f850a);
            }
        };
        this.invalidationRunnable = new Runnable() { // from class: androidx.room.w
            @Override // java.lang.Runnable
            public final void run() {
                RoomTrackingLiveData.u(this.f851a);
            }
        };
    }

    @NotNull
    public final Executor t() {
        return this.inTransaction ? this.database.s() : this.database.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(RoomTrackingLiveData this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        boolean zH = this$0.h();
        if (this$0.invalid.compareAndSet(false, true) && zH) {
            this$0.t().execute(this$0.refreshRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0035 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void v(RoomTrackingLiveData this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.registeredObserver.compareAndSet(false, true)) {
            this$0.database.m().d(this$0.observer);
        }
        while (this$0.computing.compareAndSet(false, true)) {
            T tCall = null;
            boolean z6 = false;
            while (this$0.invalid.compareAndSet(true, false)) {
                try {
                    tCall = this$0.computeFunction.call();
                    z6 = true;
                } catch (Exception e) {
                    throw new RuntimeException("Exception while computing database live data.", e);
                }
            }
            if (z6) {
                this$0.m(tCall);
            }
            this$0.computing.set(false);
            if (!z6 || !this$0.invalid.get()) {
                return;
            }
        }
    }

    @Override // androidx.lifecycle.LiveData
    protected void k() {
        super.k();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.container;
        kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>");
        invalidationLiveDataContainer.a(this);
        t().execute(this.refreshRunnable);
    }

    @Override // androidx.lifecycle.LiveData
    protected void l() {
        super.l();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.container;
        kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>");
        invalidationLiveDataContainer.b(this);
    }
}
