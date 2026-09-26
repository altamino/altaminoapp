package okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class GzipSink implements Sink {
    private boolean closed;

    @NotNull
    private final CRC32 crc;

    @NotNull
    private final Deflater deflater;

    @NotNull
    private final DeflaterSink deflaterSink;

    @NotNull
    private final RealBufferedSink sink;

    @NotNull
    /* JADX INFO: renamed from: -deprecated_deflater, reason: not valid java name */
    public final Deflater m1798deprecated_deflater() {
        return this.deflater;
    }

    @NotNull
    public final Deflater deflater() {
        return this.deflater;
    }

    public GzipSink(@NotNull Sink sink) {
        kotlin.jvm.internal.t.j(sink, "sink");
        RealBufferedSink realBufferedSink = new RealBufferedSink(sink);
        this.sink = realBufferedSink;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new DeflaterSink((BufferedSink) realBufferedSink, deflater);
        this.crc = new CRC32();
        Buffer buffer = realBufferedSink.bufferField;
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    private final void updateCrc(Buffer buffer, long j6) {
        Segment segment = buffer.head;
        kotlin.jvm.internal.t.g(segment);
        while (j6 > 0) {
            int iMin = (int) Math.min(j6, segment.limit - segment.pos);
            this.crc.update(segment.data, segment.pos, iMin);
            j6 -= (long) iMin;
            segment = segment.next;
            kotlin.jvm.internal.t.g(segment);
        }
    }

    private final void writeFooter() {
        this.sink.writeIntLe((int) this.crc.getValue());
        this.sink.writeIntLe((int) this.deflater.getBytesRead());
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.closed) {
            return;
        }
        this.deflaterSink.finishDeflate$okio();
        writeFooter();
        th = null;
        try {
            this.deflater.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.sink.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.closed = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.deflaterSink.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.sink.timeout();
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (j6 == 0) {
            return;
        }
        updateCrc(source, j6);
        this.deflaterSink.write(source, j6);
    }
}
