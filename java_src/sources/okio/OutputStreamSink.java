package okio;

import java.io.IOException;
import java.io.OutputStream;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class OutputStreamSink implements Sink {

    @NotNull
    private final OutputStream out;

    @NotNull
    private final Timeout timeout;

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.timeout;
    }

    public OutputStreamSink(@NotNull OutputStream out, @NotNull Timeout timeout) {
        kotlin.jvm.internal.t.j(out, "out");
        kotlin.jvm.internal.t.j(timeout, "timeout");
        this.out = out;
        this.timeout = timeout;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @NotNull
    public String toString() {
        return "sink(" + this.out + ')';
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        _UtilKt.checkOffsetAndCount(source.size(), 0L, j6);
        while (j6 > 0) {
            this.timeout.throwIfReached();
            Segment segment = source.head;
            kotlin.jvm.internal.t.g(segment);
            int iMin = (int) Math.min(j6, segment.limit - segment.pos);
            this.out.write(segment.data, segment.pos, iMin);
            segment.pos += iMin;
            long j10 = iMin;
            j6 -= j10;
            source.setSize$okio(source.size() - j10);
            if (segment.pos == segment.limit) {
                source.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }
}
