package okio;

import java.io.IOException;
import java.io.InputStream;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
class InputStreamSource implements Source {

    @NotNull
    private final InputStream input;

    @NotNull
    private final Timeout timeout;

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.timeout;
    }

    public InputStreamSource(@NotNull InputStream input, @NotNull Timeout timeout) {
        kotlin.jvm.internal.t.j(input, "input");
        kotlin.jvm.internal.t.j(timeout, "timeout");
        this.input = input;
        this.timeout = timeout;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.input.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j6) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        if (j6 == 0) {
            return 0L;
        }
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        try {
            this.timeout.throwIfReached();
            Segment segmentWritableSegment$okio = sink.writableSegment$okio(1);
            int i10 = this.input.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(j6, 8192 - segmentWritableSegment$okio.limit));
            if (i10 != -1) {
                segmentWritableSegment$okio.limit += i10;
                long j10 = i10;
                sink.setSize$okio(sink.size() + j10);
                return j10;
            }
            if (segmentWritableSegment$okio.pos != segmentWritableSegment$okio.limit) {
                return -1L;
            }
            sink.head = segmentWritableSegment$okio.pop();
            SegmentPool.recycle(segmentWritableSegment$okio);
            return -1L;
        } catch (AssertionError e) {
            if (Okio.isAndroidGetsocknameError(e)) {
                throw new IOException(e);
            }
            throw e;
        }
    }

    @NotNull
    public String toString() {
        return "source(" + this.input + ')';
    }
}
