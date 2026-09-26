package org.apache.commons.compress.compressors.deflate64;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class Deflate64CompressorInputStream extends CompressorInputStream {
    private HuffmanDecoder decoder;
    private final byte[] oneByte;
    private InputStream originalStream;

    public Deflate64CompressorInputStream(InputStream inputStream) {
        this(new HuffmanDecoder(inputStream));
        this.originalStream = inputStream;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10;
        do {
            i10 = read(this.oneByte);
            if (i10 == -1) {
                return -1;
            }
        } while (i10 == 0);
        if (i10 == 1) {
            return this.oneByte[0] & 255;
        }
        throw new IllegalStateException("Invalid return value from read: " + i10);
    }

    Deflate64CompressorInputStream(HuffmanDecoder huffmanDecoder) {
        this.oneByte = new byte[1];
        this.decoder = huffmanDecoder;
    }

    private void closeDecoder() {
        IOUtils.closeQuietly(this.decoder);
        this.decoder = null;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        HuffmanDecoder huffmanDecoder = this.decoder;
        if (huffmanDecoder != null) {
            return huffmanDecoder.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        closeDecoder();
        InputStream inputStream = this.originalStream;
        if (inputStream != null) {
            inputStream.close();
            this.originalStream = null;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        HuffmanDecoder huffmanDecoder = this.decoder;
        if (huffmanDecoder == null) {
            return -1;
        }
        int iDecode = huffmanDecoder.decode(bArr, i10, i11);
        count(iDecode);
        if (iDecode == -1) {
            closeDecoder();
        }
        return iDecode;
    }
}
