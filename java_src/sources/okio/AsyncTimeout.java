package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public class AsyncTimeout extends Timeout {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;

    @Nullable
    private static AsyncTimeout head;
    private boolean inQueue;

    @Nullable
    private AsyncTimeout next;
    private long timeoutAt;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean cancelScheduledTimeout(AsyncTimeout asyncTimeout) {
            synchronized (AsyncTimeout.class) {
                if (!asyncTimeout.inQueue) {
                    return false;
                }
                asyncTimeout.inQueue = false;
                for (AsyncTimeout asyncTimeout2 = AsyncTimeout.head; asyncTimeout2 != null; asyncTimeout2 = asyncTimeout2.next) {
                    if (asyncTimeout2.next == asyncTimeout) {
                        asyncTimeout2.next = asyncTimeout.next;
                        asyncTimeout.next = null;
                        return false;
                    }
                }
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void scheduleTimeout(AsyncTimeout asyncTimeout, long j6, boolean z6) {
            synchronized (AsyncTimeout.class) {
                try {
                    if (!(!asyncTimeout.inQueue)) {
                        throw new IllegalStateException("Unbalanced enter/exit".toString());
                    }
                    asyncTimeout.inQueue = true;
                    if (AsyncTimeout.head == null) {
                        AsyncTimeout.head = new AsyncTimeout();
                        new Watchdog().start();
                    }
                    long jNanoTime = System.nanoTime();
                    if (j6 != 0 && z6) {
                        asyncTimeout.timeoutAt = Math.min(j6, asyncTimeout.deadlineNanoTime() - jNanoTime) + jNanoTime;
                    } else if (j6 != 0) {
                        asyncTimeout.timeoutAt = j6 + jNanoTime;
                    } else {
                        if (!z6) {
                            throw new AssertionError();
                        }
                        asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
                    }
                    long jRemainingNanos = asyncTimeout.remainingNanos(jNanoTime);
                    AsyncTimeout asyncTimeout2 = AsyncTimeout.head;
                    kotlin.jvm.internal.t.g(asyncTimeout2);
                    while (asyncTimeout2.next != null) {
                        AsyncTimeout asyncTimeout3 = asyncTimeout2.next;
                        kotlin.jvm.internal.t.g(asyncTimeout3);
                        if (jRemainingNanos < asyncTimeout3.remainingNanos(jNanoTime)) {
                            break;
                        }
                        asyncTimeout2 = asyncTimeout2.next;
                        kotlin.jvm.internal.t.g(asyncTimeout2);
                    }
                    asyncTimeout.next = asyncTimeout2.next;
                    asyncTimeout2.next = asyncTimeout;
                    if (asyncTimeout2 == AsyncTimeout.head) {
                        AsyncTimeout.class.notify();
                    }
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Nullable
        public final AsyncTimeout awaitTimeout$okio() throws InterruptedException {
            AsyncTimeout asyncTimeout = AsyncTimeout.head;
            kotlin.jvm.internal.t.g(asyncTimeout);
            AsyncTimeout asyncTimeout2 = asyncTimeout.next;
            if (asyncTimeout2 != null) {
                long jRemainingNanos = asyncTimeout2.remainingNanos(System.nanoTime());
                if (jRemainingNanos > 0) {
                    long j6 = jRemainingNanos / 1000000;
                    AsyncTimeout.class.wait(j6, (int) (jRemainingNanos - (1000000 * j6)));
                    return null;
                }
                AsyncTimeout asyncTimeout3 = AsyncTimeout.head;
                kotlin.jvm.internal.t.g(asyncTimeout3);
                asyncTimeout3.next = asyncTimeout2.next;
                asyncTimeout2.next = null;
                return asyncTimeout2;
            }
            long jNanoTime = System.nanoTime();
            AsyncTimeout.class.wait(AsyncTimeout.IDLE_TIMEOUT_MILLIS);
            AsyncTimeout asyncTimeout4 = AsyncTimeout.head;
            kotlin.jvm.internal.t.g(asyncTimeout4);
            if (asyncTimeout4.next != null || System.nanoTime() - jNanoTime < AsyncTimeout.IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return AsyncTimeout.head;
        }
    }

    private static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AsyncTimeout asyncTimeoutAwaitTimeout$okio;
            while (true) {
                try {
                    synchronized (AsyncTimeout.class) {
                        asyncTimeoutAwaitTimeout$okio = AsyncTimeout.Companion.awaitTimeout$okio();
                        if (asyncTimeoutAwaitTimeout$okio == AsyncTimeout.head) {
                            AsyncTimeout.head = null;
                            return;
                        }
                        l0 l0Var = l0.INSTANCE;
                    }
                    if (asyncTimeoutAwaitTimeout$okio != null) {
                        asyncTimeoutAwaitTimeout$okio.timedOut();
                    }
                } catch (InterruptedException unused) {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long remainingNanos(long j6) {
        return this.timeoutAt - j6;
    }

    protected void timedOut() {
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public final boolean exit() {
        return Companion.cancelScheduledTimeout(this);
    }

    @NotNull
    protected IOException newTimeoutException(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @NotNull
    public final Sink sink(@NotNull final Sink sink) {
        kotlin.jvm.internal.t.j(sink, "sink");
        return new Sink() { // from class: okio.AsyncTimeout.sink.1
            @Override // okio.Sink
            @NotNull
            public AsyncTimeout timeout() {
                return AsyncTimeout.this;
            }

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                Sink sink2 = sink;
                asyncTimeout.enter();
                try {
                    try {
                        sink2.close();
                        l0 l0Var = l0.INSTANCE;
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(null);
                        }
                    } catch (IOException e) {
                        if (!asyncTimeout.exit()) {
                            throw e;
                        }
                        throw asyncTimeout.access$newTimeoutException(e);
                    }
                } catch (Throwable th) {
                    asyncTimeout.exit();
                    throw th;
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() throws IOException {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                Sink sink2 = sink;
                asyncTimeout.enter();
                try {
                    try {
                        sink2.flush();
                        l0 l0Var = l0.INSTANCE;
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(null);
                        }
                    } catch (IOException e) {
                        if (!asyncTimeout.exit()) {
                            throw e;
                        }
                        throw asyncTimeout.access$newTimeoutException(e);
                    }
                } catch (Throwable th) {
                    asyncTimeout.exit();
                    throw th;
                }
            }

            @NotNull
            public String toString() {
                return "AsyncTimeout.sink(" + sink + ')';
            }

            @Override // okio.Sink
            public void write(@NotNull Buffer source, long j6) throws IOException {
                kotlin.jvm.internal.t.j(source, "source");
                _UtilKt.checkOffsetAndCount(source.size(), 0L, j6);
                while (true) {
                    long j10 = 0;
                    if (j6 <= 0) {
                        return;
                    }
                    Segment segment = source.head;
                    kotlin.jvm.internal.t.g(segment);
                    while (j10 < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        j10 += (long) (segment.limit - segment.pos);
                        if (j10 >= j6) {
                            j10 = j6;
                            break;
                        } else {
                            segment = segment.next;
                            kotlin.jvm.internal.t.g(segment);
                        }
                    }
                    AsyncTimeout asyncTimeout = AsyncTimeout.this;
                    Sink sink2 = sink;
                    asyncTimeout.enter();
                    try {
                        try {
                            sink2.write(source, j10);
                            l0 l0Var = l0.INSTANCE;
                            if (asyncTimeout.exit()) {
                                throw asyncTimeout.access$newTimeoutException(null);
                            }
                            j6 -= j10;
                        } catch (IOException e) {
                            if (!asyncTimeout.exit()) {
                                throw e;
                            }
                            throw asyncTimeout.access$newTimeoutException(e);
                        }
                    } catch (Throwable th) {
                        asyncTimeout.exit();
                        throw th;
                    }
                }
            }
        };
    }

    @NotNull
    public final Source source(@NotNull final Source source) {
        kotlin.jvm.internal.t.j(source, "source");
        return new Source() { // from class: okio.AsyncTimeout.source.1
            @Override // okio.Source
            @NotNull
            public AsyncTimeout timeout() {
                return AsyncTimeout.this;
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                Source source2 = source;
                asyncTimeout.enter();
                try {
                    try {
                        source2.close();
                        l0 l0Var = l0.INSTANCE;
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(null);
                        }
                    } catch (IOException e) {
                        if (!asyncTimeout.exit()) {
                            throw e;
                        }
                        throw asyncTimeout.access$newTimeoutException(e);
                    }
                } catch (Throwable th) {
                    asyncTimeout.exit();
                    throw th;
                }
            }

            @Override // okio.Source
            public long read(@NotNull Buffer sink, long j6) throws IOException {
                kotlin.jvm.internal.t.j(sink, "sink");
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                Source source2 = source;
                asyncTimeout.enter();
                try {
                    try {
                        long j10 = source2.read(sink, j6);
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(null);
                        }
                        return j10;
                    } catch (IOException e) {
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(e);
                        }
                        throw e;
                    }
                } catch (Throwable th) {
                    asyncTimeout.exit();
                    throw th;
                }
            }

            @NotNull
            public String toString() {
                return "AsyncTimeout.source(" + source + ')';
            }
        };
    }

    public final <T> T withTimeout(@NotNull e8.a<? extends T> block) throws IOException {
        kotlin.jvm.internal.t.j(block, "block");
        enter();
        try {
            try {
                T tInvoke = block.invoke();
                kotlin.jvm.internal.r.b(1);
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                kotlin.jvm.internal.r.a(1);
                return tInvoke;
            } catch (IOException e) {
                if (exit()) {
                    throw access$newTimeoutException(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            kotlin.jvm.internal.r.b(1);
            exit();
            kotlin.jvm.internal.r.a(1);
            throw th;
        }
    }

    @NotNull
    public final IOException access$newTimeoutException(@Nullable IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            Companion.scheduleTimeout(this, jTimeoutNanos, zHasDeadline);
        }
    }
}
