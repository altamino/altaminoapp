package org.apache.commons.compress.utils;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class ByteUtils {

    public interface ByteConsumer {
        void accept(int i10) throws IOException;
    }

    public interface ByteSupplier {
        int getAsByte() throws IOException;
    }

    public static class InputStreamByteSupplier implements ByteSupplier {
        private final InputStream is;

        @Override // org.apache.commons.compress.utils.ByteUtils.ByteSupplier
        public int getAsByte() throws IOException {
            return this.is.read();
        }

        public InputStreamByteSupplier(InputStream inputStream) {
            this.is = inputStream;
        }
    }

    public static class OutputStreamByteConsumer implements ByteConsumer {
        private final OutputStream os;

        @Override // org.apache.commons.compress.utils.ByteUtils.ByteConsumer
        public void accept(int i10) throws IOException {
            this.os.write(i10);
        }

        public OutputStreamByteConsumer(OutputStream outputStream) {
            this.os = outputStream;
        }
    }

    public static long fromLittleEndian(byte[] bArr) {
        return fromLittleEndian(bArr, 0, bArr.length);
    }

    public static void toLittleEndian(byte[] bArr, long j6, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i10 + i12] = (byte) (255 & j6);
            j6 >>= 8;
        }
    }

    private static final void checkReadLength(int i10) {
        if (i10 > 8) {
            throw new IllegalArgumentException("can't read more than eight bytes into a long value");
        }
    }

    public static long fromLittleEndian(byte[] bArr, int i10, int i11) {
        checkReadLength(i11);
        long j6 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            j6 |= (((long) bArr[i10 + i12]) & 255) << (i12 * 8);
        }
        return j6;
    }

    public static void toLittleEndian(OutputStream outputStream, long j6, int i10) throws IOException {
        for (int i11 = 0; i11 < i10; i11++) {
            outputStream.write((int) (255 & j6));
            j6 >>= 8;
        }
    }

    private ByteUtils() {
    }

    public static void toLittleEndian(ByteConsumer byteConsumer, long j6, int i10) throws IOException {
        for (int i11 = 0; i11 < i10; i11++) {
            byteConsumer.accept((int) (255 & j6));
            j6 >>= 8;
        }
    }

    public static long fromLittleEndian(InputStream inputStream, int i10) throws IOException {
        checkReadLength(i10);
        long j6 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            long j10 = inputStream.read();
            if (j10 == -1) {
                throw new IOException("premature end of data");
            }
            j6 |= j10 << (i11 * 8);
        }
        return j6;
    }

    public static void toLittleEndian(DataOutput dataOutput, long j6, int i10) throws IOException {
        for (int i11 = 0; i11 < i10; i11++) {
            dataOutput.write((int) (255 & j6));
            j6 >>= 8;
        }
    }

    public static long fromLittleEndian(ByteSupplier byteSupplier, int i10) throws IOException {
        checkReadLength(i10);
        long j6 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            long asByte = byteSupplier.getAsByte();
            if (asByte == -1) {
                throw new IOException("premature end of data");
            }
            j6 |= asByte << (i11 * 8);
        }
        return j6;
    }

    public static long fromLittleEndian(DataInput dataInput, int i10) throws IOException {
        checkReadLength(i10);
        long unsignedByte = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            unsignedByte |= ((long) dataInput.readUnsignedByte()) << (i11 * 8);
        }
        return unsignedByte;
    }
}
