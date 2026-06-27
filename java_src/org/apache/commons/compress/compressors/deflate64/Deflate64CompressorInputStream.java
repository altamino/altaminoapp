package org.apache.commons.compress.compressors.deflate64;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes4.dex */
public class Deflate64CompressorInputStream extends CompressorInputStream {
    private HuffmanDecoder decoder;
    private final byte[] oneByte;
    private InputStream originalStream;

    public Deflate64CompressorInputStream(InputStream inputStream) {
        this(new HuffmanDecoder(inputStream));
        this.originalStream = inputStream;
    }

    Deflate64CompressorInputStream(HuffmanDecoder huffmanDecoder) {
        this.oneByte = new byte[1];
        this.decoder = huffmanDecoder;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i;
        do {
            i = read(this.oneByte);
            if (i == -1) {
                return -1;
            }
        } while (i == 0);
        if (i == 1) {
            return this.oneByte[0] & 255;
        }
        throw new IllegalStateException("Invalid return value from read: " + i);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        HuffmanDecoder huffmanDecoder = this.decoder;
        if (huffmanDecoder == null) {
            return -1;
        }
        int iDecode = huffmanDecoder.decode(bArr, i, i2);
        count(iDecode);
        if (iDecode != -1) {
            return iDecode;
        }
        closeDecoder();
        return iDecode;
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

    private void closeDecoder() throws IOException {
        IOUtils.closeQuietly(this.decoder);
        this.decoder = null;
    }
}
