package com.mixpanel.android.util;

/* JADX INFO: loaded from: classes9.dex */
public class a {
    private static final char[] map1 = new char[64];
    private static final byte[] map2;

    public static char[] a(byte[] bArr) {
        return b(bArr, bArr.length);
    }

    static {
        char c7 = 'A';
        int i10 = 0;
        while (c7 <= 'Z') {
            map1[i10] = c7;
            c7 = (char) (c7 + 1);
            i10++;
        }
        char c10 = 'a';
        while (c10 <= 'z') {
            map1[i10] = c10;
            c10 = (char) (c10 + 1);
            i10++;
        }
        char c11 = '0';
        while (c11 <= '9') {
            map1[i10] = c11;
            c11 = (char) (c11 + 1);
            i10++;
        }
        char[] cArr = map1;
        cArr[i10] = '+';
        cArr[i10 + 1] = '/';
        map2 = new byte[128];
        int i11 = 0;
        while (true) {
            byte[] bArr = map2;
            if (i11 >= bArr.length) {
                break;
            }
            bArr[i11] = -1;
            i11++;
        }
        for (int i12 = 0; i12 < 64; i12++) {
            map2[map1[i12]] = (byte) i12;
        }
    }

    public static char[] b(byte[] bArr, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = ((i10 * 4) + 2) / 3;
        char[] cArr = new char[((i10 + 2) / 3) * 4];
        int i16 = 0;
        int i17 = 0;
        while (i16 < i10) {
            int i18 = i16 + 1;
            byte b7 = bArr[i16];
            int i19 = b7 & 255;
            if (i18 < i10) {
                i11 = i16 + 2;
                i12 = bArr[i18] & 255;
            } else {
                i11 = i18;
                i12 = 0;
            }
            if (i11 < i10) {
                i13 = i11 + 1;
                i14 = bArr[i11] & 255;
            } else {
                i13 = i11;
                i14 = 0;
            }
            int i20 = ((b7 & 3) << 4) | (i12 >>> 4);
            int i21 = ((i12 & 15) << 2) | (i14 >>> 6);
            int i22 = i14 & 63;
            char[] cArr2 = map1;
            cArr[i17] = cArr2[i19 >>> 2];
            int i23 = i17 + 2;
            cArr[i17 + 1] = cArr2[i20];
            char c7 = '=';
            cArr[i23] = i23 < i15 ? cArr2[i21] : '=';
            int i24 = i17 + 3;
            if (i24 < i15) {
                c7 = cArr2[i22];
            }
            cArr[i24] = c7;
            i17 += 4;
            i16 = i13;
        }
        return cArr;
    }

    public static String c(String str) {
        return new String(a(str.getBytes()));
    }
}
