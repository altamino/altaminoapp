package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.view.animation.Interpolator;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C8B {
    private static byte[] A07;
    private int A00;
    private int A01;
    private int A02;
    private int A03;
    private int A04;
    private Interpolator A05;
    private boolean A06;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 13);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A07 = new byte[]{19, 35, 50, 47, 44, 44, 96, 36, 53, 50, 33, 52, 41, 47, 46, 96, 45, 53, 51, 52, 96, 34, 37, 96, 33, 96, 48, 47, 51, 41, 52, 41, 54, 37, 96, 46, 53, 45, 34, 37, 50, 123, 76, 74, 80, 74, 69, 76, 91, 127, 64, 76, 94, 18, 61, 123, 34, 52, 46, 123, 43, 41, 52, 45, 50, 63, 62, 123, 58, 53, 123, 50, 53, 47, 62, 41, 43, 52, 55, 58, 47, 52, 41, 119, 123, 34, 52, 46, 123, 54, 46, 40, 47, 123, 40, 62, 47, 123, 58, 123, 43, 52, 40, 50, 47, 50, 45, 62, 123, 63, 46, 41, 58, 47, 50, 52, 53, 57, 7, 5, 5, 30, 2, 74, 57, 9, 24, 5, 6, 6, 74, 11, 9, 30, 3, 5, 4, 74, 3, 25, 74, 8, 15, 3, 4, 13, 74, 31, 26, 14, 11, 30, 15, 14, 74, 30, 5, 5, 74, 12, 24, 15, 27, 31, 15, 4, 30, 6, 19, 68, 74, 39, 11, 1, 15, 74, 25, 31, 24, 15, 74, 19, 5, 31, 74, 11, 24, 15, 74, 4, 5, 30, 74, 9, 2, 11, 4, 13, 3, 4, 13, 74, 3, 30, 74, 31, 4, 6, 15, 25, 25, 74, 4, 15, 9, 15, 25, 25, 11, 24, 19};
    }

    public C8B(int i, int i2) {
        this(i, i2, Integer.MIN_VALUE, null);
    }

    private C8B(int i, int i2, int i3, Interpolator interpolator) {
        this.A04 = -1;
        this.A06 = false;
        this.A00 = 0;
        this.A02 = i;
        this.A03 = i2;
        this.A01 = i3;
        this.A05 = interpolator;
    }

    private void A01() {
        C8B c8b = this;
        char c = c8b.A05 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8b = c8b;
                    if (c8b.A01 >= 1) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new IllegalStateException(A00(53, 64, 86));
                case 4:
                    c8b = c8b;
                    if (c8b.A01 >= 1) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    throw new IllegalStateException(A00(0, 41, 77));
                case 6:
                    return;
            }
        }
    }

    public final void A03(int i) {
        this.A04 = i;
    }

    public final void A04(int i, int i2, int i3, Interpolator interpolator) {
        this.A02 = i;
        this.A03 = i2;
        this.A01 = i3;
        this.A05 = interpolator;
        this.A06 = true;
    }

    public final void A05(C8H c8h) {
        C8B c8b = this;
        char c = c8b.A04 >= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8b = c8b;
                    c8h = c8h;
                    int i = c8b.A04;
                    c8b.A04 = -1;
                    c8h.A1L(i);
                    c8b.A06 = false;
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8b = c8b;
                    if (!c8b.A06) {
                        c = '\r';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8b = c8b;
                    c8b.A01();
                    if (c8b.A05 != null) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8b = c8b;
                    if (c8b.A01 != Integer.MIN_VALUE) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8b = c8b;
                    c8h = c8h;
                    c8h.A08.A0A(c8b.A02, c8b.A03);
                    c = '\b';
                    break;
                case '\b':
                    c8b = c8b;
                    c8b.A00++;
                    if (c8b.A00 <= 10) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    Log.e(A00(41, 12, 36), A00(117, 104, 103));
                    c = '\n';
                    break;
                case '\n':
                    c8b = c8b;
                    c8b.A06 = false;
                    c = 3;
                    break;
                case 11:
                    c8b = c8b;
                    c8h = c8h;
                    c8h.A08.A0B(c8b.A02, c8b.A03, c8b.A01);
                    c = '\b';
                    break;
                case '\f':
                    c8b = c8b;
                    c8h = c8h;
                    c8h.A08.A0C(c8b.A02, c8b.A03, c8b.A01, c8b.A05);
                    c = '\b';
                    break;
                case '\r':
                    c8b = c8b;
                    c8b.A00 = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A06() {
        boolean z = false;
        char c = this.A04 >= 0 ? (char) 2 : (char) 4;
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
}
