package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes11.dex */
public class ChecksumCalculatingInputStream extends InputStream {
    private final Checksum checksum;
    private final InputStream in;

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.in.read();
        if (i10 >= 0) {
            this.checksum.update(i10);
        }
        return i10;
    }

    public long getValue() {
        return this.checksum.getValue();
    }

    public ChecksumCalculatingInputStream(Checksum checksum, InputStream inputStream) {
        if (checksum != null) {
            if (inputStream != null) {
                this.checksum = checksum;
                this.in = inputStream;
                return;
            }
            throw new NullPointerException("Parameter in must not be null");
        }
        throw new NullPointerException("Parameter checksum must not be null");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        if (read() >= 0) {
            return 1L;
        }
        return 0L;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.in.read(bArr, i10, i11);
        if (i12 >= 0) {
            this.checksum.update(bArr, i10, i12);
        }
        return i12;
    }
}
