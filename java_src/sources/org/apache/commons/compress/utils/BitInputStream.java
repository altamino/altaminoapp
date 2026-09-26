package org.apache.commons.compress.utils;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public class BitInputStream implements Closeable {
    private static final long[] MASKS = new long[64];
    private static final int MAXIMUM_CACHE_SIZE = 63;
    private long bitsCached = 0;
    private int bitsCachedSize = 0;
    private final ByteOrder byteOrder;
    private final InputStream in;

    public int bitsCached() {
        return this.bitsCachedSize;
    }

    public void clearBitCache() {
        this.bitsCached = 0L;
        this.bitsCachedSize = 0;
    }

    static {
        for (int i10 = 1; i10 <= 63; i10++) {
            long[] jArr = MASKS;
            jArr[i10] = (jArr[i10 - 1] << 1) + 1;
        }
    }

    private boolean ensureCache(int i10) throws IOException {
        while (true) {
            int i11 = this.bitsCachedSize;
            if (i11 >= i10 || i11 >= 57) {
                return false;
            }
            long j6 = this.in.read();
            if (j6 < 0) {
                return true;
            }
            if (this.byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.bitsCached = (j6 << this.bitsCachedSize) | this.bitsCached;
            } else {
                this.bitsCached = j6 | (this.bitsCached << 8);
            }
            this.bitsCachedSize += 8;
        }
    }

    private long processBitsGreater57(int i10) throws IOException {
        long j6;
        int i11 = i10 - this.bitsCachedSize;
        int i12 = 8 - i11;
        long j10 = this.in.read();
        if (j10 < 0) {
            return j10;
        }
        if (this.byteOrder == ByteOrder.LITTLE_ENDIAN) {
            long[] jArr = MASKS;
            this.bitsCached = ((jArr[i11] & j10) << this.bitsCachedSize) | this.bitsCached;
            j6 = (j10 >>> i11) & jArr[i12];
        } else {
            long j11 = this.bitsCached << i11;
            long[] jArr2 = MASKS;
            this.bitsCached = j11 | ((j10 >>> i12) & jArr2[i11]);
            j6 = j10 & jArr2[i12];
        }
        long j12 = this.bitsCached & MASKS[i10];
        this.bitsCached = j6;
        this.bitsCachedSize = i12;
        return j12;
    }

    private long readCachedBits(int i10) {
        long j6;
        if (this.byteOrder == ByteOrder.LITTLE_ENDIAN) {
            long j10 = this.bitsCached;
            j6 = j10 & MASKS[i10];
            this.bitsCached = j10 >>> i10;
        } else {
            j6 = (this.bitsCached >> (this.bitsCachedSize - i10)) & MASKS[i10];
        }
        this.bitsCachedSize -= i10;
        return j6;
    }

    public void alignWithByteBoundary() {
        int i10 = this.bitsCachedSize % 8;
        if (i10 > 0) {
            readCachedBits(i10);
        }
    }

    public long bitsAvailable() throws IOException {
        return ((long) this.bitsCachedSize) + (((long) this.in.available()) * 8);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    public long readBits(int i10) throws IOException {
        if (i10 < 0 || i10 > 63) {
            throw new IllegalArgumentException("count must not be negative or greater than 63");
        }
        if (ensureCache(i10)) {
            return -1L;
        }
        return this.bitsCachedSize < i10 ? processBitsGreater57(i10) : readCachedBits(i10);
    }

    public BitInputStream(InputStream inputStream, ByteOrder byteOrder) {
        this.in = inputStream;
        this.byteOrder = byteOrder;
    }
}
