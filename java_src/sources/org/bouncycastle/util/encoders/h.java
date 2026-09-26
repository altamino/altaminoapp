package org.bouncycastle.util.encoders;

import okio.Utf8;

/* JADX INFO: loaded from: classes10.dex */
public class h {
    private static final byte C_CR1 = 1;
    private static final byte C_CR2 = 2;
    private static final byte C_CR3 = 3;
    private static final byte C_ILL = 0;
    private static final byte C_L2A = 4;
    private static final byte C_L3A = 5;
    private static final byte C_L3B = 6;
    private static final byte C_L3C = 7;
    private static final byte C_L4A = 8;
    private static final byte C_L4B = 9;
    private static final byte C_L4C = 10;
    private static final byte S_CS1 = 0;
    private static final byte S_CS2 = 16;
    private static final byte S_CS3 = 32;
    private static final byte S_END = -1;
    private static final byte S_ERR = -2;
    private static final byte S_P3A = 48;
    private static final byte S_P3B = 64;
    private static final byte S_P4A = 80;
    private static final byte S_P4B = 96;
    private static final short[] firstUnitTable = new short[128];
    private static final byte[] transitionTable;

    static {
        byte[] bArr = new byte[112];
        transitionTable = bArr;
        byte[] bArr2 = new byte[128];
        a(bArr2, 0, 15, (byte) 1);
        a(bArr2, 16, 31, (byte) 2);
        a(bArr2, 32, 63, (byte) 3);
        a(bArr2, 64, 65, (byte) 0);
        a(bArr2, 66, 95, (byte) 4);
        a(bArr2, 96, 96, (byte) 5);
        a(bArr2, 97, 108, (byte) 6);
        a(bArr2, 109, 109, (byte) 7);
        a(bArr2, 110, 111, (byte) 6);
        a(bArr2, 112, 112, (byte) 8);
        a(bArr2, 113, 115, (byte) 9);
        a(bArr2, 116, 116, (byte) 10);
        a(bArr2, 117, 127, (byte) 0);
        a(bArr, 0, bArr.length - 1, S_ERR);
        a(bArr, 8, 11, (byte) -1);
        a(bArr, 24, 27, (byte) 0);
        a(bArr, 40, 43, (byte) 16);
        a(bArr, 58, 59, (byte) 0);
        a(bArr, 72, 73, (byte) 0);
        a(bArr, 89, 91, (byte) 16);
        a(bArr, 104, 104, (byte) 16);
        byte[] bArr3 = {0, 0, 0, 0, com.google.common.base.c.US, com.google.common.base.c.SI, com.google.common.base.c.SI, com.google.common.base.c.SI, 7, 7, 7};
        byte[] bArr4 = {S_ERR, S_ERR, S_ERR, S_ERR, 0, 48, 16, S_P3B, S_P4A, 32, S_P4B};
        for (int i10 = 0; i10 < 128; i10++) {
            byte b7 = bArr2[i10];
            firstUnitTable[i10] = (short) (bArr4[b7] | ((bArr3[b7] & i10) << 8));
        }
    }

    private static void a(byte[] bArr, int i10, int i11, byte b7) {
        while (i10 <= i11) {
            bArr[i10] = b7;
            i10++;
        }
    }

    public static int b(byte[] bArr, char[] cArr) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < bArr.length) {
            int i12 = i10 + 1;
            byte b7 = bArr[i10];
            if (b7 < 0) {
                short s = firstUnitTable[b7 & 127];
                int i13 = s >>> 8;
                byte b10 = (byte) s;
                while (b10 >= 0) {
                    if (i12 >= bArr.length) {
                        return -1;
                    }
                    int i14 = i12 + 1;
                    byte b11 = bArr[i12];
                    i13 = (i13 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
                    b10 = transitionTable[b10 + ((b11 & 255) >>> 4)];
                    i12 = i14;
                }
                if (b10 == -2) {
                    return -1;
                }
                if (i13 <= 65535) {
                    if (i11 >= cArr.length) {
                        return -1;
                    }
                    cArr[i11] = (char) i13;
                    i11++;
                } else {
                    if (i11 >= cArr.length - 1) {
                        return -1;
                    }
                    int i15 = i11 + 1;
                    cArr[i11] = (char) ((i13 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                    i11 += 2;
                    cArr[i15] = (char) ((i13 & 1023) | Utf8.LOG_SURROGATE_HEADER);
                }
                i10 = i12;
            } else {
                if (i11 >= cArr.length) {
                    return -1;
                }
                cArr[i11] = (char) b7;
                i10 = i12;
                i11++;
            }
        }
        return i11;
    }
}
