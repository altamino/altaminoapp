package com.facebook.ads.redexgen.X;

import android.graphics.PointF;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7W, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C7W {
    private static byte[] A07;
    private View A01;
    private C7N A02;
    private C8H A03;
    private boolean A04;
    private boolean A05;
    private int A00 = -1;
    private final C8B A06 = new C8B(0, 0);

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_UNKNOWN_HOST);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A07 = new byte[]{1, 20, 18, 40, 18, 27, 20, 33, 5, 24, 20, 38, -33, -16, 2, 2, -12, -13, -81, -2, 5, -12, 1, -81, 3, -16, 1, -10, -12, 3, -81, -1, -2, 2, -8, 3, -8, -2, -3, -81, 6, -9, -8, -5, -12, -81, 2, -4, -2, -2, 3, -9, -81, 2, -14, 1, -2, -5, -5, -8, -3, -10, -67, 31, 68, 76, 55, 66, 63, 58, -10, 74, 55, 72, 61, 59, 74, -10, 70, 69, 73, 63, 74, 63, 69, 68};
    }

    public abstract void A0G();

    public abstract void A0H();

    public abstract void A0I(int i, int i2, C8D c8d, C8B c8b);

    public abstract void A0J(View view, C8D c8d, C8B c8b);

    private final int A00(View view) {
        return this.A03.A15(view);
    }

    private final View A01(int i) {
        return this.A03.A06.A1v(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(int i, int i2) {
        C7W c7w = this;
        C8H c8h = c7w.A03;
        char c = c7w.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7w = c7w;
                    if (c7w.A00 == -1) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    if (c8h != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7w = c7w;
                    c7w.A09();
                    c = 5;
                    break;
                case 5:
                    c7w = c7w;
                    c7w.A04 = false;
                    if (c7w.A01 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7w = c7w;
                    if (c7w.A00(c7w.A01) != c7w.A00) {
                        c = 14;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c7w = c7w;
                    c8h = c8h;
                    c7w.A0J(c7w.A01, c8h.A0s, c7w.A06);
                    c7w.A06.A05(c8h);
                    c7w.A09();
                    c = '\b';
                    break;
                case '\b':
                    c7w = c7w;
                    if (!c7w.A05) {
                        c = '\f';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7w = c7w;
                    c8h = c8h;
                    c7w.A0I(i, i2, c8h.A0s, c7w.A06);
                    boolean zA06 = c7w.A06.A06();
                    c7w.A06.A05(c8h);
                    if (!zA06) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c7w = c7w;
                    if (!c7w.A05) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c7w = c7w;
                    c8h = c8h;
                    c7w.A04 = true;
                    c8h.A08.A07();
                    c = '\f';
                    break;
                case '\f':
                    return;
                case '\r':
                    c7w = c7w;
                    c7w.A09();
                    c = '\f';
                    break;
                case 14:
                    c7w = c7w;
                    Log.e(A02(0, 12, 70), A02(12, 51, 38));
                    c7w.A01 = null;
                    c = '\b';
                    break;
            }
        }
    }

    public final int A06() {
        return this.A03.A06.A0Z();
    }

    public final int A07() {
        return this.A00;
    }

    @Nullable
    public final C7N A08() {
        return this.A02;
    }

    public final void A09() {
        if (!this.A05) {
            return;
        }
        A0H();
        this.A03.A0s.A0F = -1;
        this.A01 = null;
        this.A00 = -1;
        this.A04 = false;
        this.A05 = false;
        this.A02.A0M(this);
        this.A02 = null;
        this.A03 = null;
    }

    public final void A0A(int i) {
        this.A00 = i;
    }

    public final void A0B(PointF pointF) {
        float fSqrt = (float) Math.sqrt((pointF.x * pointF.x) + (pointF.y * pointF.y));
        pointF.x /= fSqrt;
        pointF.y /= fSqrt;
    }

    public final void A0C(View view) {
        if (A00(view) == A07()) {
            this.A01 = view;
        }
    }

    public final void A0D(C8H c8h, C7N c7n) {
        this.A03 = c8h;
        this.A02 = c7n;
        if (this.A00 == -1) {
            throw new IllegalArgumentException(A02(63, 23, 109));
        }
        this.A03.A0s.A0F = this.A00;
        this.A05 = true;
        this.A04 = true;
        this.A01 = A01(A07());
        A0G();
        this.A03.A08.A07();
    }

    public final boolean A0E() {
        return this.A04;
    }

    public final boolean A0F() {
        return this.A05;
    }
}
