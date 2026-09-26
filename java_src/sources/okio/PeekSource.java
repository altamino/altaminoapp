package okio;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class PeekSource implements Source {

    @NotNull
    private final Buffer buffer;
    private boolean closed;
    private int expectedPos;

    @Nullable
    private Segment expectedSegment;
    private long pos;

    @NotNull
    private final BufferedSource upstream;

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    public PeekSource(@NotNull BufferedSource upstream) {
        kotlin.jvm.internal.t.j(upstream, "upstream");
        this.upstream = upstream;
        Buffer buffer = upstream.getBuffer();
        this.buffer = buffer;
        Segment segment = buffer.head;
        this.expectedSegment = segment;
        this.expectedPos = segment != null ? segment.pos : -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (r3 == r4.pos) goto L15;
     */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long read(@NotNull Buffer sink, long j6) {
        Segment segment;
        kotlin.jvm.internal.t.j(sink, "sink");
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        Segment segment2 = this.expectedSegment;
        if (segment2 != null) {
            Segment segment3 = this.buffer.head;
            if (segment2 == segment3) {
                int i10 = this.expectedPos;
                kotlin.jvm.internal.t.g(segment3);
            }
            throw new IllegalStateException("Peek source is invalid because upstream source was used".toString());
        }
        if (j6 == 0) {
            return 0L;
        }
        if (!this.upstream.request(this.pos + 1)) {
            return -1L;
        }
        if (this.expectedSegment == null && (segment = this.buffer.head) != null) {
            this.expectedSegment = segment;
            kotlin.jvm.internal.t.g(segment);
            this.expectedPos = segment.pos;
        }
        long jMin = Math.min(j6, this.buffer.size() - this.pos);
        this.buffer.copyTo(sink, this.pos, jMin);
        this.pos += jMin;
        return jMin;
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.upstream.timeout();
    }
}
