package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class TransactionExecutor implements Executor {

    @Nullable
    private Runnable active;

    @NotNull
    private final Executor executor;

    @NotNull
    private final Object syncLock;

    @NotNull
    private final ArrayDeque<Runnable> tasks;

    public TransactionExecutor(@NotNull Executor executor) {
        kotlin.jvm.internal.t.j(executor, "executor");
        this.executor = executor;
        this.tasks = new ArrayDeque<>();
        this.syncLock = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Runnable command, TransactionExecutor this$0) {
        kotlin.jvm.internal.t.j(command, "$command");
        kotlin.jvm.internal.t.j(this$0, "this$0");
        try {
            command.run();
        } finally {
            this$0.c();
        }
    }

    public final void c() {
        synchronized (this.syncLock) {
            try {
                Runnable runnablePoll = this.tasks.poll();
                Runnable runnable = runnablePoll;
                this.active = runnable;
                if (runnablePoll != null) {
                    this.executor.execute(runnable);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull final Runnable command) {
        kotlin.jvm.internal.t.j(command, "command");
        synchronized (this.syncLock) {
            try {
                this.tasks.offer(new Runnable() { // from class: androidx.room.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        TransactionExecutor.b(command, this);
                    }
                });
                if (this.active == null) {
                    c();
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
