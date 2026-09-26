package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskRunner {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final TaskRunner INSTANCE = new TaskRunner(new RealBackend(Util.threadFactory(t.s(Util.okHttpName, " TaskRunner"), true)));

    @NotNull
    private static final Logger logger;

    @NotNull
    private final Backend backend;

    @NotNull
    private final List<TaskQueue> busyQueues;
    private boolean coordinatorWaiting;
    private long coordinatorWakeUpAt;
    private int nextQueueName;

    @NotNull
    private final List<TaskQueue> readyQueues;

    @NotNull
    private final Runnable runnable;

    public interface Backend {
        void beforeTask(@NotNull TaskRunner taskRunner);

        void coordinatorNotify(@NotNull TaskRunner taskRunner);

        void coordinatorWait(@NotNull TaskRunner taskRunner, long j6);

        void execute(@NotNull Runnable runnable);

        long nanoTime();
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Logger getLogger() {
            return TaskRunner.logger;
        }
    }

    public static final class RealBackend implements Backend {

        @NotNull
        private final ThreadPoolExecutor executor;

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void beforeTask(@NotNull TaskRunner taskRunner) {
            t.j(taskRunner, "taskRunner");
        }

        public RealBackend(@NotNull ThreadFactory threadFactory) {
            t.j(threadFactory, "threadFactory");
            this.executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorNotify(@NotNull TaskRunner taskRunner) {
            t.j(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorWait(@NotNull TaskRunner taskRunner, long j6) throws InterruptedException {
            t.j(taskRunner, "taskRunner");
            long j10 = j6 / 1000000;
            long j11 = j6 - (1000000 * j10);
            if (j10 > 0 || j6 > 0) {
                taskRunner.wait(j10, (int) j11);
            }
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void execute(@NotNull Runnable runnable) {
            t.j(runnable, "runnable");
            this.executor.execute(runnable);
        }

        public final void shutdown() {
            this.executor.shutdown();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public long nanoTime() {
            return System.nanoTime();
        }
    }

    @NotNull
    public final List<TaskQueue> activeQueues() {
        List<TaskQueue> listD0;
        synchronized (this) {
            listD0 = d0.D0(this.busyQueues, this.readyQueues);
        }
        return listD0;
    }

    @NotNull
    public final Backend getBackend() {
        return this.backend;
    }

    @NotNull
    public final TaskQueue newQueue() {
        int i10;
        synchronized (this) {
            i10 = this.nextQueueName;
            this.nextQueueName = i10 + 1;
        }
        return new TaskQueue(this, t.s("Q", Integer.valueOf(i10)));
    }

    static {
        Logger logger2 = Logger.getLogger(TaskRunner.class.getName());
        t.i(logger2, "getLogger(TaskRunner::class.java.name)");
        logger = logger2;
    }

    public TaskRunner(@NotNull Backend backend) {
        t.j(backend, "backend");
        this.backend = backend;
        this.nextQueueName = 10000;
        this.busyQueues = new ArrayList();
        this.readyQueues = new ArrayList();
        this.runnable = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public void run() {
                Task taskAwaitTaskToRun;
                long jNanoTime;
                while (true) {
                    TaskRunner taskRunner = this.this$0;
                    synchronized (taskRunner) {
                        taskAwaitTaskToRun = taskRunner.awaitTaskToRun();
                    }
                    if (taskAwaitTaskToRun == null) {
                        return;
                    }
                    TaskQueue queue$okhttp = taskAwaitTaskToRun.getQueue$okhttp();
                    t.g(queue$okhttp);
                    TaskRunner taskRunner2 = this.this$0;
                    boolean zIsLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
                    if (zIsLoggable) {
                        jNanoTime = queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime();
                        TaskLoggerKt.log(taskAwaitTaskToRun, queue$okhttp, "starting");
                    } else {
                        jNanoTime = -1;
                    }
                    try {
                        taskRunner2.runTask(taskAwaitTaskToRun);
                        try {
                            l0 l0Var = l0.INSTANCE;
                            if (zIsLoggable) {
                                TaskLoggerKt.log(taskAwaitTaskToRun, queue$okhttp, t.s("finished run in ", TaskLoggerKt.formatDuration(queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime)));
                            }
                        } catch (Throwable th) {
                            if (zIsLoggable) {
                                TaskLoggerKt.log(taskAwaitTaskToRun, queue$okhttp, t.s("failed a run in ", TaskLoggerKt.formatDuration(queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime)));
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        taskRunner2.getBackend().execute(this);
                        throw th2;
                    }
                }
            }
        };
    }

    private final void afterRun(Task task, long j6) {
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        TaskQueue queue$okhttp = task.getQueue$okhttp();
        t.g(queue$okhttp);
        if (queue$okhttp.getActiveTask$okhttp() != task) {
            throw new IllegalStateException("Check failed.".toString());
        }
        boolean cancelActiveTask$okhttp = queue$okhttp.getCancelActiveTask$okhttp();
        queue$okhttp.setCancelActiveTask$okhttp(false);
        queue$okhttp.setActiveTask$okhttp(null);
        this.busyQueues.remove(queue$okhttp);
        if (j6 != -1 && !cancelActiveTask$okhttp && !queue$okhttp.getShutdown$okhttp()) {
            queue$okhttp.scheduleAndDecide$okhttp(task, j6, true);
        }
        if (!queue$okhttp.getFutureTasks$okhttp().isEmpty()) {
            this.readyQueues.add(queue$okhttp);
        }
    }

    private final void beforeRun(Task task) {
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        task.setNextExecuteNanoTime$okhttp(-1L);
        TaskQueue queue$okhttp = task.getQueue$okhttp();
        t.g(queue$okhttp);
        queue$okhttp.getFutureTasks$okhttp().remove(task);
        this.readyQueues.remove(queue$okhttp);
        queue$okhttp.setActiveTask$okhttp(task);
        this.busyQueues.add(queue$okhttp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runTask(Task task) {
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(task.getName());
        try {
            long jRunOnce = task.runOnce();
            synchronized (this) {
                afterRun(task, jRunOnce);
                l0 l0Var = l0.INSTANCE;
            }
        } finally {
            synchronized (this) {
                afterRun(task, -1L);
                l0 l0Var2 = l0.INSTANCE;
                threadCurrentThread.setName(name);
            }
        }
    }

    @Nullable
    public final Task awaitTaskToRun() {
        boolean z6;
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        while (!this.readyQueues.isEmpty()) {
            long jNanoTime = this.backend.nanoTime();
            Iterator<TaskQueue> it = this.readyQueues.iterator();
            long jMin = Long.MAX_VALUE;
            Task task = null;
            while (true) {
                if (!it.hasNext()) {
                    z6 = false;
                    break;
                }
                Task task2 = it.next().getFutureTasks$okhttp().get(0);
                long jMax = Math.max(0L, task2.getNextExecuteNanoTime$okhttp() - jNanoTime);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (task != null) {
                        z6 = true;
                        break;
                    }
                    task = task2;
                }
            }
            if (task != null) {
                beforeRun(task);
                if (z6 || (!this.coordinatorWaiting && (!this.readyQueues.isEmpty()))) {
                    this.backend.execute(this.runnable);
                }
                return task;
            }
            if (this.coordinatorWaiting) {
                if (jMin < this.coordinatorWakeUpAt - jNanoTime) {
                    this.backend.coordinatorNotify(this);
                }
                return null;
            }
            this.coordinatorWaiting = true;
            this.coordinatorWakeUpAt = jNanoTime + jMin;
            try {
                try {
                    this.backend.coordinatorWait(this, jMin);
                } catch (InterruptedException unused) {
                    cancelAll();
                }
                this.coordinatorWaiting = false;
            } catch (Throwable th) {
                this.coordinatorWaiting = false;
                throw th;
            }
        }
        return null;
    }

    public final void cancelAll() {
        int size = this.busyQueues.size() - 1;
        if (size >= 0) {
            while (true) {
                int i10 = size - 1;
                this.busyQueues.get(size).cancelAllAndDecide$okhttp();
                if (i10 < 0) {
                    break;
                } else {
                    size = i10;
                }
            }
        }
        int size2 = this.readyQueues.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i11 = size2 - 1;
            TaskQueue taskQueue = this.readyQueues.get(size2);
            taskQueue.cancelAllAndDecide$okhttp();
            if (taskQueue.getFutureTasks$okhttp().isEmpty()) {
                this.readyQueues.remove(size2);
            }
            if (i11 < 0) {
                return;
            } else {
                size2 = i11;
            }
        }
    }

    public final void kickCoordinator$okhttp(@NotNull TaskQueue taskQueue) {
        t.j(taskQueue, "taskQueue");
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        if (taskQueue.getActiveTask$okhttp() == null) {
            if (!taskQueue.getFutureTasks$okhttp().isEmpty()) {
                Util.addIfAbsent(this.readyQueues, taskQueue);
            } else {
                this.readyQueues.remove(taskQueue);
            }
        }
        if (this.coordinatorWaiting) {
            this.backend.coordinatorNotify(this);
        } else {
            this.backend.execute(this.runnable);
        }
    }
}
