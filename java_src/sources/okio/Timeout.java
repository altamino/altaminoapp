package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public class Timeout {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final Timeout NONE = new Timeout() { // from class: okio.Timeout$Companion$NONE$1
        @Override // okio.Timeout
        @NotNull
        public Timeout deadlineNanoTime(long j6) {
            return this;
        }

        @Override // okio.Timeout
        public void throwIfReached() {
        }

        @Override // okio.Timeout
        @NotNull
        public Timeout timeout(long j6, @NotNull TimeUnit unit) {
            kotlin.jvm.internal.t.j(unit, "unit");
            return this;
        }
    };
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        public final long minTimeout(long j6, long j10) {
            return (j6 != 0 && (j10 == 0 || j6 < j10)) ? j6 : j10;
        }

        private Companion() {
        }
    }

    @NotNull
    public Timeout clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    @NotNull
    public Timeout clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    @NotNull
    public Timeout deadlineNanoTime(long j6) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j6;
        return this;
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    @NotNull
    public final Timeout deadline(long j6, @NotNull TimeUnit unit) {
        kotlin.jvm.internal.t.j(unit, "unit");
        if (j6 > 0) {
            return deadlineNanoTime(System.nanoTime() + unit.toNanos(j6));
        }
        throw new IllegalArgumentException(("duration <= 0: " + j6).toString());
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public final <T> T intersectWith(@NotNull Timeout other, @NotNull e8.a<? extends T> block) {
        kotlin.jvm.internal.t.j(other, "other");
        kotlin.jvm.internal.t.j(block, "block");
        long jTimeoutNanos = timeoutNanos();
        timeout(Companion.minTimeout(other.timeoutNanos(), timeoutNanos()), TimeUnit.NANOSECONDS);
        if (!hasDeadline()) {
            if (other.hasDeadline()) {
                deadlineNanoTime(other.deadlineNanoTime());
            }
            try {
                T tInvoke = block.invoke();
                kotlin.jvm.internal.r.b(1);
                return tInvoke;
            } finally {
                kotlin.jvm.internal.r.b(1);
                timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (other.hasDeadline()) {
                    clearDeadline();
                }
                kotlin.jvm.internal.r.a(1);
            }
        }
        long jDeadlineNanoTime = deadlineNanoTime();
        if (other.hasDeadline()) {
            deadlineNanoTime(Math.min(deadlineNanoTime(), other.deadlineNanoTime()));
        }
        try {
            T tInvoke2 = block.invoke();
            kotlin.jvm.internal.r.b(1);
            return tInvoke2;
        } finally {
            kotlin.jvm.internal.r.b(1);
            timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (other.hasDeadline()) {
                deadlineNanoTime(jDeadlineNanoTime);
            }
            kotlin.jvm.internal.r.a(1);
        }
    }

    @NotNull
    public Timeout timeout(long j6, @NotNull TimeUnit unit) {
        kotlin.jvm.internal.t.j(unit, "unit");
        if (j6 >= 0) {
            this.timeoutNanos = unit.toNanos(j6);
            return this;
        }
        throw new IllegalArgumentException(("timeout < 0: " + j6).toString());
    }

    public final void waitUntilNotified(@NotNull Object monitor) throws InterruptedIOException {
        kotlin.jvm.internal.t.j(monitor, "monitor");
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                monitor.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j6 = jTimeoutNanos / 1000000;
                Long.signum(j6);
                monitor.wait(j6, (int) (jTimeoutNanos - (1000000 * j6)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public void throwIfReached() throws IOException {
        if (!Thread.currentThread().isInterrupted()) {
            if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }
}
