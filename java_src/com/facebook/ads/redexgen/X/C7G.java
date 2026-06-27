package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7G, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C7G implements C7F {
    private static byte[] A04;
    public int A00;
    public int A01;
    public int A02;
    public int[] A03;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A04 = new byte[]{72, 113, 96, 125, 116, 56, 124, 113, 107, 108, 121, 118, 123, 125, 56, 117, 109, 107, 108, 56, 122, 125, 56, 118, 119, 118, 53, 118, 125, 127, 121, 108, 113, 110, 125, 66, 111, 119, 97, 123, 122, 46, 126, 97, 125, 103, 122, 103, 97, 96, 125, 46, 99, 123, 125, 122, 46, 108, 107, 46, 96, 97, 96, 35, 96, 107, 105, 111, 122, 103, 120, 107};
    }

    public final void A02() {
        if (this.A03 != null) {
            Arrays.fill(this.A03, -1);
        }
        this.A00 = 0;
    }

    public final void A03(int i, int i2) {
        this.A01 = i;
        this.A02 = i2;
    }

    public final void A04(C8H c8h, boolean z) {
        C7G c7g = this;
        C7N c7n = null;
        c7g.A00 = 0;
        char c = c7g.A03 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7g = c7g;
                    Arrays.fill(c7g.A03, -1);
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    c7n = c8h.A06;
                    if (c8h.A04 == null) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7n = c7n;
                    if (c7n == null) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7n = c7n;
                    if (!c7n.A1d()) {
                        c = 11;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (!z) {
                        c = '\f';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    if (!c8h.A00.A0J()) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    c7g = c7g;
                    c8h = c8h;
                    c7n = c7n;
                    c7n.A20(c8h.A04.A03(), c7g);
                    c = '\t';
                    break;
                case '\t':
                    c7g = c7g;
                    c7n = c7n;
                    if (c7g.A00 <= c7n.A00) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c7g = c7g;
                    c8h = c8h;
                    c7n = c7n;
                    c7n.A00 = c7g.A00;
                    c7n.A08 = z;
                    c8h.A0r.A0O();
                    c = 11;
                    break;
                case 11:
                    return;
                case '\f':
                    c8h = c8h;
                    if (!c8h.A1m()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\r':
                    c7g = c7g;
                    c8h = c8h;
                    c7n = c7n;
                    c7n.A1z(c7g.A01, c7g.A02, c8h.A0s, c7g);
                    c = '\t';
                    break;
            }
        }
    }

    public final boolean A05(int i) {
        C7G c7g = this;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        char c = c7g.A03 != null ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    c7g = c7g;
                    i3 = c7g.A00 * 2;
                    i2 = 0;
                    c = 3;
                    break;
                case 3:
                    if (i2 >= i3) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7g = c7g;
                    if (c7g.A03[i2] != i) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    i2 += 2;
                    c = 3;
                    break;
                case '\b':
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7F
    public final void A2X(int storagePosition, int i) {
        C7G c7g = this;
        int i2 = 0;
        char c = storagePosition < 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A00(35, 37, 104));
                case 3:
                    if (i >= 0) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    throw new IllegalArgumentException(A00(0, 35, 126));
                case 5:
                    c7g = c7g;
                    i2 = c7g.A00 * 2;
                    if (c7g.A03 != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7g = c7g;
                    c7g.A03 = new int[4];
                    Arrays.fill(c7g.A03, -1);
                    c = 7;
                    break;
                case 7:
                    C7G c7g2 = c7g;
                    c7g2.A03[i2] = storagePosition;
                    c7g2.A03[i2 + 1] = i;
                    c7g2.A00++;
                    return;
                case '\b':
                    c7g = c7g;
                    if (i2 < c7g.A03.length) {
                        c = 7;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7g = c7g;
                    int[] iArr = c7g.A03;
                    c7g.A03 = new int[i2 * 2];
                    System.arraycopy(iArr, 0, c7g.A03, 0, iArr.length);
                    c = 7;
                    break;
            }
        }
    }
}
