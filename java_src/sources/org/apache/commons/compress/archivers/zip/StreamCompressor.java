package org.apache.commons.compress.archivers.zip;

import java.io.Closeable;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import org.apache.commons.compress.parallel.ScatterGatherBackingStore;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StreamCompressor implements Closeable {
    private static final int BUFFER_SIZE = 4096;
    private static final int DEFLATER_BLOCK_SIZE = 8192;
    private final Deflater def;
    private final CRC32 crc = new CRC32();
    private long writtenToOutputStreamForLastEntry = 0;
    private long sourcePayloadLength = 0;
    private long totalWrittenToOutputStream = 0;
    private final byte[] outputBuffer = new byte[4096];
    private final byte[] readerBuf = new byte[4096];

    private static final class DataOutputCompressor extends StreamCompressor {
        private final DataOutput raf;

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        protected final void writeOut(byte[] bArr, int i10, int i11) throws IOException {
            this.raf.write(bArr, i10, i11);
        }

        public DataOutputCompressor(Deflater deflater, DataOutput dataOutput) {
            super(deflater);
            this.raf = dataOutput;
        }
    }

    private static final class OutputStreamCompressor extends StreamCompressor {
        private final OutputStream os;

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        protected final void writeOut(byte[] bArr, int i10, int i11) throws IOException {
            this.os.write(bArr, i10, i11);
        }

        public OutputStreamCompressor(Deflater deflater, OutputStream outputStream) {
            super(deflater);
            this.os = outputStream;
        }
    }

    private static final class ScatterGatherBackingStoreCompressor extends StreamCompressor {
        private final ScatterGatherBackingStore bs;

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        protected final void writeOut(byte[] bArr, int i10, int i11) throws IOException {
            this.bs.writeOut(bArr, i10, i11);
        }

        public ScatterGatherBackingStoreCompressor(Deflater deflater, ScatterGatherBackingStore scatterGatherBackingStore) {
            super(deflater);
            this.bs = scatterGatherBackingStore;
        }
    }

    private static final class SeekableByteChannelCompressor extends StreamCompressor {
        private final SeekableByteChannel channel;

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        protected final void writeOut(byte[] bArr, int i10, int i11) throws IOException {
            this.channel.write(ByteBuffer.wrap(bArr, i10, i11));
        }

        public SeekableByteChannelCompressor(Deflater deflater, SeekableByteChannel seekableByteChannel) {
            super(deflater);
            this.channel = seekableByteChannel;
        }
    }

    static StreamCompressor create(OutputStream outputStream, Deflater deflater) {
        return new OutputStreamCompressor(deflater, outputStream);
    }

    public void deflate(InputStream inputStream, int i10) throws IOException {
        reset();
        while (true) {
            byte[] bArr = this.readerBuf;
            int i11 = inputStream.read(bArr, 0, bArr.length);
            if (i11 < 0) {
                break;
            } else {
                write(this.readerBuf, 0, i11, i10);
            }
        }
        if (i10 == 8) {
            flushDeflater();
        }
    }

    public long getBytesRead() {
        return this.sourcePayloadLength;
    }

    public long getBytesWrittenForLastEntry() {
        return this.writtenToOutputStreamForLastEntry;
    }

    public long getTotalBytesWritten() {
        return this.totalWrittenToOutputStream;
    }

    public void writeCounted(byte[] bArr) throws IOException {
        writeCounted(bArr, 0, bArr.length);
    }

    protected abstract void writeOut(byte[] bArr, int i10, int i11) throws IOException;

    static StreamCompressor create(OutputStream outputStream) {
        return create(outputStream, new Deflater(-1, true));
    }

    private void deflateUntilInputIsNeeded() throws IOException {
        while (!this.def.needsInput()) {
            deflate();
        }
    }

    private void writeDeflated(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 <= 0 || this.def.finished()) {
            return;
        }
        if (i11 <= 8192) {
            this.def.setInput(bArr, i10, i11);
            deflateUntilInputIsNeeded();
            return;
        }
        int i12 = i11 / 8192;
        for (int i13 = 0; i13 < i12; i13++) {
            this.def.setInput(bArr, (i13 * 8192) + i10, 8192);
            deflateUntilInputIsNeeded();
        }
        int i14 = i12 * 8192;
        if (i14 < i11) {
            this.def.setInput(bArr, i10 + i14, i11 - i14);
            deflateUntilInputIsNeeded();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.def.end();
    }

    void flushDeflater() throws IOException {
        this.def.finish();
        while (!this.def.finished()) {
            deflate();
        }
    }

    public long getCrc32() {
        return this.crc.getValue();
    }

    void reset() {
        this.crc.reset();
        this.def.reset();
        this.sourcePayloadLength = 0L;
        this.writtenToOutputStreamForLastEntry = 0L;
    }

    long write(byte[] bArr, int i10, int i11, int i12) throws IOException {
        long j6 = this.writtenToOutputStreamForLastEntry;
        this.crc.update(bArr, i10, i11);
        if (i12 == 8) {
            writeDeflated(bArr, i10, i11);
        } else {
            writeCounted(bArr, i10, i11);
        }
        this.sourcePayloadLength += (long) i11;
        return this.writtenToOutputStreamForLastEntry - j6;
    }

    public void writeCounted(byte[] bArr, int i10, int i11) throws IOException {
        writeOut(bArr, i10, i11);
        long j6 = i11;
        this.writtenToOutputStreamForLastEntry += j6;
        this.totalWrittenToOutputStream += j6;
    }

    StreamCompressor(Deflater deflater) {
        this.def = deflater;
    }

    static StreamCompressor create(DataOutput dataOutput, Deflater deflater) {
        return new DataOutputCompressor(deflater, dataOutput);
    }

    static StreamCompressor create(SeekableByteChannel seekableByteChannel, Deflater deflater) {
        return new SeekableByteChannelCompressor(deflater, seekableByteChannel);
    }

    public static StreamCompressor create(int i10, ScatterGatherBackingStore scatterGatherBackingStore) {
        return new ScatterGatherBackingStoreCompressor(new Deflater(i10, true), scatterGatherBackingStore);
    }

    void deflate() throws IOException {
        Deflater deflater = this.def;
        byte[] bArr = this.outputBuffer;
        int iDeflate = deflater.deflate(bArr, 0, bArr.length);
        if (iDeflate > 0) {
            writeCounted(this.outputBuffer, 0, iDeflate);
        }
    }

    public static StreamCompressor create(ScatterGatherBackingStore scatterGatherBackingStore) {
        return create(-1, scatterGatherBackingStore);
    }
}
