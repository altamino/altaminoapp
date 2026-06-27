package org.apache.commons.compress.archivers.zip;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* loaded from: classes4.dex */
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

    protected abstract void writeOut(byte[] bArr, int i, int i2) throws IOException;

    StreamCompressor(Deflater deflater) {
        this.def = deflater;
    }

    static StreamCompressor create(OutputStream outputStream, Deflater deflater) {
        return new OutputStreamCompressor(deflater, outputStream);
    }

    static StreamCompressor create(SeekableByteChannel seekableByteChannel, Deflater deflater) {
        return new SeekableByteChannelCompressor(deflater, seekableByteChannel);
    }

    public long getTotalBytesWritten() {
        return this.totalWrittenToOutputStream;
    }

    long write(byte[] bArr, int i, int i2, int i3) throws IOException {
        long j = this.writtenToOutputStreamForLastEntry;
        this.crc.update(bArr, i, i2);
        if (i3 == 8) {
            writeDeflated(bArr, i, i2);
        } else {
            writeCounted(bArr, i, i2);
        }
        this.sourcePayloadLength += i2;
        return this.writtenToOutputStreamForLastEntry - j;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.def.end();
    }

    private void writeDeflated(byte[] bArr, int i, int i2) throws IOException {
        if (i2 <= 0 || this.def.finished()) {
            return;
        }
        if (i2 <= 8192) {
            this.def.setInput(bArr, i, i2);
            deflateUntilInputIsNeeded();
            return;
        }
        int i3 = i2 / 8192;
        for (int i4 = 0; i4 < i3; i4++) {
            this.def.setInput(bArr, (i4 * 8192) + i, 8192);
            deflateUntilInputIsNeeded();
        }
        int i5 = i3 * 8192;
        if (i5 < i2) {
            this.def.setInput(bArr, i + i5, i2 - i5);
            deflateUntilInputIsNeeded();
        }
    }

    private void deflateUntilInputIsNeeded() throws IOException {
        while (!this.def.needsInput()) {
            deflate();
        }
    }

    void deflate() throws IOException {
        Deflater deflater = this.def;
        byte[] bArr = this.outputBuffer;
        int iDeflate = deflater.deflate(bArr, 0, bArr.length);
        if (iDeflate > 0) {
            writeCounted(this.outputBuffer, 0, iDeflate);
        }
    }

    public void writeCounted(byte[] bArr) throws IOException {
        writeCounted(bArr, 0, bArr.length);
    }

    public void writeCounted(byte[] bArr, int i, int i2) throws IOException {
        writeOut(bArr, i, i2);
        long j = i2;
        this.writtenToOutputStreamForLastEntry += j;
        this.totalWrittenToOutputStream += j;
    }

    private static final class OutputStreamCompressor extends StreamCompressor {
        private final OutputStream os;

        public OutputStreamCompressor(Deflater deflater, OutputStream outputStream) {
            super(deflater);
            this.os = outputStream;
        }

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        protected final void writeOut(byte[] bArr, int i, int i2) throws IOException {
            this.os.write(bArr, i, i2);
        }
    }

    private static final class SeekableByteChannelCompressor extends StreamCompressor {
        private final SeekableByteChannel channel;

        public SeekableByteChannelCompressor(Deflater deflater, SeekableByteChannel seekableByteChannel) {
            super(deflater);
            this.channel = seekableByteChannel;
        }

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        protected final void writeOut(byte[] bArr, int i, int i2) throws IOException {
            this.channel.write(ByteBuffer.wrap(bArr, i, i2));
        }
    }
}
