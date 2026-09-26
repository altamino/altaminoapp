package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class Pipe {

    @NotNull
    private final Buffer buffer = new Buffer();
    private boolean canceled;

    @Nullable
    private Sink foldedSink;
    private final long maxBufferSize;

    @NotNull
    private final Sink sink;
    private boolean sinkClosed;

    @NotNull
    private final Source source;
    private boolean sourceClosed;

    @NotNull
    /* JADX INFO: renamed from: -deprecated_sink, reason: not valid java name */
    public final Sink m1801deprecated_sink() {
        return this.sink;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_source, reason: not valid java name */
    public final Source m1802deprecated_source() {
        return this.source;
    }

    @NotNull
    public final Buffer getBuffer$okio() {
        return this.buffer;
    }

    public final boolean getCanceled$okio() {
        return this.canceled;
    }

    @Nullable
    public final Sink getFoldedSink$okio() {
        return this.foldedSink;
    }

    public final long getMaxBufferSize$okio() {
        return this.maxBufferSize;
    }

    public final boolean getSinkClosed$okio() {
        return this.sinkClosed;
    }

    public final boolean getSourceClosed$okio() {
        return this.sourceClosed;
    }

    public final void setCanceled$okio(boolean z6) {
        this.canceled = z6;
    }

    public final void setFoldedSink$okio(@Nullable Sink sink) {
        this.foldedSink = sink;
    }

    public final void setSinkClosed$okio(boolean z6) {
        this.sinkClosed = z6;
    }

    public final void setSourceClosed$okio(boolean z6) {
        this.sourceClosed = z6;
    }

    @NotNull
    public final Sink sink() {
        return this.sink;
    }

    @NotNull
    public final Source source() {
        return this.source;
    }

    public final void cancel() {
        synchronized (this.buffer) {
            this.canceled = true;
            this.buffer.clear();
            this.buffer.notifyAll();
            l0 l0Var = l0.INSTANCE;
        }
    }

    public final void fold(@NotNull Sink sink) throws IOException {
        boolean z6;
        Buffer buffer;
        kotlin.jvm.internal.t.j(sink, "sink");
        while (true) {
            synchronized (this.buffer) {
                if (this.foldedSink != null) {
                    throw new IllegalStateException("sink already folded".toString());
                }
                if (this.canceled) {
                    this.foldedSink = sink;
                    throw new IOException("canceled");
                }
                if (this.buffer.exhausted()) {
                    this.sourceClosed = true;
                    this.foldedSink = sink;
                    return;
                }
                z6 = this.sinkClosed;
                buffer = new Buffer();
                Buffer buffer2 = this.buffer;
                buffer.write(buffer2, buffer2.size());
                this.buffer.notifyAll();
                l0 l0Var = l0.INSTANCE;
            }
            try {
                sink.write(buffer, buffer.size());
                if (z6) {
                    sink.close();
                } else {
                    sink.flush();
                }
            } catch (Throwable th) {
                synchronized (this.buffer) {
                    this.sourceClosed = true;
                    this.buffer.notifyAll();
                    l0 l0Var2 = l0.INSTANCE;
                    throw th;
                }
            }
        }
    }

    public Pipe(long j6) {
        this.maxBufferSize = j6;
        if (j6 >= 1) {
            this.sink = new Sink() { // from class: okio.Pipe.sink.1

                @NotNull
                private final Timeout timeout = new Timeout();

                @Override // okio.Sink
                @NotNull
                public Timeout timeout() {
                    return this.timeout;
                }

                @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    boolean zHasDeadline;
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        try {
                            if (pipe.getSinkClosed$okio()) {
                                return;
                            }
                            Sink foldedSink$okio = pipe.getFoldedSink$okio();
                            if (foldedSink$okio == null) {
                                if (pipe.getSourceClosed$okio() && pipe.getBuffer$okio().size() > 0) {
                                    throw new IOException("source is closed");
                                }
                                pipe.setSinkClosed$okio(true);
                                pipe.getBuffer$okio().notifyAll();
                                foldedSink$okio = null;
                            }
                            l0 l0Var = l0.INSTANCE;
                            if (foldedSink$okio != null) {
                                Pipe pipe2 = Pipe.this;
                                Timeout timeout = foldedSink$okio.timeout();
                                Timeout timeout2 = pipe2.sink().timeout();
                                long jTimeoutNanos = timeout.timeoutNanos();
                                timeout.timeout(Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                                if (!timeout.hasDeadline()) {
                                    if (timeout2.hasDeadline()) {
                                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                                    }
                                    try {
                                        foldedSink$okio.close();
                                        if (zHasDeadline) {
                                            return;
                                        } else {
                                            return;
                                        }
                                    } finally {
                                        timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                                        if (timeout2.hasDeadline()) {
                                            timeout.clearDeadline();
                                        }
                                    }
                                }
                                long jDeadlineNanoTime = timeout.deadlineNanoTime();
                                if (timeout2.hasDeadline()) {
                                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                                }
                                try {
                                    foldedSink$okio.close();
                                } finally {
                                    timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                                    if (timeout2.hasDeadline()) {
                                        timeout.deadlineNanoTime(jDeadlineNanoTime);
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }

                @Override // okio.Sink, java.io.Flushable
                public void flush() {
                    Sink foldedSink$okio;
                    boolean zHasDeadline;
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        try {
                            if (!(!pipe.getSinkClosed$okio())) {
                                throw new IllegalStateException("closed".toString());
                            }
                            if (pipe.getCanceled$okio()) {
                                throw new IOException("canceled");
                            }
                            foldedSink$okio = pipe.getFoldedSink$okio();
                            if (foldedSink$okio == null) {
                                if (pipe.getSourceClosed$okio() && pipe.getBuffer$okio().size() > 0) {
                                    throw new IOException("source is closed");
                                }
                                foldedSink$okio = null;
                            }
                            l0 l0Var = l0.INSTANCE;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (foldedSink$okio != null) {
                        Pipe pipe2 = Pipe.this;
                        Timeout timeout = foldedSink$okio.timeout();
                        Timeout timeout2 = pipe2.sink().timeout();
                        long jTimeoutNanos = timeout.timeoutNanos();
                        timeout.timeout(Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                        if (!timeout.hasDeadline()) {
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                            }
                            try {
                                foldedSink$okio.flush();
                                if (zHasDeadline) {
                                    return;
                                } else {
                                    return;
                                }
                            } finally {
                                timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                }
                            }
                        }
                        long jDeadlineNanoTime = timeout.deadlineNanoTime();
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                        }
                        try {
                            foldedSink$okio.flush();
                        } finally {
                            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(jDeadlineNanoTime);
                            }
                        }
                    }
                }

                @Override // okio.Sink
                public void write(@NotNull Buffer source, long j10) {
                    Sink foldedSink$okio;
                    boolean zHasDeadline;
                    kotlin.jvm.internal.t.j(source, "source");
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        try {
                            if (!(!pipe.getSinkClosed$okio())) {
                                throw new IllegalStateException("closed".toString());
                            }
                            if (pipe.getCanceled$okio()) {
                                throw new IOException("canceled");
                            }
                            while (true) {
                                if (j10 <= 0) {
                                    foldedSink$okio = null;
                                    break;
                                }
                                foldedSink$okio = pipe.getFoldedSink$okio();
                                if (foldedSink$okio != null) {
                                    break;
                                }
                                if (pipe.getSourceClosed$okio()) {
                                    throw new IOException("source is closed");
                                }
                                long maxBufferSize$okio = pipe.getMaxBufferSize$okio() - pipe.getBuffer$okio().size();
                                if (maxBufferSize$okio == 0) {
                                    this.timeout.waitUntilNotified(pipe.getBuffer$okio());
                                    if (pipe.getCanceled$okio()) {
                                        throw new IOException("canceled");
                                    }
                                } else {
                                    long jMin = Math.min(maxBufferSize$okio, j10);
                                    pipe.getBuffer$okio().write(source, jMin);
                                    j10 -= jMin;
                                    pipe.getBuffer$okio().notifyAll();
                                }
                            }
                            l0 l0Var = l0.INSTANCE;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (foldedSink$okio != null) {
                        Pipe pipe2 = Pipe.this;
                        Timeout timeout = foldedSink$okio.timeout();
                        Timeout timeout2 = pipe2.sink().timeout();
                        long jTimeoutNanos = timeout.timeoutNanos();
                        timeout.timeout(Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                        if (!timeout.hasDeadline()) {
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                            }
                            try {
                                foldedSink$okio.write(source, j10);
                                if (zHasDeadline) {
                                    return;
                                } else {
                                    return;
                                }
                            } finally {
                                timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                }
                            }
                        }
                        long jDeadlineNanoTime = timeout.deadlineNanoTime();
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                        }
                        try {
                            foldedSink$okio.write(source, j10);
                        } finally {
                            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(jDeadlineNanoTime);
                            }
                        }
                    }
                }
            };
            this.source = new Source() { // from class: okio.Pipe.source.1

                @NotNull
                private final Timeout timeout = new Timeout();

                @Override // okio.Source
                @NotNull
                public Timeout timeout() {
                    return this.timeout;
                }

                @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        pipe.setSourceClosed$okio(true);
                        pipe.getBuffer$okio().notifyAll();
                        l0 l0Var = l0.INSTANCE;
                    }
                }

                @Override // okio.Source
                public long read(@NotNull Buffer sink, long j10) {
                    kotlin.jvm.internal.t.j(sink, "sink");
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        try {
                            if (!(!pipe.getSourceClosed$okio())) {
                                throw new IllegalStateException("closed".toString());
                            }
                            if (pipe.getCanceled$okio()) {
                                throw new IOException("canceled");
                            }
                            while (pipe.getBuffer$okio().size() == 0) {
                                if (pipe.getSinkClosed$okio()) {
                                    return -1L;
                                }
                                this.timeout.waitUntilNotified(pipe.getBuffer$okio());
                                if (pipe.getCanceled$okio()) {
                                    throw new IOException("canceled");
                                }
                            }
                            long j11 = pipe.getBuffer$okio().read(sink, j10);
                            pipe.getBuffer$okio().notifyAll();
                            return j11;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            };
        } else {
            throw new IllegalArgumentException(("maxBufferSize < 1: " + j6).toString());
        }
    }

    private final void forward(Sink sink, e8.l<? super Sink, l0> lVar) {
        Timeout timeout = sink.timeout();
        Timeout timeout2 = sink().timeout();
        long jTimeoutNanos = timeout.timeoutNanos();
        timeout.timeout(Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
        if (timeout.hasDeadline()) {
            long jDeadlineNanoTime = timeout.deadlineNanoTime();
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
            }
            try {
                lVar.invoke(sink);
                l0 l0Var = l0.INSTANCE;
                kotlin.jvm.internal.r.b(1);
                return;
            } finally {
                kotlin.jvm.internal.r.b(1);
                timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(jDeadlineNanoTime);
                }
                kotlin.jvm.internal.r.a(1);
            }
        }
        if (timeout2.hasDeadline()) {
            timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
        }
        try {
            lVar.invoke(sink);
            l0 l0Var2 = l0.INSTANCE;
            kotlin.jvm.internal.r.b(1);
        } finally {
            kotlin.jvm.internal.r.b(1);
            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (timeout2.hasDeadline()) {
                timeout.clearDeadline();
            }
            kotlin.jvm.internal.r.a(1);
        }
    }
}
