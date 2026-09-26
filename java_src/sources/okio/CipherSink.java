package okio;

import java.io.IOException;
import javax.crypto.Cipher;
import javax.crypto.ShortBufferException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class CipherSink implements Sink {
    private final int blockSize;

    @NotNull
    private final Cipher cipher;
    private boolean closed;

    @NotNull
    private final BufferedSink sink;

    @NotNull
    public final Cipher getCipher() {
        return this.cipher;
    }

    public CipherSink(@NotNull BufferedSink sink, @NotNull Cipher cipher) {
        kotlin.jvm.internal.t.j(sink, "sink");
        kotlin.jvm.internal.t.j(cipher, "cipher");
        this.sink = sink;
        this.cipher = cipher;
        int blockSize = cipher.getBlockSize();
        this.blockSize = blockSize;
        if (blockSize > 0) {
            return;
        }
        throw new IllegalArgumentException(("Block cipher required " + cipher).toString());
    }

    private final Throwable doFinal() {
        int outputSize = this.cipher.getOutputSize(0);
        Throwable th = null;
        if (outputSize == 0) {
            return null;
        }
        if (outputSize > 8192) {
            try {
                BufferedSink bufferedSink = this.sink;
                byte[] bArrDoFinal = this.cipher.doFinal();
                kotlin.jvm.internal.t.i(bArrDoFinal, "cipher.doFinal()");
                bufferedSink.write(bArrDoFinal);
                return null;
            } catch (Throwable th2) {
                return th2;
            }
        }
        Buffer buffer = this.sink.getBuffer();
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(outputSize);
        try {
            int iDoFinal = this.cipher.doFinal(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit);
            segmentWritableSegment$okio.limit += iDoFinal;
            buffer.setSize$okio(buffer.size() + ((long) iDoFinal));
        } catch (Throwable th3) {
            th = th3;
        }
        if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
            buffer.head = segmentWritableSegment$okio.pop();
            SegmentPool.recycle(segmentWritableSegment$okio);
        }
        return th;
    }

    private final int update(Buffer buffer, long j6) throws IOException, ShortBufferException {
        Segment segment = buffer.head;
        kotlin.jvm.internal.t.g(segment);
        int iMin = (int) Math.min(j6, segment.limit - segment.pos);
        Buffer buffer2 = this.sink.getBuffer();
        int outputSize = this.cipher.getOutputSize(iMin);
        while (outputSize > 8192) {
            int i10 = this.blockSize;
            if (iMin <= i10) {
                BufferedSink bufferedSink = this.sink;
                byte[] bArrUpdate = this.cipher.update(buffer.readByteArray(j6));
                kotlin.jvm.internal.t.i(bArrUpdate, "cipher.update(source.readByteArray(remaining))");
                bufferedSink.write(bArrUpdate);
                return (int) j6;
            }
            iMin -= i10;
            outputSize = this.cipher.getOutputSize(iMin);
        }
        Segment segmentWritableSegment$okio = buffer2.writableSegment$okio(outputSize);
        int iUpdate = this.cipher.update(segment.data, segment.pos, iMin, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit);
        segmentWritableSegment$okio.limit += iUpdate;
        buffer2.setSize$okio(buffer2.size() + ((long) iUpdate));
        if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
            buffer2.head = segmentWritableSegment$okio.pop();
            SegmentPool.recycle(segmentWritableSegment$okio);
        }
        this.sink.emitCompleteSegments();
        buffer.setSize$okio(buffer.size() - ((long) iMin));
        int i11 = segment.pos + iMin;
        segment.pos = i11;
        if (i11 == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.closed) {
            return;
        }
        this.closed = true;
        Throwable thDoFinal = doFinal();
        try {
            this.sink.close();
        } catch (Throwable th) {
            if (thDoFinal == null) {
                thDoFinal = th;
            }
        }
        if (thDoFinal != null) {
            throw thDoFinal;
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.sink.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.sink.timeout();
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        _UtilKt.checkOffsetAndCount(source.size(), 0L, j6);
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j6 > 0) {
            j6 -= (long) update(source, j6);
        }
    }
}
