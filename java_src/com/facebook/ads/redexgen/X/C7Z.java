package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7Z, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C7Z {
    private static byte[] A03;
    private int A00;
    public final Rect A01;
    public final C7N A02;

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 35);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A03 = new byte[]{-86, -81, -73, -94, -83, -86, -91, 97, -80, -77, -86, -90, -81, -75, -94, -75, -86, -80, -81};
    }

    public abstract int A06();

    public abstract int A07();

    public abstract int A08();

    public abstract int A09();

    public abstract int A0A();

    public abstract int A0B();

    public abstract int A0C(View view);

    public abstract int A0D(View view);

    public abstract int A0E(View view);

    public abstract int A0F(View view);

    public abstract int A0G(View view);

    public abstract int A0H(View view);

    public abstract void A0J(int i);

    private C7Z(C7N c7n) {
        this.A00 = Integer.MIN_VALUE;
        this.A01 = new Rect();
        this.A02 = c7n;
    }

    public static C7Z A00(final C7N c7n) {
        return new C7Z(c7n) { // from class: com.facebook.ads.redexgen.X.7a
            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A06() {
                return this.A02.A0k();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A07() {
                return this.A02.A0k() - this.A02.A0i();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A08() {
                return this.A02.A0i();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A09() {
                return this.A02.A0l();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0A() {
                return this.A02.A0h();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0B() {
                return (this.A02.A0k() - this.A02.A0h()) - this.A02.A0i();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0C(View view) {
                return this.A02.A0q(view) + ((C7L) view.getLayoutParams()).rightMargin;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0D(View view) {
                C7L c7l = (C7L) view.getLayoutParams();
                return this.A02.A0p(view) + c7l.leftMargin + c7l.rightMargin;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0E(View view) {
                C7L c7l = (C7L) view.getLayoutParams();
                return this.A02.A0o(view) + c7l.topMargin + c7l.bottomMargin;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0F(View view) {
                return this.A02.A0n(view) - ((C7L) view.getLayoutParams()).leftMargin;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0G(View view) {
                this.A02.A1I(view, true, this.A01);
                return this.A01.right;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0H(View view) {
                this.A02.A1I(view, true, this.A01);
                return this.A01.left;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final void A0J(int i) {
                this.A02.A12(i);
            }
        };
    }

    public static C7Z A01(final C7N c7n) {
        return new C7Z(c7n) { // from class: com.facebook.ads.redexgen.X.7b
            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A06() {
                return this.A02.A0a();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A07() {
                return this.A02.A0a() - this.A02.A0g();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A08() {
                return this.A02.A0g();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A09() {
                return this.A02.A0b();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0A() {
                return this.A02.A0j();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0B() {
                return (this.A02.A0a() - this.A02.A0j()) - this.A02.A0g();
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0C(View view) {
                return this.A02.A0m(view) + ((C7L) view.getLayoutParams()).bottomMargin;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0D(View view) {
                C7L c7l = (C7L) view.getLayoutParams();
                return this.A02.A0o(view) + c7l.topMargin + c7l.bottomMargin;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0E(View view) {
                C7L c7l = (C7L) view.getLayoutParams();
                return this.A02.A0p(view) + c7l.leftMargin + c7l.rightMargin;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0F(View view) {
                return this.A02.A0r(view) - ((C7L) view.getLayoutParams()).topMargin;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0G(View view) {
                this.A02.A1I(view, true, this.A01);
                return this.A01.bottom;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final int A0H(View view) {
                this.A02.A1I(view, true, this.A01);
                return this.A01.top;
            }

            @Override // com.facebook.ads.redexgen.X.C7Z
            public final void A0J(int i) {
                this.A02.A13(i);
            }
        };
    }

    public static C7Z A02(C7N c7n, int i) {
        char c;
        C7Z c7zA01 = null;
        switch (i) {
            case 0:
                c = 4;
                break;
            case 1:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A03(0, 19, 30));
                case 3:
                    c7n = c7n;
                    c7zA01 = A01(c7n);
                    c = 5;
                    break;
                case 4:
                    c7n = c7n;
                    c7zA01 = A00(c7n);
                    c = 5;
                    break;
                case 5:
                    return c7zA01;
            }
        }
    }

    public final int A05() {
        C7Z c7z = this;
        int iA0B = 0;
        char c = Integer.MIN_VALUE == c7z.A00 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA0B = 0;
                    c = 3;
                    break;
                case 3:
                    return iA0B;
                case 4:
                    c7z = c7z;
                    iA0B = c7z.A0B() - c7z.A00;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0I() {
        this.A00 = A0B();
    }
}
