package org.apache.commons.compress.utils;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SeekableByteChannel;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class SeekableInMemoryByteChannel implements SeekableByteChannel {
    private static final int NAIVE_RESIZE_LIMIT = 1073741823;
    private final AtomicBoolean closed;
    private byte[] data;
    private int position;
    private int size;

    public SeekableInMemoryByteChannel(byte[] bArr) {
        this.closed = new AtomicBoolean();
        this.data = bArr;
        this.size = bArr.length;
    }

    private void repositionIfNecessary() {
        int i10 = this.position;
        int i11 = this.size;
        if (i10 > i11) {
            this.position = i11;
        }
    }

    public byte[] array() {
        return this.data;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long position() {
        return this.position;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long size() {
        return this.size;
    }

    private void resize(int i10) {
        int length = this.data.length;
        if (length <= 0) {
            length = 1;
        }
        if (i10 < 1073741823) {
            while (length < i10) {
                length <<= 1;
            }
            i10 = length;
        }
        this.data = Arrays.copyOf(this.data, i10);
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed.set(true);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed.get();
    }

    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel position(long j6) throws IOException {
        ensureOpen();
        if (j6 < 0 || j6 > 2147483647L) {
            throw new IllegalArgumentException("Position has to be in range 0.. 2147483647");
        }
        this.position = (int) j6;
        return this;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel truncate(long j6) {
        if (this.size > j6) {
            this.size = (int) j6;
        }
        repositionIfNecessary();
        return this;
    }

    private void ensureOpen() throws ClosedChannelException {
        if (isOpen()) {
        } else {
            throw new ClosedChannelException();
        }
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        ensureOpen();
        repositionIfNecessary();
        int iRemaining = byteBuffer.remaining();
        int i10 = this.size;
        int i11 = this.position;
        int i12 = i10 - i11;
        if (i12 <= 0) {
            return -1;
        }
        if (iRemaining > i12) {
            iRemaining = i12;
        }
        byteBuffer.put(this.data, i11, iRemaining);
        this.position += iRemaining;
        return iRemaining;
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        ensureOpen();
        int iRemaining = byteBuffer.remaining();
        int i10 = this.size;
        int i11 = this.position;
        if (iRemaining > i10 - i11) {
            int i12 = i11 + iRemaining;
            if (i12 < 0) {
                resize(Integer.MAX_VALUE);
                iRemaining = Integer.MAX_VALUE - this.position;
            } else {
                resize(i12);
            }
        }
        byteBuffer.get(this.data, this.position, iRemaining);
        int i13 = this.position + iRemaining;
        this.position = i13;
        if (this.size < i13) {
            this.size = i13;
        }
        return iRemaining;
    }

    public SeekableInMemoryByteChannel() {
        this(new byte[0]);
    }

    public SeekableInMemoryByteChannel(int i10) {
        this(new byte[i10]);
    }
}
