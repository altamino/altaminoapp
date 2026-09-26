package org.apache.commons.compress.compressors.deflate;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class DeflateCompressorInputStream extends CompressorInputStream {
    private static final int MAGIC_1 = 120;
    private static final int MAGIC_2a = 1;
    private static final int MAGIC_2b = 94;
    private static final int MAGIC_2c = 156;
    private static final int MAGIC_2d = 218;
    private final InputStream in;
    private final Inflater inflater;

    public DeflateCompressorInputStream(InputStream inputStream) {
        this(inputStream, new DeflateParameters());
    }

    public static boolean matches(byte[] bArr, int i10) {
        if (i10 <= 3 || bArr[0] != 120) {
            return false;
        }
        byte b7 = bArr[1];
        return b7 == 1 || b7 == 94 || b7 == -100 || b7 == -38;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.in.read();
        count(i10 == -1 ? 0 : 1);
        return i10;
    }

    public DeflateCompressorInputStream(InputStream inputStream, DeflateParameters deflateParameters) {
        Inflater inflater = new Inflater(!deflateParameters.withZlibHeader());
        this.inflater = inflater;
        this.in = new InflaterInputStream(inputStream, inflater);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.in.close();
        } finally {
            this.inflater.end();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        return this.in.skip(j6);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.in.read(bArr, i10, i11);
        count(i12);
        return i12;
    }
}
