package org.apache.commons.compress.compressors.lz77support;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractLZ77CompressorInputStream extends CompressorInputStream {
    private int backReferenceOffset;
    private final byte[] buf;
    private final InputStream in;
    private final int windowSize;
    private int size = 0;
    private final byte[] oneByte = new byte[1];
    protected final ByteUtils.ByteSupplier supplier = new ByteUtils.ByteSupplier() { // from class: org.apache.commons.compress.compressors.lz77support.AbstractLZ77CompressorInputStream.1
        @Override // org.apache.commons.compress.utils.ByteUtils.ByteSupplier
        public int getAsByte() throws IOException {
            return AbstractLZ77CompressorInputStream.this.readOneByte();
        }
    };
    private int readIndex = 0;
    private int writeIndex = 0;
    private long bytesRemaining = 0;

    private void tryToCopy(int i10) {
        int iMin = Math.min((int) Math.min(i10, this.bytesRemaining), this.buf.length - this.writeIndex);
        if (iMin != 0) {
            int i11 = this.backReferenceOffset;
            if (i11 == 1) {
                byte[] bArr = this.buf;
                int i12 = this.writeIndex;
                Arrays.fill(bArr, i12, i12 + iMin, bArr[i12 - 1]);
                this.writeIndex += iMin;
            } else if (iMin < i11) {
                byte[] bArr2 = this.buf;
                int i13 = this.writeIndex;
                System.arraycopy(bArr2, i13 - i11, bArr2, i13, iMin);
                this.writeIndex += iMin;
            } else {
                int i14 = iMin / i11;
                for (int i15 = 0; i15 < i14; i15++) {
                    byte[] bArr3 = this.buf;
                    int i16 = this.writeIndex;
                    int i17 = this.backReferenceOffset;
                    System.arraycopy(bArr3, i16 - i17, bArr3, i16, i17);
                    this.writeIndex += this.backReferenceOffset;
                }
                int i18 = this.backReferenceOffset;
                int i19 = iMin - (i14 * i18);
                if (i19 > 0) {
                    byte[] bArr4 = this.buf;
                    int i20 = this.writeIndex;
                    System.arraycopy(bArr4, i20 - i18, bArr4, i20, i19);
                    this.writeIndex += i19;
                }
            }
        }
        this.bytesRemaining -= (long) iMin;
    }

    private void tryToReadLiteral(int i10) throws IOException {
        int iMin = Math.min((int) Math.min(i10, this.bytesRemaining), this.buf.length - this.writeIndex);
        int fully = iMin > 0 ? IOUtils.readFully(this.in, this.buf, this.writeIndex, iMin) : 0;
        count(fully);
        if (iMin != fully) {
            throw new IOException("Premature end of stream reading literal");
        }
        this.writeIndex += iMin;
        this.bytesRemaining -= (long) iMin;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.writeIndex - this.readIndex;
    }

    public int getSize() {
        return this.size;
    }

    protected final boolean hasMoreDataInBlock() {
        return this.bytesRemaining > 0;
    }

    protected final void startBackReference(int i10, long j6) {
        this.backReferenceOffset = i10;
        this.bytesRemaining = j6;
    }

    protected final void startLiteral(long j6) {
        this.bytesRemaining = j6;
    }

    private void slideBuffer() {
        byte[] bArr = this.buf;
        int i10 = this.windowSize;
        System.arraycopy(bArr, i10, bArr, 0, i10 * 2);
        int i11 = this.writeIndex;
        int i12 = this.windowSize;
        this.writeIndex = i11 - i12;
        this.readIndex -= i12;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    public void prefill(byte[] bArr) {
        if (this.writeIndex != 0) {
            throw new IllegalStateException("the stream has already been read from, can't prefill anymore");
        }
        int iMin = Math.min(this.windowSize, bArr.length);
        System.arraycopy(bArr, bArr.length - iMin, this.buf, 0, iMin);
        this.writeIndex += iMin;
        this.readIndex += iMin;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.oneByte, 0, 1) == -1) {
            return -1;
        }
        return this.oneByte[0] & 255;
    }

    protected final int readOneByte() throws IOException {
        int i10 = this.in.read();
        if (i10 == -1) {
            return -1;
        }
        count(1);
        return i10 & 255;
    }

    public AbstractLZ77CompressorInputStream(InputStream inputStream, int i10) throws IOException {
        this.in = inputStream;
        this.windowSize = i10;
        this.buf = new byte[i10 * 3];
    }

    private int readFromBuffer(byte[] bArr, int i10, int i11) {
        int iMin = Math.min(i11, available());
        if (iMin > 0) {
            System.arraycopy(this.buf, this.readIndex, bArr, i10, iMin);
            int i12 = this.readIndex + iMin;
            this.readIndex = i12;
            if (i12 > this.windowSize * 2) {
                slideBuffer();
            }
        }
        this.size += iMin;
        return iMin;
    }

    protected final int readBackReference(byte[] bArr, int i10, int i11) {
        int iAvailable = available();
        if (i11 > iAvailable) {
            tryToCopy(i11 - iAvailable);
        }
        return readFromBuffer(bArr, i10, i11);
    }

    protected final int readLiteral(byte[] bArr, int i10, int i11) throws IOException {
        int iAvailable = available();
        if (i11 > iAvailable) {
            tryToReadLiteral(i11 - iAvailable);
        }
        return readFromBuffer(bArr, i10, i11);
    }
}
