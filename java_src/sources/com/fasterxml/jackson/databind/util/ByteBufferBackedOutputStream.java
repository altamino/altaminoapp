package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
public class ByteBufferBackedOutputStream extends OutputStream {
    protected final ByteBuffer _buffer;

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        this._buffer.put((byte) i10);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this._buffer.put(bArr, i10, i11);
    }

    public ByteBufferBackedOutputStream(ByteBuffer byteBuffer) {
        this._buffer = byteBuffer;
    }
}
