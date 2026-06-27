package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0595Hh {
    private int A00 = A03 & 1048575;
    private int A01;
    private byte[] A02;
    private static final char[] A05 = {'U', 19, '0', 'M', 11, '(', 'E', 3, ' ', '=', 'Z', 24, '5', 'R', 16, '-', 'J', '\b', '%', 'B', 0, 29, ':', 'W', 21, '2', 'O', '\r', '*', 'G', 5, '\"', '?', '\\', 26, '7', 'T', 18, '/', 'L', '\n', '\'', 'D', 2, 31, '<', 'Y', 23, '4', 'Q', 15, ',', 'I', 7, '$', 'A', '^', 28, '9', 'V', 20, '1', 'N', '\f', ')', 'F', 4, '!', '>', '[', 25, '6', 'S', 17, '.', 'K', '\t', '&', 'C', 1, 30, ';', 'X', 22, '3', 'P', 14, '+', 'H', 6, '#', '@', ']', 27, '8'};
    private static final char[] A06 = {0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', '\r', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, ' ', '!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '<', '=', '>', '?', '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '[', '\\', ']', '^', 0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', '\r', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, ' ', '!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '<', '=', '>', '?', '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '[', '\\', ']', '^', 0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', '\r', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, ' ', '!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '<', '=', '>', '?', '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '[', '\\', ']', '^', 0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', '\r', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29};
    private static final byte[] A04 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126};
    private static final int A03 = C0595Hh.class.hashCode();

    public C0595Hh(String str) {
        int length = str.length();
        this.A01 = length + 4;
        this.A02 = new byte[this.A01];
        for (int i = 0; i < length; i++) {
            this.A02[i + 4] = (byte) (str.charAt(i) & 127);
        }
    }

    public final String A05(String str) {
        String str2 = str;
        C0595Hh c0595Hh = this;
        int i = 0;
        int oPos = 0;
        int i2 = 0;
        int i3 = 0;
        byte[] bArr = null;
        int length = 0;
        char cCharAt = 0;
        C0594Hg c0594Hg = null;
        int i4 = 0;
        int i5 = c0595Hh.A00;
        c0595Hh.A00 = (c0595Hh.A00 + 489913) & 1048575;
        int i6 = 0;
        int n = 2;
        while (true) {
            switch (n) {
                case 2:
                    if (i6 >= 4) {
                        n = 4;
                        break;
                    } else {
                        n = 3;
                        break;
                    }
                case 3:
                    c0595Hh = c0595Hh;
                    int n2 = i5 & 31;
                    c0595Hh.A02[i6] = (byte) (n2 + 48);
                    i5 >>= 5;
                    i6++;
                    n = 2;
                    break;
                case 4:
                    c0595Hh = c0595Hh;
                    str2 = str2;
                    c0594Hg = new C0594Hg(c0595Hh);
                    length = str2.length();
                    int iPos = length * 4;
                    bArr = new byte[iPos + 4];
                    i3 = 0;
                    n = 5;
                    break;
                case 5:
                    if (i3 >= 4) {
                        n = 7;
                        break;
                    } else {
                        n = 6;
                        break;
                    }
                case 6:
                    c0595Hh = c0595Hh;
                    bArr = bArr;
                    bArr[i3] = c0595Hh.A02[i3];
                    i3++;
                    n = 5;
                    break;
                case 7:
                    i2 = 0;
                    oPos = i3;
                    n = 8;
                    break;
                case 8:
                    if (i2 >= length) {
                        n = 15;
                        break;
                    } else {
                        n = 9;
                        break;
                    }
                case 9:
                    str2 = str2;
                    i = i2 + 1;
                    cCharAt = str2.charAt(i2);
                    if (cCharAt < ' ') {
                        n = 11;
                        break;
                    } else {
                        n = 10;
                        break;
                    }
                case 10:
                    if (cCharAt <= '}') {
                        n = 14;
                        break;
                    } else {
                        n = 11;
                        break;
                    }
                case 11:
                    c0594Hg = c0594Hg;
                    bArr = bArr;
                    i4 = oPos + 1;
                    bArr[oPos] = c0594Hg.A00((byte) 126);
                    if (cCharAt <= 2047) {
                        n = 13;
                        break;
                    } else {
                        n = 12;
                        break;
                    }
                case 12:
                    c0594Hg = c0594Hg;
                    bArr = bArr;
                    bArr[i4] = c0594Hg.A00((byte) ((cCharAt >> 11) + 80));
                    i4++;
                    n = 13;
                    break;
                case 13:
                    c0594Hg = c0594Hg;
                    bArr = bArr;
                    int i7 = i4 + 1;
                    int n3 = cCharAt >> 6;
                    bArr[i4] = c0594Hg.A00((byte) ((n3 & 31) + 48));
                    oPos = i7 + 1;
                    int n4 = cCharAt & '?';
                    bArr[i7] = c0594Hg.A00((byte) (n4 + 48));
                    i2 = i;
                    n = 8;
                    break;
                case 14:
                    c0594Hg = c0594Hg;
                    bArr = bArr;
                    bArr[oPos] = c0594Hg.A00((byte) cCharAt);
                    oPos++;
                    i2 = i;
                    n = 8;
                    break;
                case 15:
                    return new String(bArr, 0, oPos);
            }
        }
    }
}
