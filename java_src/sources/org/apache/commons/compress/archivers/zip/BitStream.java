package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.utils.BitInputStream;

/* JADX INFO: loaded from: classes.dex */
class BitStream extends BitInputStream {
    int nextBit() throws IOException {
        return (int) readBits(1);
    }

    BitStream(InputStream inputStream) {
        super(inputStream, ByteOrder.LITTLE_ENDIAN);
    }

    int nextByte() throws IOException {
        return (int) readBits(8);
    }

    long nextBits(int i10) throws IOException {
        return readBits(i10);
    }
}
