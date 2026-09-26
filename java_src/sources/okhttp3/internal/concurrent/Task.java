package okhttp3.internal.concurrent;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class Task {
    private final boolean cancelable;

    @NotNull
    private final String name;
    private long nextExecuteNanoTime;

    @Nullable
    private TaskQueue queue;

    public Task(@NotNull String name, boolean z6) {
        t.j(name, "name");
        this.name = name;
        this.cancelable = z6;
        this.nextExecuteNanoTime = -1L;
    }

    public final boolean getCancelable() {
        return this.cancelable;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final long getNextExecuteNanoTime$okhttp() {
        return this.nextExecuteNanoTime;
    }

    @Nullable
    public final TaskQueue getQueue$okhttp() {
        return this.queue;
    }

    public abstract long runOnce();

    public final void setNextExecuteNanoTime$okhttp(long j6) {
        this.nextExecuteNanoTime = j6;
    }

    public final void setQueue$okhttp(@Nullable TaskQueue taskQueue) {
        this.queue = taskQueue;
    }

    @NotNull
    public String toString() {
        return this.name;
    }

    public /* synthetic */ Task(String str, boolean z6, int i10, k kVar) {
        this(str, (i10 & 2) != 0 ? true : z6);
    }

    public final void initQueue$okhttp(@NotNull TaskQueue queue) {
        t.j(queue, "queue");
        TaskQueue taskQueue = this.queue;
        if (taskQueue == queue) {
            return;
        }
        if (taskQueue != null) {
            throw new IllegalStateException("task is in multiple queues".toString());
        }
        this.queue = queue;
    }
}
