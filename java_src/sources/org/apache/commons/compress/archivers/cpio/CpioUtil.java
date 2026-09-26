package org.apache.commons.compress.archivers.cpio;

/* JADX INFO: loaded from: classes6.dex */
class CpioUtil {
    static long byteArray2long(byte[] bArr, boolean z6) {
        if (bArr.length % 2 != 0) {
            throw new UnsupportedOperationException();
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        if (!z6) {
            for (int i10 = 0; i10 < length; i10 += 2) {
                byte b7 = bArr2[i10];
                int i11 = i10 + 1;
                bArr2[i10] = bArr2[i11];
                bArr2[i11] = b7;
            }
        }
        long j6 = bArr2[0] & 255;
        for (int i12 = 1; i12 < length; i12++) {
            j6 = (j6 << 8) | ((long) (bArr2[i12] & 255));
        }
        return j6;
    }

    static long fileType(long j6) {
        return j6 & 61440;
    }

    static byte[] long2byteArray(long j6, int i10, boolean z6) {
        byte[] bArr = new byte[i10];
        if (i10 % 2 != 0 || i10 < 2) {
            throw new UnsupportedOperationException();
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            bArr[i11] = (byte) (255 & j6);
            j6 >>= 8;
        }
        if (!z6) {
            for (int i12 = 0; i12 < i10; i12 += 2) {
                byte b7 = bArr[i12];
                int i13 = i12 + 1;
                bArr[i12] = bArr[i13];
                bArr[i13] = b7;
            }
        }
        return bArr;
    }

    CpioUtil() {
    }
}
