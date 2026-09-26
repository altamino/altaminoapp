package androidx.lifecycle;

import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import java.util.ArrayDeque;
import java.util.Queue;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.n2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class DispatchQueue {
    private boolean finished;
    private boolean isDraining;
    private boolean paused = true;

    @NotNull
    private final Queue<Runnable> queue = new ArrayDeque();

    @MainThread
    public final boolean b() {
        return this.finished || !this.paused;
    }

    @MainThread
    public final void g() {
        this.finished = true;
        e();
    }

    @MainThread
    public final void h() {
        this.paused = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(DispatchQueue this$0, Runnable runnable) {
        t.j(this$0, "this$0");
        t.j(runnable, "$runnable");
        this$0.f(runnable);
    }

    @MainThread
    private final void f(Runnable runnable) {
        if (!this.queue.offer(runnable)) {
            throw new IllegalStateException("cannot enqueue any more runnables".toString());
        }
        e();
    }

    @AnyThread
    public final void c(@NotNull kotlin.coroutines.g context, @NotNull final Runnable runnable) {
        t.j(context, "context");
        t.j(runnable, "runnable");
        n2 immediate = e1.c().getImmediate();
        if (immediate.isDispatchNeeded(context) || b()) {
            immediate.dispatch(context, new Runnable() { // from class: androidx.lifecycle.d
                @Override // java.lang.Runnable
                public final void run() {
                    DispatchQueue.d(this.f215a, runnable);
                }
            });
        } else {
            f(runnable);
        }
    }

    @MainThread
    public final void e() {
        if (this.isDraining) {
            return;
        }
        try {
            this.isDraining = true;
            while ((!this.queue.isEmpty()) && b()) {
                Runnable runnablePoll = this.queue.poll();
                if (runnablePoll != null) {
                    runnablePoll.run();
                }
            }
            this.isDraining = false;
        } catch (Throwable th) {
            this.isDraining = false;
            throw th;
        }
    }

    @MainThread
    public final void i() {
        if (this.paused) {
            if (!(!this.finished)) {
                throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
            }
            this.paused = false;
            e();
        }
    }
}
