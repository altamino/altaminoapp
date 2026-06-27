package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6v, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03266v {
    private static byte[] A04;
    public int A00;
    public int A01;
    public int A02;
    public Object A03;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 46);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A04 = new byte[]{-53, -50, -50, -54, -59, -30, -21, -73, -52, -57, -90, -19, -76, -68, 0, -54, -68, -109, -110, -32, -32};
    }

    public C03266v(int i, int i2, int i3, Object obj) {
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
        this.A03 = obj;
    }

    private final String A00() {
        char c;
        String strA01 = null;
        switch (this.A00) {
            case 1:
                c = 7;
                break;
            case 2:
                c = 6;
                break;
            case 3:
                c = 2;
                break;
            case 4:
                c = 5;
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
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    strA01 = A01(19, 2, 115);
                    c = 3;
                    break;
                case 3:
                    return strA01;
                case 4:
                    strA01 = A01(5, 2, 71);
                    c = 3;
                    break;
                case 5:
                    strA01 = A01(3, 2, 39);
                    c = 3;
                    break;
                case 6:
                    strA01 = A01(8, 2, 44);
                    c = 3;
                    break;
                case 7:
                    strA01 = A01(0, 3, 60);
                    c = 3;
                    break;
            }
        }
    }

    public final boolean equals(Object obj) {
        C03266v op = this;
        C03266v c03266v = null;
        boolean z = true;
        char c = op == obj ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    obj = obj;
                    if (obj == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    op = op;
                    obj = obj;
                    if (op.getClass() == obj.getClass()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = false;
                    c = 2;
                    break;
                case 6:
                    op = op;
                    obj = obj;
                    c03266v = (C03266v) obj;
                    if (op.A00 == c03266v.A00) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = false;
                    c = 2;
                    break;
                case '\b':
                    op = op;
                    if (op.A00 != 8) {
                        c = '\f';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    op = op;
                    if (Math.abs(op.A01 - op.A02) != z) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    op = op;
                    c03266v = c03266v;
                    if (op.A01 != c03266v.A02) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    op = op;
                    c03266v = c03266v;
                    if (op.A02 == c03266v.A01) {
                        c = 2;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    op = op;
                    c03266v = c03266v;
                    if (op.A01 == c03266v.A01) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    z = false;
                    c = 2;
                    break;
                case 14:
                    op = op;
                    c03266v = c03266v;
                    if (op.A02 == c03266v.A02) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    z = false;
                    c = 2;
                    break;
                case 16:
                    op = op;
                    if (op.A03 == null) {
                        c = 19;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    op = op;
                    c03266v = c03266v;
                    if (!op.A03.equals(c03266v.A03)) {
                        c = 18;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 18:
                    z = false;
                    c = 2;
                    break;
                case 19:
                    c03266v = c03266v;
                    if (c03266v.A03 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    z = false;
                    c = 2;
                    break;
            }
        }
    }

    public final int hashCode() {
        return (((this.A00 * 31) + this.A02) * 31) + this.A01;
    }

    public final String toString() {
        return Integer.toHexString(System.identityHashCode(this)) + A01(7, 1, 46) + A00() + A01(10, 3, 76) + this.A02 + A01(16, 2, 43) + this.A01 + A01(13, 3, 98) + this.A03 + A01(18, 1, 7);
    }
}
