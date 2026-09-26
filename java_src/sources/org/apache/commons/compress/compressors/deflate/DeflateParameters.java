package org.apache.commons.compress.compressors.deflate;

/* JADX INFO: loaded from: classes9.dex */
public class DeflateParameters {
    private boolean zlibHeader = true;
    private int compressionLevel = -1;

    public int getCompressionLevel() {
        return this.compressionLevel;
    }

    public void setCompressionLevel(int i10) {
        if (i10 >= -1 && i10 <= 9) {
            this.compressionLevel = i10;
            return;
        }
        throw new IllegalArgumentException("Invalid Deflate compression level: " + i10);
    }

    public void setWithZlibHeader(boolean z6) {
        this.zlibHeader = z6;
    }

    public boolean withZlibHeader() {
        return this.zlibHeader;
    }
}
