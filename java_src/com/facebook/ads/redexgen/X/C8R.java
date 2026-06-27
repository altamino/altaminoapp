package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8R, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C8R {
    private static byte[] A02;

    @VisibleForTesting
    public final AnonymousClass52<C8G, C8Q> A00 = new AnonymousClass52<>();

    @VisibleForTesting
    public final AnonymousClass54<C8G> A01 = new AnonymousClass54<>();

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{-91, -51, -53, -52, 120, -56, -54, -57, -50, -63, -68, -67, 120, -66, -60, -71, -65, 120, -88, -86, -99, 120, -57, -54, 120, -88, -89, -85, -84};
    }

    private C03507t A00(C8G c8g, int i) {
        C8R c8r = this;
        C8Q c8qA0B = null;
        C03507t c03507t = null;
        int iA08 = c8r.A00.A08(c8g);
        char c = iA08 < 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return c03507t;
                case 3:
                    c8r = c8r;
                    c8qA0B = c8r.A00.A0B(iA08);
                    if (c8qA0B == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8qA0B = c8qA0B;
                    if ((c8qA0B.A00 & i) == 0) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8qA0B = c8qA0B;
                    c8qA0B.A00 &= i ^ (-1);
                    if (i != 4) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8qA0B = c8qA0B;
                    c03507t = c8qA0B.A02;
                    c = 7;
                    break;
                case 7:
                    c8qA0B = c8qA0B;
                    if ((c8qA0B.A00 & 12) != 0) {
                        c = 2;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8r = c8r;
                    c8qA0B = c8qA0B;
                    c8r.A00.A0A(iA08);
                    C8Q.A02(c8qA0B);
                    c = 2;
                    break;
                case '\t':
                    if (i != 8) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8qA0B = c8qA0B;
                    c03507t = c8qA0B.A01;
                    c = 7;
                    break;
                case 11:
                    throw new IllegalArgumentException(A01(0, 29, 79));
            }
        }
    }

    @Nullable
    public final C03507t A03(C8G c8g) {
        return A00(c8g, 8);
    }

    @Nullable
    public final C03507t A04(C8G c8g) {
        return A00(c8g, 4);
    }

    public final C8G A05(long j) {
        return this.A01.A08(j);
    }

    public final void A06() {
        this.A00.clear();
        this.A01.A09();
    }

    public final void A07() {
        C8Q.A01();
    }

    public final void A08(long j, C8G c8g) {
        this.A01.A0B(j, c8g);
    }

    public final void A09(C8G c8g) {
        C8Q c8qA00 = this.A00.get(c8g);
        if (c8qA00 == null) {
            c8qA00 = C8Q.A00();
            this.A00.put(c8g, c8qA00);
        }
        c8qA00.A00 |= 1;
    }

    public final void A0A(C8G c8g) {
        C8Q c8q = this.A00.get(c8g);
        if (c8q == null) {
            return;
        }
        c8q.A00 &= -2;
    }

    public final void A0B(C8G c8g) {
        C8R c8r = this;
        C8Q c8qRemove = null;
        int iA06 = c8r.A01.A06() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (iA06 < 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8r = c8r;
                    c8g = c8g;
                    if (c8g != c8r.A01.A07(iA06)) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8r = c8r;
                    c8r.A01.A0A(iA06);
                    c = 5;
                    break;
                case 5:
                    c8r = c8r;
                    c8g = c8g;
                    c8qRemove = c8r.A00.remove(c8g);
                    if (c8qRemove == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8qRemove = c8qRemove;
                    C8Q.A02(c8qRemove);
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    iA06--;
                    c = 2;
                    break;
            }
        }
    }

    public final void A0C(C8G c8g) {
        A0A(c8g);
    }

    public final void A0D(C8G c8g, C03507t c03507t) {
        C8Q c8qA00 = this.A00.get(c8g);
        if (c8qA00 == null) {
            c8qA00 = C8Q.A00();
            this.A00.put(c8g, c8qA00);
        }
        c8qA00.A00 |= 2;
        c8qA00.A02 = c03507t;
    }

    public final void A0E(C8G c8g, C03507t c03507t) {
        C8Q c8qA00 = this.A00.get(c8g);
        if (c8qA00 == null) {
            c8qA00 = C8Q.A00();
            this.A00.put(c8g, c8qA00);
        }
        c8qA00.A01 = c03507t;
        c8qA00.A00 |= 8;
    }

    public final void A0F(C8G c8g, C03507t c03507t) {
        C8Q c8qA00 = this.A00.get(c8g);
        if (c8qA00 == null) {
            c8qA00 = C8Q.A00();
            this.A00.put(c8g, c8qA00);
        }
        c8qA00.A02 = c03507t;
        c8qA00.A00 |= 4;
    }

    public final void A0G(InterfaceC03407j interfaceC03407j) {
        C8R c8r = this;
        C8Q c8qA0A = null;
        C8G c8gA09 = null;
        int size = c8r.A00.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size < 0) {
                        c = 18;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8r = c8r;
                    c8gA09 = c8r.A00.A09(size);
                    c8qA0A = c8r.A00.A0A(size);
                    if ((c8qA0A.A00 & 3) != 3) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    interfaceC03407j = interfaceC03407j;
                    c8gA09 = c8gA09;
                    interfaceC03407j.A7F(c8gA09);
                    c = 5;
                    break;
                case 5:
                    c8qA0A = c8qA0A;
                    C8Q.A02(c8qA0A);
                    size--;
                    c = 2;
                    break;
                case 6:
                    c8qA0A = c8qA0A;
                    if ((c8qA0A.A00 & 1) == 0) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8qA0A = c8qA0A;
                    if (c8qA0A.A02 != null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    interfaceC03407j = interfaceC03407j;
                    c8gA09 = c8gA09;
                    interfaceC03407j.A7F(c8gA09);
                    c = 5;
                    break;
                case '\t':
                    interfaceC03407j = interfaceC03407j;
                    c8gA09 = c8gA09;
                    c8qA0A = c8qA0A;
                    interfaceC03407j.A6f(c8gA09, c8qA0A.A02, c8qA0A.A01);
                    c = 5;
                    break;
                case '\n':
                    c8qA0A = c8qA0A;
                    if ((c8qA0A.A00 & 14) != 14) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    interfaceC03407j = interfaceC03407j;
                    c8gA09 = c8gA09;
                    c8qA0A = c8qA0A;
                    interfaceC03407j.A6d(c8gA09, c8qA0A.A02, c8qA0A.A01);
                    c = 5;
                    break;
                case '\f':
                    c8qA0A = c8qA0A;
                    if ((c8qA0A.A00 & 12) != 12) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    interfaceC03407j = interfaceC03407j;
                    c8gA09 = c8gA09;
                    c8qA0A = c8qA0A;
                    interfaceC03407j.A6h(c8gA09, c8qA0A.A02, c8qA0A.A01);
                    c = 5;
                    break;
                case 14:
                    c8qA0A = c8qA0A;
                    if ((c8qA0A.A00 & 4) == 0) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    interfaceC03407j = interfaceC03407j;
                    c8gA09 = c8gA09;
                    c8qA0A = c8qA0A;
                    interfaceC03407j.A6f(c8gA09, c8qA0A.A02, null);
                    c = 5;
                    break;
                case 16:
                    c8qA0A = c8qA0A;
                    if ((c8qA0A.A00 & 8) == 0) {
                        c = 5;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    interfaceC03407j = interfaceC03407j;
                    c8gA09 = c8gA09;
                    c8qA0A = c8qA0A;
                    interfaceC03407j.A6d(c8gA09, c8qA0A.A02, c8qA0A.A01);
                    c = 5;
                    break;
                case 18:
                    return;
            }
        }
    }

    public final boolean A0H(C8G c8g) {
        boolean z = false;
        C8Q c8q = this.A00.get(c8g);
        char c = c8q != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8q = c8q;
                    if ((c8q.A00 & 1) == 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
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

    public final boolean A0I(C8G c8g) {
        boolean z = false;
        C8Q c8q = this.A00.get(c8g);
        char c = c8q != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8q = c8q;
                    if ((c8q.A00 & 4) == 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
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
}
