package org.apache.commons.compress.archivers.sevenz;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* JADX INFO: loaded from: classes8.dex */
class BoundedSeekableByteChannelInputStream extends InputStream {
    private static final int MAX_BUF_LEN = 8192;
    private final ByteBuffer buffer;
    private long bytesRemaining;
    private final SeekableByteChannel channel;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        long j6 = this.bytesRemaining;
        if (j6 <= 0) {
            return -1;
        }
        this.bytesRemaining = j6 - 1;
        int i10 = read(1);
        return i10 < 0 ? i10 : this.buffer.get() & 255;
    }

    public BoundedSeekableByteChannelInputStream(SeekableByteChannel seekableByteChannel, long j6) {
        this.channel = seekableByteChannel;
        this.bytesRemaining = j6;
        if (j6 < PlaybackStateCompat.ACTION_PLAY_FROM_URI && j6 > 0) {
            this.buffer = ByteBuffer.allocate((int) j6);
        } else {
            this.buffer = ByteBuffer.allocate(8192);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        ByteBuffer byteBufferAllocate;
        int i12;
        long j6 = this.bytesRemaining;
        if (j6 == 0) {
            return -1;
        }
        if (i11 > j6) {
            i11 = (int) j6;
        }
        if (i11 <= this.buffer.capacity()) {
            byteBufferAllocate = this.buffer;
            i12 = read(i11);
        } else {
            byteBufferAllocate = ByteBuffer.allocate(i11);
            i12 = this.channel.read(byteBufferAllocate);
            byteBufferAllocate.flip();
        }
        if (i12 >= 0) {
            byteBufferAllocate.get(bArr, i10, i12);
            this.bytesRemaining -= (long) i12;
        }
        return i12;
    }

    private int read(int i10) throws IOException {
        this.buffer.rewind().limit(i10);
        int i11 = this.channel.read(this.buffer);
        this.buffer.flip();
        return i11;
    }
}
