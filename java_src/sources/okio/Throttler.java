package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class Throttler {
    private long allocatedUntil;
    private long bytesPerSecond;
    private long maxByteCount;
    private long waitByteCount;

    public Throttler(long j6) {
        this.allocatedUntil = j6;
        this.waitByteCount = PlaybackStateCompat.ACTION_PLAY_FROM_URI;
        this.maxByteCount = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    }

    public final void bytesPerSecond(long j6) {
        bytesPerSecond$default(this, j6, 0L, 0L, 6, null);
    }

    public Throttler() {
        this(System.nanoTime());
    }

    public static /* synthetic */ void bytesPerSecond$default(Throttler throttler, long j6, long j10, long j11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = throttler.waitByteCount;
        }
        long j12 = j10;
        if ((i10 & 4) != 0) {
            j11 = throttler.maxByteCount;
        }
        throttler.bytesPerSecond(j6, j12, j11);
    }

    private final long nanosToBytes(long j6) {
        return (j6 * this.bytesPerSecond) / 1000000000;
    }

    public final long byteCountOrWaitNanos$okio(long j6, long j10) {
        if (this.bytesPerSecond == 0) {
            return j10;
        }
        long jMax = Math.max(this.allocatedUntil - j6, 0L);
        long jNanosToBytes = this.maxByteCount - nanosToBytes(jMax);
        if (jNanosToBytes >= j10) {
            this.allocatedUntil = j6 + jMax + bytesToNanos(j10);
            return j10;
        }
        long j11 = this.waitByteCount;
        if (jNanosToBytes >= j11) {
            this.allocatedUntil = j6 + bytesToNanos(this.maxByteCount);
            return jNanosToBytes;
        }
        long jMin = Math.min(j11, j10);
        long jBytesToNanos = jMax + bytesToNanos(jMin - this.maxByteCount);
        if (jBytesToNanos != 0) {
            return -jBytesToNanos;
        }
        this.allocatedUntil = j6 + bytesToNanos(this.maxByteCount);
        return jMin;
    }

    public final void bytesPerSecond(long j6, long j10) {
        bytesPerSecond$default(this, j6, j10, 0L, 4, null);
    }

    @NotNull
    public final Sink sink(@NotNull Sink sink) {
        kotlin.jvm.internal.t.j(sink, "sink");
        return new ForwardingSink(sink) { // from class: okio.Throttler.sink.1
            @Override // okio.ForwardingSink, okio.Sink
            public void write(@NotNull Buffer source, long j6) throws IOException {
                kotlin.jvm.internal.t.j(source, "source");
                while (j6 > 0) {
                    try {
                        long jTake$okio = this.take$okio(j6);
                        super.write(source, jTake$okio);
                        j6 -= jTake$okio;
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException("interrupted");
                    }
                }
            }
        };
    }

    @NotNull
    public final Source source(@NotNull Source source) {
        kotlin.jvm.internal.t.j(source, "source");
        return new ForwardingSource(source) { // from class: okio.Throttler.source.1
            @Override // okio.ForwardingSource, okio.Source
            public long read(@NotNull Buffer sink, long j6) throws InterruptedIOException {
                kotlin.jvm.internal.t.j(sink, "sink");
                try {
                    return super.read(sink, this.take$okio(j6));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException("interrupted");
                }
            }
        };
    }

    public final long take$okio(long j6) {
        long jByteCountOrWaitNanos$okio;
        if (j6 <= 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        synchronized (this) {
            while (true) {
                jByteCountOrWaitNanos$okio = byteCountOrWaitNanos$okio(System.nanoTime(), j6);
                if (jByteCountOrWaitNanos$okio < 0) {
                    waitNanos(-jByteCountOrWaitNanos$okio);
                }
            }
        }
        return jByteCountOrWaitNanos$okio;
    }

    private final long bytesToNanos(long j6) {
        return (j6 * 1000000000) / this.bytesPerSecond;
    }

    private final void waitNanos(long j6) throws InterruptedException {
        long j10 = j6 / 1000000;
        wait(j10, (int) (j6 - (1000000 * j10)));
    }

    public final void bytesPerSecond(long j6, long j10, long j11) {
        synchronized (this) {
            try {
                if (j6 < 0) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (j10 <= 0) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (j11 >= j10) {
                    this.bytesPerSecond = j6;
                    this.waitByteCount = j10;
                    this.maxByteCount = j11;
                    notifyAll();
                    l0 l0Var = l0.INSTANCE;
                } else {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
