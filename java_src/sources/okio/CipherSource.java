package okio;

import java.io.IOException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class CipherSource implements Source {
    private final int blockSize;

    @NotNull
    private final Buffer buffer;

    @NotNull
    private final Cipher cipher;
    private boolean closed;

    /* JADX INFO: renamed from: final, reason: not valid java name */
    private boolean f23final;

    @NotNull
    private final BufferedSource source;

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
        this.source.close();
    }

    @NotNull
    public final Cipher getCipher() {
        return this.cipher;
    }

    public CipherSource(@NotNull BufferedSource source, @NotNull Cipher cipher) {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(cipher, "cipher");
        this.source = source;
        this.cipher = cipher;
        int blockSize = cipher.getBlockSize();
        this.blockSize = blockSize;
        this.buffer = new Buffer();
        if (blockSize > 0) {
            return;
        }
        throw new IllegalArgumentException(("Block cipher required " + cipher).toString());
    }

    private final void doFinal() throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        int outputSize = this.cipher.getOutputSize(0);
        if (outputSize == 0) {
            return;
        }
        Segment segmentWritableSegment$okio = this.buffer.writableSegment$okio(outputSize);
        int iDoFinal = this.cipher.doFinal(segmentWritableSegment$okio.data, segmentWritableSegment$okio.pos);
        segmentWritableSegment$okio.limit += iDoFinal;
        Buffer buffer = this.buffer;
        buffer.setSize$okio(buffer.size() + ((long) iDoFinal));
        if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
            this.buffer.head = segmentWritableSegment$okio.pop();
            SegmentPool.recycle(segmentWritableSegment$okio);
        }
    }

    private final void refill() throws BadPaddingException, IllegalBlockSizeException, IOException, ShortBufferException {
        while (this.buffer.size() == 0 && !this.f23final) {
            if (this.source.exhausted()) {
                this.f23final = true;
                doFinal();
                return;
            }
            update();
        }
    }

    private final void update() throws BadPaddingException, IllegalBlockSizeException, IOException, ShortBufferException {
        Segment segment = this.source.getBuffer().head;
        kotlin.jvm.internal.t.g(segment);
        int i10 = segment.limit - segment.pos;
        int outputSize = this.cipher.getOutputSize(i10);
        while (outputSize > 8192) {
            int i11 = this.blockSize;
            if (i10 <= i11) {
                this.f23final = true;
                Buffer buffer = this.buffer;
                byte[] bArrDoFinal = this.cipher.doFinal(this.source.readByteArray());
                kotlin.jvm.internal.t.i(bArrDoFinal, "cipher.doFinal(source.readByteArray())");
                buffer.write(bArrDoFinal);
                return;
            }
            i10 -= i11;
            outputSize = this.cipher.getOutputSize(i10);
        }
        Segment segmentWritableSegment$okio = this.buffer.writableSegment$okio(outputSize);
        int iUpdate = this.cipher.update(segment.data, segment.pos, i10, segmentWritableSegment$okio.data, segmentWritableSegment$okio.pos);
        this.source.skip(i10);
        segmentWritableSegment$okio.limit += iUpdate;
        Buffer buffer2 = this.buffer;
        buffer2.setSize$okio(buffer2.size() + ((long) iUpdate));
        if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
            this.buffer.head = segmentWritableSegment$okio.pop();
            SegmentPool.recycle(segmentWritableSegment$okio);
        }
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j6) throws BadPaddingException, IllegalBlockSizeException, IOException, ShortBufferException {
        kotlin.jvm.internal.t.j(sink, "sink");
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j6 == 0) {
            return 0L;
        }
        refill();
        return this.buffer.read(sink, j6);
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.source.timeout();
    }
}
