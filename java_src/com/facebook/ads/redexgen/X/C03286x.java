package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6x, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03286x implements InterfaceC03276w {
    private static byte[] A08;
    private int A00;
    private C5A<C03266v> A01;
    public final InterfaceC03256u A02;
    public final C7Y A03;
    public final Runnable A04;
    public final ArrayList<C03266v> A05;
    public final ArrayList<C03266v> A06;
    public final boolean A07;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 64);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A08 = new byte[]{25, 26, -54, 29, 18, 25, 31, 22, 14, -54, 12, 15, -54, 28, 15, 23, 25, 32, 15, -54, 25, 28, -54, 31, 26, 14, 11, 30, 15, -40, -16, -27, -20, -14, -23, -31, -99, -21, -20, -15, -99, -31, -26, -16, -19, -34, -15, -32, -27, -99, -34, -31, -31, -99, -20, -17, -99, -22, -20, -13, -30, -99, -29, -20, -17, -99, -19, -17, -30, -99, -23, -34, -10, -20, -14, -15, -15, 10, 7, 10, 11, 19, 10, -68, 17, 12, 0, -3, 16, 1, -68, 11, 12, -68, 16, 21, 12, 1, -68, 2, 11, 14, -68, -7, -8, -10, 3, -86, -4, -17, -9, -7, 0, -17, -86, -21, -8, -18, -86, -1, -6, -18, -21, -2, -17, -86, -7, -6, -3, -86, -19, -21, -8, -86, -20, -17, -86, -18, -13, -3, -6, -21, -2, -19, -14, -17, -18, -86, -13, -8, -86, -16, -13, -4, -3, -2, -86, -6, -21, -3, -3};
    }

    public C03286x(InterfaceC03256u interfaceC03256u) {
        this(interfaceC03256u, false);
    }

    private C03286x(InterfaceC03256u interfaceC03256u, boolean z) {
        this.A01 = new C5B(30);
        this.A05 = new ArrayList<>();
        this.A06 = new ArrayList<>();
        this.A00 = 0;
        this.A02 = interfaceC03256u;
        this.A07 = z;
        this.A03 = new C7Y(this);
    }

    private int A00(int end, int i) {
        C03286x c03286x = this;
        C03266v c03266v = null;
        C03266v c03266v2 = null;
        int i2 = 0;
        int i3 = 0;
        int size = 0;
        int size2 = c03286x.A06.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size2 < 0) {
                        c = '#';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    c03266v2 = c03286x.A06.get(size2);
                    if (c03266v2.A00 != 8) {
                        c = 26;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03266v2 = c03266v2;
                    if (c03266v2.A02 >= c03266v2.A01) {
                        c = 25;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c03266v2 = c03266v2;
                    i2 = c03266v2.A02;
                    i3 = c03266v2.A01;
                    c = 6;
                    break;
                case 6:
                    if (end < i2) {
                        c = 20;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (end > i3) {
                        c = 20;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c03266v2 = c03266v2;
                    if (i2 != c03266v2.A02) {
                        c = 15;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    if (i != 1) {
                        c = '\r';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c03266v2 = c03266v2;
                    c03266v2.A01++;
                    c = 11;
                    break;
                case 11:
                    end++;
                    c = '\f';
                    break;
                case '\f':
                    size2--;
                    c = 2;
                    break;
                case '\r':
                    if (i != 2) {
                        c = 11;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c03266v2 = c03266v2;
                    c03266v2.A01--;
                    c = 11;
                    break;
                case 15:
                    if (i != 1) {
                        c = 18;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c03266v2 = c03266v2;
                    c03266v2.A02++;
                    c = 17;
                    break;
                case 17:
                    end--;
                    c = '\f';
                    break;
                case 18:
                    if (i != 2) {
                        c = 17;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c03266v2 = c03266v2;
                    c03266v2.A02--;
                    c = 17;
                    break;
                case 20:
                    c03266v2 = c03266v2;
                    if (end >= c03266v2.A02) {
                        c = '\f';
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    if (i != 1) {
                        c = 23;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    c03266v2 = c03266v2;
                    c03266v2.A02++;
                    c03266v2.A01++;
                    c = '\f';
                    break;
                case 23:
                    if (i != 2) {
                        c = '\f';
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c03266v2 = c03266v2;
                    c03266v2.A02--;
                    c03266v2.A01--;
                    c = '\f';
                    break;
                case 25:
                    c03266v2 = c03266v2;
                    i2 = c03266v2.A01;
                    i3 = c03266v2.A02;
                    c = 6;
                    break;
                case 26:
                    c03266v2 = c03266v2;
                    if (c03266v2.A02 > end) {
                        c = 31;
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    c03266v2 = c03266v2;
                    if (c03266v2.A00 != 1) {
                        c = 29;
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    c03266v2 = c03266v2;
                    end -= c03266v2.A01;
                    c = '\f';
                    break;
                case 29:
                    c03266v2 = c03266v2;
                    if (c03266v2.A00 != 2) {
                        c = '\f';
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    c03266v2 = c03266v2;
                    end += c03266v2.A01;
                    c = '\f';
                    break;
                case 31:
                    if (i != 1) {
                        c = '!';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    c03266v2 = c03266v2;
                    c03266v2.A02++;
                    c = '\f';
                    break;
                case '!':
                    if (i != 2) {
                        c = '\f';
                        break;
                    } else {
                        c = '\"';
                        break;
                    }
                case '\"':
                    c03266v2 = c03266v2;
                    c03266v2.A02--;
                    c = '\f';
                    break;
                case '#':
                    c03286x = c03286x;
                    size = c03286x.A06.size() - 1;
                    c = '$';
                    break;
                case '$':
                    if (size < 0) {
                        c = ',';
                        break;
                    } else {
                        c = '%';
                        break;
                    }
                case '%':
                    c03286x = c03286x;
                    c03266v = c03286x.A06.get(size);
                    if (c03266v.A00 != 8) {
                        c = '*';
                        break;
                    } else {
                        c = '&';
                        break;
                    }
                case '&':
                    c03266v = c03266v;
                    if (c03266v.A01 == c03266v.A02) {
                        c = '(';
                        break;
                    } else {
                        c = '\'';
                        break;
                    }
                case '\'':
                    c03266v = c03266v;
                    if (c03266v.A01 >= 0) {
                        c = ')';
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case '(':
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A06.remove(size);
                    c03286x.A6n(c03266v);
                    c = ')';
                    break;
                case ')':
                    size--;
                    c = '$';
                    break;
                case '*':
                    c03266v = c03266v;
                    if (c03266v.A01 > 0) {
                        c = ')';
                        break;
                    } else {
                        c = '+';
                        break;
                    }
                case '+':
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A06.remove(size);
                    c03286x.A6n(c03266v);
                    c = ')';
                    break;
                case ',':
                    return end;
            }
        }
    }

    private final int A01(int i, int i2) {
        C03286x c03286x = this;
        C03266v c03266v = null;
        int size = c03286x.A06.size();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= size) {
                        c = 15;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    c03266v = c03286x.A06.get(i2);
                    if (c03266v.A00 != 8) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03266v = c03266v;
                    if (c03266v.A02 != i) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c03266v = c03266v;
                    i = c03266v.A01;
                    c = 6;
                    break;
                case 6:
                    i2++;
                    c = 2;
                    break;
                case 7:
                    c03266v = c03266v;
                    if (c03266v.A02 >= i) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    i--;
                    c = '\t';
                    break;
                case '\t':
                    c03266v = c03266v;
                    if (c03266v.A01 > i) {
                        c = 6;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    i++;
                    c = 6;
                    break;
                case 11:
                    c03266v = c03266v;
                    if (c03266v.A02 > i) {
                        c = 6;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c03266v = c03266v;
                    if (c03266v.A00 != 2) {
                        c = 17;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c03266v = c03266v;
                    if (i >= c03266v.A02 + c03266v.A01) {
                        c = 16;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    i = -1;
                    c = 15;
                    break;
                case 15:
                    return i;
                case 16:
                    c03266v = c03266v;
                    i -= c03266v.A01;
                    c = 6;
                    break;
                case 17:
                    c03266v = c03266v;
                    if (c03266v.A00 != 1) {
                        c = 6;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c03266v = c03266v;
                    i += c03266v.A01;
                    c = 6;
                    break;
            }
        }
    }

    private void A04(C03266v c03266v) {
        A09(c03266v);
    }

    private void A05(C03266v c03266v) {
        A09(c03266v);
    }

    private void A06(C03266v c03266v) {
        C03286x c03286x = this;
        int tmpStart = 0;
        int i = c03266v.A02;
        int i2 = 0;
        int i3 = c03266v.A02;
        int tmpCount = c03266v.A01;
        int i4 = i3 + tmpCount;
        char c = 65535;
        int i5 = c03266v.A02;
        int type = 2;
        while (true) {
            switch (type) {
                case 2:
                    if (i5 >= i4) {
                        type = 15;
                        break;
                    } else {
                        type = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    tmpStart = 0;
                    C8G vh = c03286x.A02.A37(i5);
                    if (vh != null) {
                        type = 5;
                        break;
                    } else {
                        type = 4;
                        break;
                    }
                case 4:
                    c03286x = c03286x;
                    if (!c03286x.A0C(i5)) {
                        type = 12;
                        break;
                    } else {
                        type = 5;
                        break;
                    }
                case 5:
                    if (c != 0) {
                        type = 7;
                        break;
                    } else {
                        type = 6;
                        break;
                    }
                case 6:
                    c03286x = c03286x;
                    c03286x.A08(c03286x.A4e(2, i, i2, null));
                    tmpStart = 1;
                    type = 7;
                    break;
                case 7:
                    c = 1;
                    type = 8;
                    break;
                case 8:
                    if (tmpStart == 0) {
                        type = 11;
                        break;
                    } else {
                        type = 9;
                        break;
                    }
                case 9:
                    i5 -= i2;
                    i4 -= i2;
                    i2 = 1;
                    type = 10;
                    break;
                case 10:
                    i5++;
                    type = 2;
                    break;
                case 11:
                    i2++;
                    type = 10;
                    break;
                case 12:
                    if (c != 1) {
                        type = 14;
                        break;
                    } else {
                        type = 13;
                        break;
                    }
                case 13:
                    c03286x = c03286x;
                    c03286x.A09(c03286x.A4e(2, i, i2, null));
                    tmpStart = 1;
                    type = 14;
                    break;
                case 14:
                    c = 0;
                    type = 8;
                    break;
                case 15:
                    c03266v = c03266v;
                    if (i2 == c03266v.A01) {
                        type = 17;
                        break;
                    } else {
                        type = 16;
                        break;
                    }
                case 16:
                    c03286x = c03286x;
                    c03286x.A6n(c03266v);
                    c03266v = c03286x.A4e(2, i, i2, null);
                    type = 17;
                    break;
                case 17:
                    if (c != 0) {
                        type = 20;
                        break;
                    } else {
                        type = 18;
                        break;
                    }
                case 18:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A08(c03266v);
                    type = 19;
                    break;
                case 19:
                    return;
                case 20:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A09(c03266v);
                    type = 19;
                    break;
            }
        }
    }

    private void A07(C03266v c03266v) {
        C03286x c03286x = this;
        int i = c03266v.A02;
        int i2 = 0;
        int i3 = c03266v.A02;
        int tmpCount = c03266v.A01;
        int i4 = i3 + tmpCount;
        char c = 65535;
        int i5 = c03266v.A02;
        int type = 2;
        while (true) {
            switch (type) {
                case 2:
                    if (i5 >= i4) {
                        type = 12;
                        break;
                    } else {
                        type = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    C8G vh = c03286x.A02.A37(i5);
                    if (vh != null) {
                        type = 5;
                        break;
                    } else {
                        type = 4;
                        break;
                    }
                case 4:
                    c03286x = c03286x;
                    if (!c03286x.A0C(i5)) {
                        type = 9;
                        break;
                    } else {
                        type = 5;
                        break;
                    }
                case 5:
                    if (c != 0) {
                        type = 7;
                        break;
                    } else {
                        type = 6;
                        break;
                    }
                case 6:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A08(c03286x.A4e(4, i, i2, c03266v.A03));
                    i2 = 0;
                    i = i5;
                    type = 7;
                    break;
                case 7:
                    c = 1;
                    type = 8;
                    break;
                case 8:
                    i2++;
                    i5++;
                    type = 2;
                    break;
                case 9:
                    if (c != 1) {
                        type = 11;
                        break;
                    } else {
                        type = 10;
                        break;
                    }
                case 10:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A09(c03286x.A4e(4, i, i2, c03266v.A03));
                    i2 = 0;
                    i = i5;
                    type = 11;
                    break;
                case 11:
                    c = 0;
                    type = 8;
                    break;
                case 12:
                    c03266v = c03266v;
                    if (i2 == c03266v.A01) {
                        type = 14;
                        break;
                    } else {
                        type = 13;
                        break;
                    }
                case 13:
                    c03286x = c03286x;
                    C03266v c03266v2 = c03266v;
                    Object obj = c03266v2.A03;
                    c03286x.A6n(c03266v2);
                    c03266v = c03286x.A4e(4, i, i2, obj);
                    type = 14;
                    break;
                case 14:
                    if (c != 0) {
                        type = 17;
                        break;
                    } else {
                        type = 15;
                        break;
                    }
                case 15:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A08(c03266v);
                    type = 16;
                    break;
                case 16:
                    return;
                case 17:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A09(c03266v);
                    type = 16;
                    break;
            }
        }
    }

    private void A08(C03266v c03266v) {
        C03286x c03286x = this;
        int iA00 = 0;
        boolean z = false;
        int positionMultiplier = 0;
        int i = 0;
        int tmpCnt = 0;
        int tmpStart = 0;
        int updatedPos = 0;
        Object obj = null;
        int pos = c03266v.A00 != 1 ? 2 : 3;
        while (true) {
            switch (pos) {
                case 2:
                    c03266v = c03266v;
                    if (c03266v.A00 != 8) {
                        pos = 4;
                        break;
                    } else {
                        pos = 3;
                        break;
                    }
                case 3:
                    throw new IllegalArgumentException(A02(30, 46, 61));
                case 4:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    updatedPos = c03286x.A00(c03266v.A02, c03266v.A00);
                    tmpStart = 1;
                    tmpCnt = c03266v.A02;
                    switch (c03266v.A00) {
                        case 2:
                            pos = 6;
                            break;
                        case 3:
                            pos = 5;
                            break;
                        case 4:
                            pos = 7;
                            break;
                        default:
                            pos = 5;
                            break;
                    }
                case 5:
                    throw new IllegalArgumentException(A02(0, 30, 106) + c03266v);
                case 6:
                    i = 0;
                    pos = 8;
                    break;
                case 7:
                    i = 1;
                    pos = 8;
                    break;
                case 8:
                    positionMultiplier = 1;
                    pos = 9;
                    break;
                case 9:
                    c03266v = c03266v;
                    if (positionMultiplier >= c03266v.A01) {
                        pos = 23;
                        break;
                    } else {
                        pos = 10;
                        break;
                    }
                case 10:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    int i2 = c03266v.A02 + (i * positionMultiplier);
                    int pos2 = c03266v.A00;
                    iA00 = c03286x.A00(i2, pos2);
                    z = false;
                    int pos3 = c03266v.A00;
                    switch (pos3) {
                        case 2:
                            pos = 17;
                            break;
                        case 3:
                            pos = 11;
                            break;
                        case 4:
                            pos = 20;
                            break;
                        default:
                            pos = 11;
                            break;
                    }
                case 11:
                    if (!z) {
                        pos = 14;
                        break;
                    } else {
                        pos = 12;
                        break;
                    }
                case 12:
                    tmpStart++;
                    pos = 13;
                    break;
                case 13:
                    positionMultiplier++;
                    pos = 9;
                    break;
                case 14:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    C03266v c03266vA4e = c03286x.A4e(c03266v.A00, updatedPos, tmpStart, c03266v.A03);
                    c03286x.A0A(c03266vA4e, tmpCnt);
                    c03286x.A6n(c03266vA4e);
                    if (c03266v.A00 != 4) {
                        pos = 16;
                        break;
                    } else {
                        pos = 15;
                        break;
                    }
                case 15:
                    tmpCnt += tmpStart;
                    pos = 16;
                    break;
                case 16:
                    updatedPos = iA00;
                    tmpStart = 1;
                    pos = 13;
                    break;
                case 17:
                    if (iA00 != updatedPos) {
                        pos = 19;
                        break;
                    } else {
                        pos = 18;
                        break;
                    }
                case 18:
                    z = true;
                    pos = 11;
                    break;
                case 19:
                    z = false;
                    pos = 11;
                    break;
                case 20:
                    if (iA00 != updatedPos + 1) {
                        pos = 22;
                        break;
                    } else {
                        pos = 21;
                        break;
                    }
                case 21:
                    z = true;
                    pos = 11;
                    break;
                case 22:
                    z = false;
                    pos = 11;
                    break;
                case 23:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    obj = c03266v.A03;
                    c03286x.A6n(c03266v);
                    if (tmpStart <= 0) {
                        pos = 25;
                        break;
                    } else {
                        pos = 24;
                        break;
                    }
                case 24:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    obj = obj;
                    int pos4 = c03266v.A00;
                    C03266v c03266vA4e2 = c03286x.A4e(pos4, updatedPos, tmpStart, obj);
                    c03286x.A0A(c03266vA4e2, tmpCnt);
                    c03286x.A6n(c03266vA4e2);
                    pos = 25;
                    break;
                case 25:
                    return;
            }
        }
    }

    private void A09(C03266v c03266v) {
        char c;
        C03286x c03286x = this;
        c03286x.A06.add(c03266v);
        switch (c03266v.A00) {
            case 1:
                c = 6;
                break;
            case 2:
                c = 4;
                break;
            case 3:
                c = 2;
                break;
            case 4:
                c = 3;
                break;
            case 5:
                c = 2;
                break;
            case 6:
                c = 2;
                break;
            case 7:
                c = 2;
                break;
            case 8:
                c = 5;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A02(76, 27, 92) + c03266v);
                case 3:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A4c(c03266v.A02, c03266v.A01, c03266v.A03);
                    c = 7;
                    break;
                case 4:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A4i(c03266v.A02, c03266v.A01);
                    c = 7;
                    break;
                case 5:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A4g(c03266v.A02, c03266v.A01);
                    c = 7;
                    break;
                case 6:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A4f(c03266v.A02, c03266v.A01);
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    private final void A0A(C03266v c03266v, int i) {
        char c;
        C03286x c03286x = this;
        c03286x.A02.A5B(c03266v);
        switch (c03266v.A00) {
            case 2:
                c = 4;
                break;
            case 3:
                c = 2;
                break;
            case 4:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A02(103, 58, 74));
                case 3:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A4c(i, c03266v.A01, c03266v.A03);
                    c = 5;
                    break;
                case 4:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A4h(i, c03266v.A01);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    private final void A0B(List<C03266v> list) {
        C03286x c03286x = this;
        int size = list.size();
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= size) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    list = list;
                    c03286x.A6n(list.get(i));
                    i++;
                    c = 2;
                    break;
                case 4:
                    list.clear();
                    return;
            }
        }
    }

    private boolean A0C(int end) {
        C03286x c03286x = this;
        C03266v c03266v = null;
        int i = 0;
        int i2 = 0;
        boolean z = true;
        int size = c03286x.A06.size();
        int i3 = 0;
        int i4 = 2;
        while (true) {
            switch (i4) {
                case 2:
                    if (i3 >= size) {
                        i4 = 12;
                        break;
                    } else {
                        i4 = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    c03266v = c03286x.A06.get(i3);
                    if (c03266v.A00 != 8) {
                        i4 = 6;
                        break;
                    } else {
                        i4 = 4;
                        break;
                    }
                case 4:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    if (c03286x.A01(c03266v.A01, i3 + 1) != end) {
                        i4 = 11;
                        break;
                    } else {
                        i4 = 5;
                        break;
                    }
                case 5:
                    return z;
                case 6:
                    c03266v = c03266v;
                    int i5 = c03266v.A00;
                    if (i5 != z) {
                        i4 = 11;
                        break;
                    } else {
                        i4 = 7;
                        break;
                    }
                case 7:
                    c03266v = c03266v;
                    i = c03266v.A02 + c03266v.A01;
                    i2 = c03266v.A02;
                    i4 = 8;
                    break;
                case 8:
                    if (i2 >= i) {
                        i4 = 11;
                        break;
                    } else {
                        i4 = 9;
                        break;
                    }
                case 9:
                    c03286x = c03286x;
                    int i6 = i3 + 1;
                    if (c03286x.A01(i2, i6) == end) {
                        i4 = 5;
                        break;
                    } else {
                        i4 = 10;
                        break;
                    }
                case 10:
                    i2++;
                    i4 = 8;
                    break;
                case 11:
                    i3++;
                    i4 = 2;
                    break;
                case 12:
                    z = false;
                    i4 = 5;
                    break;
            }
        }
    }

    public final int A0D(int i) {
        return A01(i, 0);
    }

    public final int A0E(int i) {
        C03286x c03286x = this;
        C03266v c03266v = null;
        int size = c03286x.A05.size();
        int i2 = 0;
        int size2 = 2;
        while (true) {
            switch (size2) {
                case 2:
                    if (i2 >= size) {
                        size2 = 16;
                        break;
                    } else {
                        size2 = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    c03266v = c03286x.A05.get(i2);
                    int size3 = c03266v.A00;
                    switch (size3) {
                        case 1:
                            size2 = 11;
                            break;
                        case 2:
                            size2 = 13;
                            break;
                        case 8:
                            size2 = 5;
                            break;
                        default:
                            size2 = 4;
                            break;
                    }
                case 4:
                    i2++;
                    size2 = 2;
                    break;
                case 5:
                    c03266v = c03266v;
                    int size4 = c03266v.A02;
                    if (size4 != i) {
                        size2 = 7;
                        break;
                    } else {
                        size2 = 6;
                        break;
                    }
                case 6:
                    c03266v = c03266v;
                    i = c03266v.A01;
                    size2 = 4;
                    break;
                case 7:
                    c03266v = c03266v;
                    int size5 = c03266v.A02;
                    if (size5 >= i) {
                        size2 = 9;
                        break;
                    } else {
                        size2 = 8;
                        break;
                    }
                case 8:
                    i--;
                    size2 = 9;
                    break;
                case 9:
                    c03266v = c03266v;
                    int size6 = c03266v.A01;
                    if (size6 > i) {
                        size2 = 4;
                        break;
                    } else {
                        size2 = 10;
                        break;
                    }
                case 10:
                    i++;
                    size2 = 4;
                    break;
                case 11:
                    c03266v = c03266v;
                    if (c03266v.A02 > i) {
                        size2 = 4;
                        break;
                    } else {
                        size2 = 12;
                        break;
                    }
                case 12:
                    c03266v = c03266v;
                    int size7 = c03266v.A01;
                    i += size7;
                    size2 = 4;
                    break;
                case 13:
                    c03266v = c03266v;
                    int size8 = c03266v.A02;
                    if (size8 > i) {
                        size2 = 4;
                        break;
                    } else {
                        size2 = 14;
                        break;
                    }
                case 14:
                    c03266v = c03266v;
                    int i3 = c03266v.A02;
                    int size9 = c03266v.A01;
                    if (i3 + size9 <= i) {
                        size2 = 17;
                        break;
                    } else {
                        size2 = 15;
                        break;
                    }
                case 15:
                    i = -1;
                    size2 = 16;
                    break;
                case 16:
                    return i;
                case 17:
                    c03266v = c03266v;
                    int size10 = c03266v.A01;
                    i -= size10;
                    size2 = 4;
                    break;
            }
        }
    }

    public final void A0F() {
        C03286x c03286x = this;
        int size = c03286x.A06.size();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= size) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    c03286x.A02.A5D(c03286x.A06.get(i));
                    i++;
                    i2 = 2;
                    break;
                case 4:
                    C03286x c03286x2 = c03286x;
                    c03286x2.A0B(c03286x2.A06);
                    c03286x2.A00 = 0;
                    return;
            }
        }
    }

    public final void A0G() {
        C03286x c03286x = this;
        C03266v c03266v = null;
        c03286x.A0F();
        int size = c03286x.A05.size();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= size) {
                        i2 = 11;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    c03266v = c03286x.A05.get(i);
                    switch (c03266v.A00) {
                        case 1:
                            i2 = 10;
                            break;
                        case 2:
                            i2 = 9;
                            break;
                        case 3:
                            i2 = 4;
                            break;
                        case 4:
                            i2 = 8;
                            break;
                        case 5:
                            i2 = 4;
                            break;
                        case 6:
                            i2 = 4;
                            break;
                        case 7:
                            i2 = 4;
                            break;
                        case 8:
                            i2 = 7;
                            break;
                        default:
                            i2 = 4;
                            break;
                    }
                case 4:
                    c03286x = c03286x;
                    if (c03286x.A04 == null) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 5:
                    c03286x = c03286x;
                    c03286x.A04.run();
                    i2 = 6;
                    break;
                case 6:
                    i++;
                    i2 = 2;
                    break;
                case 7:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A5D(c03266v);
                    c03286x.A02.A4g(c03266v.A02, c03266v.A01);
                    i2 = 4;
                    break;
                case 8:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A5D(c03266v);
                    c03286x.A02.A4c(c03266v.A02, c03266v.A01, c03266v.A03);
                    i2 = 4;
                    break;
                case 9:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A5D(c03266v);
                    InterfaceC03256u interfaceC03256u = c03286x.A02;
                    int i3 = c03266v.A02;
                    int i4 = c03266v.A01;
                    interfaceC03256u.A4h(i3, i4);
                    i2 = 4;
                    break;
                case 10:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A02.A5D(c03266v);
                    c03286x.A02.A4f(c03266v.A02, c03266v.A01);
                    i2 = 4;
                    break;
                case 11:
                    C03286x c03286x2 = c03286x;
                    c03286x2.A0B(c03286x2.A05);
                    c03286x2.A00 = 0;
                    return;
            }
        }
    }

    public final void A0H() {
        C03286x c03286x = this;
        C03266v c03266v = null;
        c03286x.A03.A05(c03286x.A05);
        int size = c03286x.A05.size();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= size) {
                        i2 = 11;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c03286x = c03286x;
                    c03266v = c03286x.A05.get(i);
                    switch (c03266v.A00) {
                        case 1:
                            i2 = 10;
                            break;
                        case 2:
                            i2 = 9;
                            break;
                        case 3:
                            i2 = 4;
                            break;
                        case 4:
                            i2 = 8;
                            break;
                        case 5:
                            i2 = 4;
                            break;
                        case 6:
                            i2 = 4;
                            break;
                        case 7:
                            i2 = 4;
                            break;
                        case 8:
                            i2 = 7;
                            break;
                        default:
                            i2 = 4;
                            break;
                    }
                case 4:
                    c03286x = c03286x;
                    if (c03286x.A04 == null) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 5:
                    c03286x = c03286x;
                    c03286x.A04.run();
                    i2 = 6;
                    break;
                case 6:
                    i++;
                    i2 = 2;
                    break;
                case 7:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A05(c03266v);
                    i2 = 4;
                    break;
                case 8:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A07(c03266v);
                    i2 = 4;
                    break;
                case 9:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A06(c03266v);
                    i2 = 4;
                    break;
                case 10:
                    c03286x = c03286x;
                    c03266v = c03266v;
                    c03286x.A04(c03266v);
                    i2 = 4;
                    break;
                case 11:
                    c03286x.A05.clear();
                    return;
            }
        }
    }

    public final void A0I() {
        A0B(this.A05);
        A0B(this.A06);
        this.A00 = 0;
    }

    public final boolean A0J() {
        boolean z = false;
        char c = this.A05.size() > 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0K() {
        C03286x c03286x = this;
        boolean z = false;
        char c = !c03286x.A06.isEmpty() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c03286x = c03286x;
                    if (!c03286x.A05.isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final boolean A0L(int i) {
        boolean z = false;
        char c = (this.A00 & i) != 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03276w
    public final C03266v A4e(int i, int i2, int i3, Object obj) {
        C03266v c03266vA2T = this.A01.A2T();
        char c = c03266vA2T == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    obj = obj;
                    c03266vA2T = new C03266v(i, i2, i3, obj);
                    c = 3;
                    break;
                case 3:
                    return c03266vA2T;
                case 4:
                    obj = obj;
                    c03266vA2T = c03266vA2T;
                    c03266vA2T.A00 = i;
                    c03266vA2T.A02 = i2;
                    c03266vA2T.A01 = i3;
                    c03266vA2T.A03 = obj;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03276w
    public final void A6n(C03266v c03266v) {
        if (!this.A07) {
            c03266v.A03 = null;
            this.A01.A6p(c03266v);
        }
    }
}
