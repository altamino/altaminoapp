package okhttp3.internal.concurrent;

import e8.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class TaskQueue {

    @Nullable
    private Task activeTask;
    private boolean cancelActiveTask;

    @NotNull
    private final List<Task> futureTasks;

    @NotNull
    private final String name;
    private boolean shutdown;

    @NotNull
    private final TaskRunner taskRunner;

    private static final class AwaitIdleTask extends Task {

        @NotNull
        private final CountDownLatch latch;

        @NotNull
        public final CountDownLatch getLatch() {
            return this.latch;
        }

        public AwaitIdleTask() {
            super(t.s(Util.okHttpName, " awaitIdle"), false);
            this.latch = new CountDownLatch(1);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            this.latch.countDown();
            return -1L;
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.concurrent.TaskQueue$execute$1, reason: invalid class name */
    public static final class AnonymousClass1 extends Task {
        final /* synthetic */ a<l0> $block;
        final /* synthetic */ boolean $cancelable;
        final /* synthetic */ String $name;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, boolean z6, a<l0> aVar) {
            super(str, z6);
            this.$name = str;
            this.$cancelable = z6;
            this.$block = aVar;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            this.$block.invoke();
            return -1L;
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.concurrent.TaskQueue$schedule$2, reason: invalid class name */
    public static final class AnonymousClass2 extends Task {
        final /* synthetic */ a<Long> $block;
        final /* synthetic */ String $name;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(String str, a<Long> aVar) {
            super(str, false, 2, null);
            this.$name = str;
            this.$block = aVar;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            return this.$block.invoke().longValue();
        }
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, Task task, long j6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = 0;
        }
        taskQueue.schedule(task, j6);
    }

    @Nullable
    public final Task getActiveTask$okhttp() {
        return this.activeTask;
    }

    public final boolean getCancelActiveTask$okhttp() {
        return this.cancelActiveTask;
    }

    @NotNull
    public final List<Task> getFutureTasks$okhttp() {
        return this.futureTasks;
    }

    @NotNull
    public final String getName$okhttp() {
        return this.name;
    }

    public final boolean getShutdown$okhttp() {
        return this.shutdown;
    }

    @NotNull
    public final TaskRunner getTaskRunner$okhttp() {
        return this.taskRunner;
    }

    public final void schedule(@NotNull Task task, long j6) {
        t.j(task, "task");
        synchronized (this.taskRunner) {
            if (!getShutdown$okhttp()) {
                if (scheduleAndDecide$okhttp(task, j6, false)) {
                    getTaskRunner$okhttp().kickCoordinator$okhttp(this);
                }
                l0 l0Var = l0.INSTANCE;
            } else if (task.getCancelable()) {
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final void setActiveTask$okhttp(@Nullable Task task) {
        this.activeTask = task;
    }

    public final void setCancelActiveTask$okhttp(boolean z6) {
        this.cancelActiveTask = z6;
    }

    public final void setShutdown$okhttp(boolean z6) {
        this.shutdown = z6;
    }

    @NotNull
    public String toString() {
        return this.name;
    }

    public TaskQueue(@NotNull TaskRunner taskRunner, @NotNull String name) {
        t.j(taskRunner, "taskRunner");
        t.j(name, "name");
        this.taskRunner = taskRunner;
        this.name = name;
        this.futureTasks = new ArrayList();
    }

    public static /* synthetic */ void execute$default(TaskQueue taskQueue, String name, long j6, boolean z6, a block, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = 0;
        }
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        t.j(name, "name");
        t.j(block, "block");
        taskQueue.schedule(new AnonymousClass1(name, z6, block), j6);
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, String name, long j6, a block, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = 0;
        }
        t.j(name, "name");
        t.j(block, "block");
        taskQueue.schedule(new AnonymousClass2(name, block), j6);
    }

    public final void cancelAll() {
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this.taskRunner) {
            try {
                if (cancelAllAndDecide$okhttp()) {
                    getTaskRunner$okhttp().kickCoordinator$okhttp(this);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean cancelAllAndDecide$okhttp() {
        Task task = this.activeTask;
        if (task != null) {
            t.g(task);
            if (task.getCancelable()) {
                this.cancelActiveTask = true;
            }
        }
        int size = this.futureTasks.size() - 1;
        boolean z6 = false;
        if (size >= 0) {
            while (true) {
                int i10 = size - 1;
                if (this.futureTasks.get(size).getCancelable()) {
                    Task task2 = this.futureTasks.get(size);
                    if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                        TaskLoggerKt.log(task2, this, "canceled");
                    }
                    this.futureTasks.remove(size);
                    z6 = true;
                }
                if (i10 < 0) {
                    break;
                }
                size = i10;
            }
        }
        return z6;
    }

    public final void execute(@NotNull String name, long j6, boolean z6, @NotNull a<l0> block) {
        t.j(name, "name");
        t.j(block, "block");
        schedule(new AnonymousClass1(name, z6, block), j6);
    }

    @NotNull
    public final List<Task> getScheduledTasks() {
        List<Task> listU0;
        synchronized (this.taskRunner) {
            listU0 = d0.U0(getFutureTasks$okhttp());
        }
        return listU0;
    }

    @NotNull
    public final CountDownLatch idleLatch() {
        synchronized (this.taskRunner) {
            if (getActiveTask$okhttp() == null && getFutureTasks$okhttp().isEmpty()) {
                return new CountDownLatch(0);
            }
            Task activeTask$okhttp = getActiveTask$okhttp();
            if (activeTask$okhttp instanceof AwaitIdleTask) {
                return ((AwaitIdleTask) activeTask$okhttp).getLatch();
            }
            for (Task task : getFutureTasks$okhttp()) {
                if (task instanceof AwaitIdleTask) {
                    return ((AwaitIdleTask) task).getLatch();
                }
            }
            AwaitIdleTask awaitIdleTask = new AwaitIdleTask();
            if (scheduleAndDecide$okhttp(awaitIdleTask, 0L, false)) {
                getTaskRunner$okhttp().kickCoordinator$okhttp(this);
            }
            return awaitIdleTask.getLatch();
        }
    }

    public final boolean scheduleAndDecide$okhttp(@NotNull Task task, long j6, boolean z6) {
        t.j(task, "task");
        task.initQueue$okhttp(this);
        long jNanoTime = this.taskRunner.getBackend().nanoTime();
        long j10 = jNanoTime + j6;
        int iIndexOf = this.futureTasks.indexOf(task);
        if (iIndexOf != -1) {
            if (task.getNextExecuteNanoTime$okhttp() <= j10) {
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(task, this, "already scheduled");
                }
                return false;
            }
            this.futureTasks.remove(iIndexOf);
        }
        task.setNextExecuteNanoTime$okhttp(j10);
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            TaskLoggerKt.log(task, this, z6 ? t.s("run again after ", TaskLoggerKt.formatDuration(j10 - jNanoTime)) : t.s("scheduled after ", TaskLoggerKt.formatDuration(j10 - jNanoTime)));
        }
        Iterator<Task> it = this.futureTasks.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (it.next().getNextExecuteNanoTime$okhttp() - jNanoTime > j6) {
                break;
            }
            size++;
        }
        if (size == -1) {
            size = this.futureTasks.size();
        }
        this.futureTasks.add(size, task);
        return size == 0;
    }

    public final void shutdown() {
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this.taskRunner) {
            try {
                setShutdown$okhttp(true);
                if (cancelAllAndDecide$okhttp()) {
                    getTaskRunner$okhttp().kickCoordinator$okhttp(this);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void schedule(@NotNull String name, long j6, @NotNull a<Long> block) {
        t.j(name, "name");
        t.j(block, "block");
        schedule(new AnonymousClass2(name, block), j6);
    }
}
