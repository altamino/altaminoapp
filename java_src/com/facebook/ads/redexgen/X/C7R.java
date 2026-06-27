package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7R, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C7R {
    private static byte[] A05;
    public int A00;
    public int A01;
    public boolean A02;
    public boolean A03;
    public final /* synthetic */ C7P A04;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 24);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A05 = new byte[]{12, 0, 77, 118, 65, 76, 73, 68, 29, 64, 76, 1, 47, 3, 3, 30, 8, 5, 2, 13, 24, 9, 81, 111, 99, 46, 15, 34, 58, 44, 54, 55, 5, 49, 44, 46, 6, 45, 39, 126, 60, 19, 30, 21, 18, 15, 52, 19, 27, 18, 6, 16, 45, 18, 14, 20, 9, 20, 18, 19, 64};
    }

    public C7R(C7P c7p) {
        this.A04 = c7p;
        A03();
    }

    public final void A02() {
        C7R c7r = this;
        int iA07 = 0;
        char c = c7r.A02 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7r = c7r;
                    iA07 = c7r.A04.A04.A07();
                    c = 3;
                    break;
                case 3:
                    c7r.A00 = iA07;
                    return;
                case 4:
                    c7r = c7r;
                    iA07 = c7r.A04.A04.A0A();
                    c = 3;
                    break;
            }
        }
    }

    public final void A03() {
        this.A01 = -1;
        this.A00 = Integer.MIN_VALUE;
        this.A02 = false;
        this.A03 = false;
    }

    public final void A04(View view) {
        C7R c7r = this;
        char c = c7r.A02 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7r = c7r;
                    view = view;
                    c7r.A00 = c7r.A04.A04.A0C(view) + c7r.A04.A04.A05();
                    c = 3;
                    break;
                case 3:
                    C7R c7r2 = c7r;
                    c7r2.A01 = c7r2.A04.A0s(view);
                    return;
                case 4:
                    c7r = c7r;
                    view = view;
                    c7r.A00 = c7r.A04.A04.A0F(view);
                    c = 3;
                    break;
            }
        }
    }

    public final void A05(View view) {
        C7R c7r = this;
        int childSize = 0;
        int childStart = 0;
        int endMargin = 0;
        int endReference = 0;
        int iA07 = 0;
        int spaceChange = c7r.A04.A04.A05();
        int previousLayoutEnd = spaceChange >= 0 ? 2 : 4;
        while (true) {
            switch (previousLayoutEnd) {
                case 2:
                    c7r = c7r;
                    view = view;
                    c7r.A04(view);
                    previousLayoutEnd = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c7r = c7r;
                    view = view;
                    int previousEndMargin = c7r.A04.A0s(view);
                    c7r.A01 = previousEndMargin;
                    if (!c7r.A02) {
                        previousLayoutEnd = 8;
                        break;
                    } else {
                        previousLayoutEnd = 5;
                        break;
                    }
                case 5:
                    c7r = c7r;
                    view = view;
                    int childSize2 = c7r.A04.A04.A07();
                    int prevLayoutEnd = c7r.A04.A04.A0C(view);
                    childSize = (childSize2 - spaceChange) - prevLayoutEnd;
                    int previousEndMargin2 = c7r.A04.A04.A07();
                    c7r.A00 = previousEndMargin2 - childSize;
                    if (childSize <= 0) {
                        previousLayoutEnd = 3;
                        break;
                    } else {
                        previousLayoutEnd = 6;
                        break;
                    }
                case 6:
                    c7r = c7r;
                    view = view;
                    int previousLayoutEnd2 = c7r.A04.A04.A0D(view);
                    int childStart2 = c7r.A00;
                    int childStart3 = childStart2 - previousLayoutEnd2;
                    int iA0A = c7r.A04.A04.A0A();
                    int previousStartMargin = Math.min(c7r.A04.A04.A0F(view) - iA0A, 0);
                    childStart = childStart3 - (iA0A + previousStartMargin);
                    if (childStart >= 0) {
                        previousLayoutEnd = 3;
                        break;
                    } else {
                        previousLayoutEnd = 7;
                        break;
                    }
                case 7:
                    c7r = c7r;
                    int previousLayoutEnd3 = -childStart;
                    c7r.A00 += Math.min(childSize, previousLayoutEnd3);
                    previousLayoutEnd = 3;
                    break;
                case 8:
                    c7r = c7r;
                    view = view;
                    endMargin = c7r.A04.A04.A0F(view);
                    endReference = endMargin - c7r.A04.A04.A0A();
                    c7r.A00 = endMargin;
                    if (endReference <= 0) {
                        previousLayoutEnd = 3;
                        break;
                    } else {
                        previousLayoutEnd = 9;
                        break;
                    }
                case 9:
                    c7r = c7r;
                    view = view;
                    int iA0D = endMargin + c7r.A04.A04.A0D(view);
                    int iA072 = c7r.A04.A04.A07() - spaceChange;
                    int previousLayoutEnd4 = c7r.A04.A04.A0C(view);
                    iA07 = (c7r.A04.A04.A07() - Math.min(0, iA072 - previousLayoutEnd4)) - iA0D;
                    if (iA07 >= 0) {
                        previousLayoutEnd = 3;
                        break;
                    } else {
                        previousLayoutEnd = 10;
                        break;
                    }
                case 10:
                    c7r = c7r;
                    c7r.A00 -= Math.min(endReference, -iA07);
                    previousLayoutEnd = 3;
                    break;
            }
        }
    }

    public final boolean A06(View view, C8D c8d) {
        boolean z = false;
        C7L c7l = (C7L) view.getLayoutParams();
        char c = !c7l.A02() ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c7l = c7l;
                    if (c7l.A00() < 0) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8d = c8d;
                    c7l = c7l;
                    if (c7l.A00() >= c8d.A03()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public final String toString() {
        return A00(40, 21, 101) + this.A01 + A00(9, 14, 116) + this.A00 + A00(23, 17, 91) + this.A02 + A00(0, 9, 56) + this.A03 + '}';
    }
}
