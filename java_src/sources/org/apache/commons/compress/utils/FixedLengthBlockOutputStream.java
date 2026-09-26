package org.apache.commons.compress.utils;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.WritableByteChannel;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public class FixedLengthBlockOutputStream extends OutputStream implements WritableByteChannel {
    private final int blockSize;
    private final ByteBuffer buffer;
    private final AtomicBoolean closed = new AtomicBoolean(false);
    private final WritableByteChannel out;

    private static class BufferAtATimeOutputChannel implements WritableByteChannel {
        private final AtomicBoolean closed;
        private final OutputStream out;

        private BufferAtATimeOutputChannel(OutputStream outputStream) {
            this.closed = new AtomicBoolean(false);
            this.out = outputStream;
        }

        @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed.compareAndSet(false, true)) {
                this.out.close();
            }
        }

        @Override // java.nio.channels.Channel
        public boolean isOpen() {
            return !this.closed.get();
        }

        @Override // java.nio.channels.WritableByteChannel
        public int write(ByteBuffer byteBuffer) throws IOException {
            if (isOpen()) {
                if (byteBuffer.hasArray()) {
                    try {
                        int iPosition = byteBuffer.position();
                        int iLimit = byteBuffer.limit() - iPosition;
                        this.out.write(byteBuffer.array(), byteBuffer.arrayOffset() + iPosition, iLimit);
                        byteBuffer.position(byteBuffer.limit());
                        return iLimit;
                    } catch (IOException e) {
                        try {
                            close();
                        } catch (IOException unused) {
                        }
                        throw e;
                    }
                }
                throw new IllegalArgumentException("direct buffer somehow written to BufferAtATimeOutputChannel");
            }
            throw new ClosedChannelException();
        }
    }

    public FixedLengthBlockOutputStream(OutputStream outputStream, int i10) {
        if (outputStream instanceof FileOutputStream) {
            this.out = ((FileOutputStream) outputStream).getChannel();
            this.buffer = ByteBuffer.allocateDirect(i10);
        } else {
            this.out = new BufferAtATimeOutputChannel(outputStream);
            this.buffer = ByteBuffer.allocate(i10);
        }
        this.blockSize = i10;
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        this.buffer.put((byte) i10);
        maybeFlush();
    }

    private void maybeFlush() throws IOException {
        if (this.buffer.hasRemaining()) {
            return;
        }
        writeBlock();
    }

    private void padBlock() {
        this.buffer.order(ByteOrder.nativeOrder());
        int iRemaining = this.buffer.remaining();
        if (iRemaining > 8) {
            int iPosition = this.buffer.position() & 7;
            if (iPosition != 0) {
                int i10 = 8 - iPosition;
                for (int i11 = 0; i11 < i10; i11++) {
                    this.buffer.put((byte) 0);
                }
                iRemaining -= i10;
            }
            while (iRemaining >= 8) {
                this.buffer.putLong(0L);
                iRemaining -= 8;
            }
        }
        while (this.buffer.hasRemaining()) {
            this.buffer.put((byte) 0);
        }
    }

    private void writeBlock() throws IOException {
        this.buffer.flip();
        int iWrite = this.out.write(this.buffer);
        boolean zHasRemaining = this.buffer.hasRemaining();
        int i10 = this.blockSize;
        if (iWrite != i10 || zHasRemaining) {
            throw new IOException(String.format("Failed to write %,d bytes atomically. Only wrote  %,d", Integer.valueOf(i10), Integer.valueOf(iWrite)));
        }
        this.buffer.clear();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        if (this.closed.compareAndSet(false, true)) {
            flushBlock();
            this.out.close();
        }
    }

    public void flushBlock() throws IOException {
        if (this.buffer.position() != 0) {
            padBlock();
            writeBlock();
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        if (!this.out.isOpen()) {
            this.closed.set(true);
        }
        return !this.closed.get();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        while (i11 > 0) {
            int iMin = Math.min(i11, this.buffer.remaining());
            this.buffer.put(bArr, i10, iMin);
            maybeFlush();
            i11 -= iMin;
            i10 += iMin;
        }
    }

    public FixedLengthBlockOutputStream(WritableByteChannel writableByteChannel, int i10) {
        this.out = writableByteChannel;
        this.blockSize = i10;
        this.buffer = ByteBuffer.allocateDirect(i10);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        int i10;
        if (isOpen()) {
            int iRemaining = byteBuffer.remaining();
            if (iRemaining < this.buffer.remaining()) {
                this.buffer.put(byteBuffer);
            } else {
                int iLimit = byteBuffer.limit();
                if (this.buffer.position() != 0) {
                    int iRemaining2 = this.buffer.remaining();
                    byteBuffer.limit(byteBuffer.position() + iRemaining2);
                    this.buffer.put(byteBuffer);
                    writeBlock();
                    i10 = iRemaining - iRemaining2;
                } else {
                    i10 = iRemaining;
                }
                while (i10 >= this.blockSize) {
                    byteBuffer.limit(byteBuffer.position() + this.blockSize);
                    this.out.write(byteBuffer);
                    i10 -= this.blockSize;
                }
                byteBuffer.limit(iLimit);
                this.buffer.put(byteBuffer);
            }
            return iRemaining;
        }
        throw new ClosedChannelException();
    }
}
