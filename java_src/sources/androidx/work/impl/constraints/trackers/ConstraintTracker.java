package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public abstract class ConstraintTracker<T> {

    @NotNull
    private final Context appContext;

    @Nullable
    private T currentState;

    @NotNull
    private final LinkedHashSet<ConstraintListener<T>> listeners;

    @NotNull
    private final Object lock;

    @NotNull
    private final TaskExecutor taskExecutor;

    @NotNull
    protected final Context d() {
        return this.appContext;
    }

    public abstract T e();

    public abstract void h();

    public abstract void i();

    protected ConstraintTracker(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        this.taskExecutor = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        t.i(applicationContext, "context.applicationContext");
        this.appContext = applicationContext;
        this.lock = new Object();
        this.listeners = new LinkedHashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(List listenersList, ConstraintTracker this$0) {
        t.j(listenersList, "$listenersList");
        t.j(this$0, "this$0");
        Iterator<T> it = listenersList.iterator();
        while (it.hasNext()) {
            ((ConstraintListener) it.next()).a(this$0.currentState);
        }
    }

    public final void c(@NotNull ConstraintListener<T> listener) {
        t.j(listener, "listener");
        synchronized (this.lock) {
            try {
                if (this.listeners.add(listener)) {
                    if (this.listeners.size() == 1) {
                        this.currentState = e();
                        Logger.e().a(ConstraintTrackerKt.TAG, getClass().getSimpleName() + ": initial state = " + this.currentState);
                        h();
                    }
                    listener.a(this.currentState);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(@NotNull ConstraintListener<T> listener) {
        t.j(listener, "listener");
        synchronized (this.lock) {
            try {
                if (this.listeners.remove(listener) && this.listeners.isEmpty()) {
                    i();
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g(T t5) {
        synchronized (this.lock) {
            T t10 = this.currentState;
            if (t10 == null || !t.e(t10, t5)) {
                this.currentState = t5;
                final List listU0 = d0.U0(this.listeners);
                this.taskExecutor.b().execute(new Runnable() { // from class: androidx.work.impl.constraints.trackers.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConstraintTracker.b(listU0, this);
                    }
                });
                l0 l0Var = l0.INSTANCE;
            }
        }
    }
}
