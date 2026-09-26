package okhttp3.internal.concurrent;

import e8.a;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import okhttp3.internal.http2.Http2Connection;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class TaskLoggerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void log(Task task, TaskQueue taskQueue, String str) {
        Logger logger = TaskRunner.Companion.getLogger();
        StringBuilder sb = new StringBuilder();
        sb.append(taskQueue.getName$okhttp());
        sb.append(' ');
        u0 u0Var = u0.INSTANCE;
        String str2 = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        t.i(str2, "format(format, *args)");
        sb.append(str2);
        sb.append(": ");
        sb.append(task.getName());
        logger.fine(sb.toString());
    }

    public static final <T> T logElapsed(@NotNull Task task, @NotNull TaskQueue queue, @NotNull a<? extends T> block) {
        long jNanoTime;
        t.j(task, "task");
        t.j(queue, "queue");
        t.j(block, "block");
        boolean zIsLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
        if (zIsLoggable) {
            jNanoTime = queue.getTaskRunner$okhttp().getBackend().nanoTime();
            log(task, queue, "starting");
        } else {
            jNanoTime = -1;
        }
        try {
            T tInvoke = block.invoke();
            r.b(1);
            if (zIsLoggable) {
                String strS = t.s("finished run in ", formatDuration(queue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime));
            }
            return tInvoke;
        } finally {
            r.b(1);
            if (zIsLoggable) {
                log(task, queue, t.s("failed a run in ", formatDuration(queue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime)));
            }
            r.a(1);
        }
    }

    public static final void taskLog(@NotNull Task task, @NotNull TaskQueue queue, @NotNull a<String> messageBlock) {
        t.j(task, "task");
        t.j(queue, "queue");
        t.j(messageBlock, "messageBlock");
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            log(task, queue, messageBlock.invoke());
        }
    }

    @NotNull
    public static final String formatDuration(long j6) {
        String str;
        if (j6 <= -999500000) {
            str = ((j6 - ((long) 500000000)) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        } else if (j6 <= -999500) {
            str = ((j6 - ((long) 500000)) / ((long) 1000000)) + " ms";
        } else if (j6 <= 0) {
            str = ((j6 - ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j6 < 999500) {
            str = ((j6 + ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j6 < 999500000) {
            str = ((j6 + ((long) 500000)) / ((long) 1000000)) + " ms";
        } else {
            str = ((j6 + ((long) 500000000)) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        }
        u0 u0Var = u0.INSTANCE;
        String str2 = String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        t.i(str2, "format(format, *args)");
        return str2;
    }
}
