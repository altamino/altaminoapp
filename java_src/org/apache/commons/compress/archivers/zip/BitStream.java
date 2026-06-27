package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.utils.BitInputStream;

/* loaded from: classes4.dex */
class BitStream extends BitInputStream {
    BitStream(InputStream inputStream) {
        super(inputStream, ByteOrder.LITTLE_ENDIAN);
    }

    int nextBit() throws IOException {
        return (int) readBits(1);
    }

    long nextBits(int i) throws IOException {
        return readBits(i);
    }

    int nextByte() throws IOException {
        return (int) readBits(8);
    }
}
