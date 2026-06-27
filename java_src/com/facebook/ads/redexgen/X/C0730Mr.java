package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0730Mr extends C0729Mq {
    private static byte[] A03;
    private InterfaceC0723Mk A00;
    private final N1 A01;
    private final N9 A02;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 36);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{-65, -21, -22, -16, -31, -22, -16, -87, -48, -11, -20, -31, -74, -100, -95, -17, -122, -63, -51, -51, -55, -88, -86, -89, -86, -103, -85, -87, -87, -103, -56, -60, -125, -31, 13, 12, 18, 3, 12, 18, -53, -16, -1, 12, 5, 3, -40, -66, 0, 23, 18, 3, 17, -66, -61, 2, -53, -61, 2, -51, -61, 2, -88, 90, 127, -85, -86, -80, -95, -86, -80, 105, -120, -95, -86, -93, -80, -92, 118, 92, 97, -96, 70, 122, -100, -100, -98, -87, -83, 102, -117, -102, -89, -96, -98, -84, 115, 89, -101, -78, -83, -98, -84, 67, -55, -43, -43, -47, -80, -78, -81, -78, -95, -77, -79, -73, -95, -47, -62, -45, -43, -54, -62, -51, -95, -60, -48, -49, -43, -58, -49, -43, -117, -29, -30, -44, -69, -58};
    }

    public C0730Mr(N1 n1, N9 n9) {
        super(n1, n9);
        this.A02 = n9;
        this.A01 = n1;
    }

    private String A01(C0728Mp c0728Mp) throws IOException, C0724Ml {
        C0728Mp c0728Mp2 = c0728Mp;
        C0730Mr c0730Mr = this;
        String strA00 = null;
        boolean lengthKnown = false;
        StringBuilder sb = null;
        int iAvailable = 0;
        StringBuilder sbAppend = null;
        String strA002 = null;
        long j = 0;
        boolean z = false;
        boolean z2 = false;
        StringBuilder sbAppend2 = null;
        String strA003 = null;
        String strA004 = null;
        StringBuilder sbAppend3 = null;
        String strA07 = c0730Mr.A01.A07();
        char c = !TextUtils.isEmpty(strA07) ? (char) 2 : (char) 29;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    c0730Mr = c0730Mr;
                    if (!c0730Mr.A02.A3u()) {
                        c = 28;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0730Mr = c0730Mr;
                    iAvailable = c0730Mr.A02.available();
                    c = 5;
                    break;
                case 5:
                    if (iAvailable < 0) {
                        c = 27;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    lengthKnown = true;
                    c = 7;
                    break;
                case 7:
                    c0728Mp2 = c0728Mp2;
                    if (!c0728Mp2.A02) {
                        c = 26;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0728Mp2 = c0728Mp2;
                    j = iAvailable - c0728Mp2.A00;
                    c = '\t';
                    break;
                case '\t':
                    if (!lengthKnown) {
                        c = 25;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0728Mp2 = c0728Mp2;
                    if (!c0728Mp2.A02) {
                        c = 25;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    z2 = true;
                    c = '\f';
                    break;
                case '\f':
                    c0728Mp2 = c0728Mp2;
                    sb = new StringBuilder();
                    if (!c0728Mp2.A02) {
                        c = 24;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    strA002 = A00(104, 29, 93);
                    c = 14;
                    break;
                case 14:
                    sb = sb;
                    strA002 = strA002;
                    sbAppend = sb.append(strA002).append(A00(83, 21, 21));
                    if (!lengthKnown) {
                        c = 23;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    strA003 = String.format(Locale.US, A00(64, 19, 24), Long.valueOf(j));
                    c = 16;
                    break;
                case 16:
                    sbAppend = sbAppend;
                    strA003 = strA003;
                    sbAppend2 = sbAppend.append(strA003);
                    if (!z2) {
                        c = 22;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c0728Mp2 = c0728Mp2;
                    strA004 = String.format(Locale.US, A00(33, 30, 122), Long.valueOf(c0728Mp2.A00), Integer.valueOf(iAvailable - 1), Integer.valueOf(iAvailable));
                    c = 18;
                    break;
                case 18:
                    sbAppend2 = sbAppend2;
                    strA004 = strA004;
                    sbAppend3 = sbAppend2.append(strA004);
                    if (!z) {
                        c = 21;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    strA07 = strA07;
                    strA00 = String.format(Locale.US, A00(0, 17, 88), strA07);
                    c = 20;
                    break;
                case 20:
                    return sbAppend3.append(strA00).append(A00(63, 1, 44)).toString();
                case 21:
                    strA00 = A00(104, 0, 69);
                    c = 20;
                    break;
                case 22:
                    strA004 = A00(104, 0, 69);
                    c = 18;
                    break;
                case 23:
                    strA003 = A00(104, 0, 69);
                    c = 16;
                    break;
                case 24:
                    strA002 = A00(17, 16, 85);
                    c = 14;
                    break;
                case 25:
                    z2 = false;
                    c = '\f';
                    break;
                case 26:
                    j = iAvailable;
                    c = '\t';
                    break;
                case 27:
                    lengthKnown = false;
                    c = 7;
                    break;
                case 28:
                    c0730Mr = c0730Mr;
                    iAvailable = c0730Mr.A01.length();
                    c = 5;
                    break;
                case 29:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    private void A03(OutputStream outputStream, long j) throws IOException, C0724Ml {
        C0730Mr c0730Mr = this;
        int iA0D = 0;
        byte[] bArr = new byte[8192];
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0730Mr = c0730Mr;
                    bArr = bArr;
                    iA0D = c0730Mr.A0D(bArr, j, bArr.length);
                    if (iA0D == -1) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    outputStream = outputStream;
                    bArr = bArr;
                    outputStream.write(bArr, 0, iA0D);
                    j += iA0D;
                    c = 2;
                    break;
                case 4:
                    outputStream.flush();
                    return;
            }
        }
    }

    private void A04(OutputStream outputStream, long j) throws IOException, C0724Ml {
        try {
            N1 n1 = new N1(this.A01);
            n1.A6Q((int) j);
            byte[] bArr = new byte[8192];
            while (true) {
                int i = n1.read(bArr);
                if (i != -1) {
                    outputStream.write(bArr, 0, i);
                } else {
                    outputStream.flush();
                    return;
                }
            }
        } finally {
            this.A01.close();
        }
    }

    private boolean A05(C0728Mp c0728Mp) throws C0724Ml {
        C0730Mr c0730Mr = this;
        boolean z = false;
        int iAvailable = 0;
        boolean z2 = false;
        int length = c0730Mr.A01.length();
        char c = length > 0 ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    c0730Mr = c0730Mr;
                    iAvailable = c0730Mr.A02.available();
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0728Mp = c0728Mp;
                    if (!c0728Mp.A02) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0728Mp = c0728Mp;
                    if (c0728Mp.A00 > iAvailable + (length * 0.2f)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z2 = true;
                    c = 7;
                    break;
                case 7:
                    return z2;
                case '\b':
                    z2 = false;
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C0729Mq
    public final void A0F(int i) {
        if (this.A00 != null) {
            this.A00.A4z(this.A02.A00, this.A01.A03, i);
        }
    }

    public final void A0G(InterfaceC0723Mk interfaceC0723Mk) {
        this.A00 = interfaceC0723Mk;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Exception, java.lang.Throwable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0H(com.facebook.ads.redexgen.X.C0728Mp r20, java.net.Socket r21) throws java.io.IOException, com.facebook.ads.redexgen.X.C0724Ml {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0730Mr.A0H(com.facebook.ads.redexgen.X.Mp, java.net.Socket):void");
    }
}
