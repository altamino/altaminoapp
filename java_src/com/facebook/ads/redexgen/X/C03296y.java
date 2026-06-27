package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6y, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03296y {
    private static byte[] A02;
    public long A00 = 0;
    public C03296y A01;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ILLEGAL_STATE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{-24, -24};
    }

    private void A01() {
        if (this.A01 == null) {
            this.A01 = new C03296y();
        }
    }

    public final int A03(int i) {
        C03296y c03296y = this;
        int iBitCount = 0;
        char c = c03296y.A01 == null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (i < 64) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03296y = c03296y;
                    iBitCount = Long.bitCount(c03296y.A00);
                    c = 4;
                    break;
                case 4:
                    return iBitCount;
                case 5:
                    c03296y = c03296y;
                    iBitCount = Long.bitCount(c03296y.A00 & ((1 << i) - 1));
                    c = 4;
                    break;
                case 6:
                    if (i >= 64) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c03296y = c03296y;
                    iBitCount = Long.bitCount(c03296y.A00 & ((1 << i) - 1));
                    c = 4;
                    break;
                case '\b':
                    c03296y = c03296y;
                    iBitCount = c03296y.A01.A03(i - 64) + Long.bitCount(c03296y.A00);
                    c = 4;
                    break;
            }
        }
    }

    public final void A04() {
        this.A00 = 0L;
        if (this.A01 != null) {
            this.A01.A04();
        }
    }

    public final void A05(int i) {
        C03296y c03296y = this;
        char c = i >= 64 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c03296y = c03296y;
                    if (c03296y.A01 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03296y = c03296y;
                    c03296y.A01.A05(i - 64);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c03296y = c03296y;
                    c03296y.A00 &= (1 << i) ^ (-1);
                    c = 4;
                    break;
            }
        }
    }

    public final void A06(int i) {
        C03296y c03296y = this;
        char c = i >= 64 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c03296y = c03296y;
                    c03296y.A01();
                    c03296y.A01.A06(i - 64);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c03296y = c03296y;
                    c03296y.A00 |= 1 << i;
                    c = 3;
                    break;
            }
        }
    }

    public final void A07(int i, boolean z) {
        C03296y c03296y = this;
        boolean z2 = false;
        char c = i >= 64 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c03296y = c03296y;
                    c03296y.A01();
                    c03296y.A01.A07(i - 64, z);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c03296y = c03296y;
                    if ((c03296y.A00 & Long.MIN_VALUE) == 0) {
                        c = '\f';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z2 = true;
                    c = 6;
                    break;
                case 6:
                    c03296y = c03296y;
                    long j = (1 << i) - 1;
                    c03296y.A00 = (c03296y.A00 & j) | ((c03296y.A00 & ((-1) ^ j)) << 1);
                    if (!z) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c03296y = c03296y;
                    c03296y.A06(i);
                    c = '\b';
                    break;
                case '\b':
                    if (!z2) {
                        c = '\t';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\t':
                    c03296y = c03296y;
                    if (c03296y.A01 == null) {
                        c = 3;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c03296y = c03296y;
                    c03296y.A01();
                    c03296y.A01.A07(0, z2);
                    c = 3;
                    break;
                case 11:
                    c03296y = c03296y;
                    c03296y.A05(i);
                    c = '\b';
                    break;
                case '\f':
                    z2 = false;
                    c = 6;
                    break;
            }
        }
    }

    public final boolean A08(int i) {
        C03296y c03296y = this;
        boolean zA08 = false;
        char c = i >= 64 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c03296y = c03296y;
                    c03296y.A01();
                    zA08 = c03296y.A01.A08(i - 64);
                    c = 3;
                    break;
                case 3:
                    return zA08;
                case 4:
                    c03296y = c03296y;
                    if ((c03296y.A00 & (1 << i)) == 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    zA08 = true;
                    c = 3;
                    break;
                case 6:
                    zA08 = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A09(int i) {
        C03296y c03296y = this;
        boolean zA09 = false;
        long j = 0;
        char c = i >= 64 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c03296y = c03296y;
                    c03296y.A01();
                    zA09 = c03296y.A01.A09(i - 64);
                    c = 3;
                    break;
                case 3:
                    return zA09;
                case 4:
                    c03296y = c03296y;
                    j = 1 << i;
                    if ((c03296y.A00 & j) == 0) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    zA09 = true;
                    c = 6;
                    break;
                case 6:
                    c03296y = c03296y;
                    c03296y.A00 &= (-1) ^ j;
                    long j2 = j - 1;
                    c03296y.A00 = (c03296y.A00 & j2) | Long.rotateRight(c03296y.A00 & ((-1) ^ j2), 1);
                    if (c03296y.A01 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c03296y = c03296y;
                    boolean value = c03296y.A01.A08(0);
                    if (!value) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c03296y = c03296y;
                    c03296y.A06(63);
                    c = '\t';
                    break;
                case '\t':
                    c03296y = c03296y;
                    c03296y.A01.A09(0);
                    c = 3;
                    break;
                case '\n':
                    zA09 = false;
                    c = 6;
                    break;
            }
        }
    }

    public final String toString() {
        C03296y c03296y = this;
        String binaryString = null;
        char c = c03296y.A01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c03296y = c03296y;
                    binaryString = Long.toBinaryString(c03296y.A00);
                    c = 3;
                    break;
                case 3:
                    return binaryString;
                case 4:
                    c03296y = c03296y;
                    binaryString = c03296y.A01.toString() + A00(0, 2, 3) + Long.toBinaryString(c03296y.A00);
                    c = 3;
                    break;
            }
        }
    }
}
