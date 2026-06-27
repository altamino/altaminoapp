package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.facebook.ads.internal.androidx.support.v7.widget.LinearLayoutManager$SavedState;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7P, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C7P extends C7N implements C7O {
    private static byte[] A0F;
    public int A00;
    public int A01;
    public int A02;
    public LinearLayoutManager$SavedState A03;
    public C7Z A04;
    public boolean A05;
    private int A06;
    private C7T A07;
    private boolean A08;
    private boolean A09;
    private boolean A0A;
    private boolean A0B;
    private boolean A0C;
    public final C7R A0D;
    private final C7S A0E;

    static {
        A0S();
    }

    private static String A0Q(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0S() {
        A0F = new byte[]{8, 13, 21, 0, 11, 8, 3, -65, 14, 17, 8, 4, 13, 19, 0, 19, 8, 14, 13, -39};
    }

    public C7P(Context context) {
        this(context, 1, false);
    }

    public C7P(Context context, int i, boolean z) {
        this.A0A = false;
        this.A05 = false;
        this.A0C = false;
        this.A0B = true;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A03 = null;
        this.A0D = new C7R(this);
        this.A0E = new C7S();
        this.A06 = 2;
        A2J(i);
        A0e(z);
        A1a(true);
    }

    private final int A02(int consumed, AnonymousClass85 anonymousClass85, C8D c8d) {
        C7P c7p = this;
        int iA05 = 0;
        int i = 0;
        int iAbs = 0;
        int i2 = 0;
        char c = c7p.A0Z() != 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (consumed != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return i2;
                case 4:
                    c7p = c7p;
                    c7p.A07.A0B = true;
                    c7p.A2I();
                    if (consumed <= 0) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i = 1;
                    c = 6;
                    break;
                case 6:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    i2 = 0;
                    iAbs = Math.abs(consumed);
                    c7p.A0V(i, iAbs, true, c8d);
                    iA05 = c7p.A07.A07 + c7p.A05(anonymousClass85, c7p.A07, c8d, false);
                    if (iA05 < 0) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (iAbs <= iA05) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    i2 = i * iA05;
                    c = '\t';
                    break;
                case '\t':
                    c7p = c7p;
                    c7p.A04.A0J(-i2);
                    c7p.A07.A04 = i2;
                    c = 3;
                    break;
                case '\n':
                    i2 = consumed;
                    c = '\t';
                    break;
                case 11:
                    i = -1;
                    c = 6;
                    break;
            }
        }
    }

    private int A03(int gap, AnonymousClass85 anonymousClass85, C8D c8d, boolean z) {
        C7P c7p = this;
        int i = 0;
        int iA07 = 0;
        int i2 = 0;
        int i3 = 0;
        int iA072 = c7p.A04.A07() - gap;
        char c = iA072 > 0 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    i2 = -c7p.A02(-iA072, anonymousClass85, c8d);
                    i = gap + i2;
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7p = c7p;
                    iA07 = c7p.A04.A07() - i;
                    if (iA07 <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7p = c7p;
                    c7p.A04.A0J(iA07);
                    i3 = iA07 + i2;
                    c = 5;
                    break;
                case 5:
                    return i3;
                case 6:
                    i3 = i2;
                    c = 5;
                    break;
                case 7:
                    i3 = 0;
                    c = 5;
                    break;
            }
        }
    }

    private int A04(int gap, AnonymousClass85 anonymousClass85, C8D c8d, boolean z) {
        C7P c7p = this;
        int iA0A = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int iA0A2 = gap - c7p.A04.A0A();
        char c = iA0A2 > 0 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    i2 = -c7p.A02(iA0A2, anonymousClass85, c8d);
                    i = gap + i2;
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7p = c7p;
                    iA0A = i - c7p.A04.A0A();
                    if (iA0A <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7p = c7p;
                    c7p.A04.A0J(-iA0A);
                    i3 = i2 - iA0A;
                    c = 5;
                    break;
                case 5:
                    return i3;
                case 6:
                    i3 = i2;
                    c = 5;
                    break;
                case 7:
                    i3 = 0;
                    c = 5;
                    break;
            }
        }
    }

    private final int A05(AnonymousClass85 anonymousClass85, C7T c7t, C8D c8d, boolean z) {
        C7P c7p = this;
        int i = 0;
        C7S c7s = null;
        int i2 = c7t.A00;
        char c = c7t.A07 != Integer.MIN_VALUE ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c7t = c7t;
                    if (c7t.A00 >= 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7t = c7t;
                    c7t.A07 += c7t.A00;
                    c = 4;
                    break;
                case 4:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7t = c7t;
                    c7p.A0b(anonymousClass85, c7t);
                    c = 5;
                    break;
                case 5:
                    c7p = c7p;
                    c7t = c7t;
                    i = c7t.A00 + c7t.A02;
                    c7s = c7p.A0E;
                    c = 6;
                    break;
                case 6:
                    c7t = c7t;
                    if (!c7t.A09) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    if (i <= 0) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7t = c7t;
                    c8d = c8d;
                    if (!c7t.A05(c8d)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7t = c7t;
                    c8d = c8d;
                    c7s = c7s;
                    c7s.A00();
                    c7p.A2M(anonymousClass85, c8d, c7t, c7s);
                    if (!c7s.A01) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    return i2 - c7t.A00;
                case 11:
                    c7t = c7t;
                    c7s = c7s;
                    c7t.A06 += c7s.A00 * c7t.A05;
                    if (!c7s.A03) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c7p = c7p;
                    if (c7p.A07.A08 != null) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c8d = c8d;
                    if (!c8d.A07()) {
                        c = 14;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 14:
                    c7t = c7t;
                    c7s = c7s;
                    c7t.A00 -= c7s.A00;
                    i -= c7s.A00;
                    c = 15;
                    break;
                case 15:
                    c7t = c7t;
                    if (c7t.A07 == Integer.MIN_VALUE) {
                        c = 19;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c7t = c7t;
                    c7s = c7s;
                    c7t.A07 += c7s.A00;
                    if (c7t.A00 >= 0) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c7t = c7t;
                    c7t.A07 += c7t.A00;
                    c = 18;
                    break;
                case 18:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7t = c7t;
                    c7p.A0b(anonymousClass85, c7t);
                    c = 19;
                    break;
                case 19:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c7s = c7s;
                    if (!c7s.A02) {
                        c = 6;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
            }
        }
    }

    private int A06(C8D c8d) {
        if (A0Z() == 0) {
            return 0;
        }
        A2I();
        return C8K.A00(c8d, this.A04, A0O(!this.A0B, true), A0N(this.A0B ? false : true, true), this, this.A0B);
    }

    private int A07(C8D c8d) {
        if (A0Z() == 0) {
            return 0;
        }
        A2I();
        return C8K.A02(c8d, this.A04, A0O(!this.A0B, true), A0N(this.A0B ? false : true, true), this, this.A0B, this.A05);
    }

    private int A08(C8D c8d) {
        if (A0Z() == 0) {
            return 0;
        }
        A2I();
        return C8K.A01(c8d, this.A04, A0O(!this.A0B, true), A0N(this.A0B ? false : true, true), this, this.A0B);
    }

    private final int A09(C8D c8d) {
        C7P c7p = this;
        int iA0B = 0;
        char c = c8d.A06() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    iA0B = c7p.A04.A0B();
                    c = 3;
                    break;
                case 3:
                    return iA0B;
                case 4:
                    iA0B = 0;
                    c = 3;
                    break;
            }
        }
    }

    private View A0A() {
        C7P c7p = this;
        int iA0Z = 0;
        char c = c7p.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA0Z = 0;
                    c = 3;
                    break;
                case 3:
                    return c7p.A0w(iA0Z);
                case 4:
                    c7p = c7p;
                    iA0Z = c7p.A0Z() - 1;
                    c = 3;
                    break;
            }
        }
    }

    private View A0B() {
        C7P c7p = this;
        int iA0Z = 0;
        char c = c7p.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    iA0Z = c7p.A0Z() - 1;
                    c = 3;
                    break;
                case 3:
                    return c7p.A0w(iA0Z);
                case 4:
                    iA0Z = 0;
                    c = 3;
                    break;
            }
        }
    }

    private final View A0C(int next, int i) {
        C7P c7p = this;
        char c = 0;
        int i2 = 0;
        View viewA0w = null;
        int i3 = 0;
        c7p.A2I();
        char c2 = i > next ? (char) 2 : '\f';
        while (true) {
            switch (c2) {
                case 2:
                    c = 1;
                    c2 = 3;
                    break;
                case 3:
                    if (c != 0) {
                        c2 = 6;
                        break;
                    } else {
                        c2 = 4;
                        break;
                    }
                case 4:
                    c7p = c7p;
                    viewA0w = c7p.A0w(next);
                    c2 = 5;
                    break;
                case 5:
                    return viewA0w;
                case 6:
                    c7p = c7p;
                    if (c7p.A04.A0F(c7p.A0w(next)) >= c7p.A04.A0A()) {
                        c2 = '\n';
                        break;
                    } else {
                        c2 = 7;
                        break;
                    }
                case 7:
                    i3 = 16644;
                    i2 = 16388;
                    c2 = '\b';
                    break;
                case '\b':
                    c7p = c7p;
                    if (c7p.A00 != 0) {
                        c2 = 11;
                        break;
                    } else {
                        c2 = '\t';
                        break;
                    }
                case '\t':
                    c7p = c7p;
                    viewA0w = ((C7N) c7p).A04.A00(next, i, i3, i2);
                    c2 = 5;
                    break;
                case '\n':
                    i3 = 4161;
                    i2 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
                    c2 = '\b';
                    break;
                case 11:
                    c7p = c7p;
                    viewA0w = ((C7N) c7p).A05.A00(next, i, i3, i2);
                    c2 = 5;
                    break;
                case '\f':
                    if (i >= next) {
                        c2 = 14;
                        break;
                    } else {
                        c2 = '\r';
                        break;
                    }
                case '\r':
                    c = 65535;
                    c2 = 3;
                    break;
                case 14:
                    c = 0;
                    c2 = 3;
                    break;
            }
        }
    }

    private final View A0D(int preferredBoundsFlag, int i, boolean z, boolean z2) {
        C7P c7p = this;
        int i2 = 0;
        View viewA00 = null;
        c7p.A2I();
        int i3 = 0;
        char c = z ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    i2 = 24579;
                    c = 3;
                    break;
                case 3:
                    if (!z2) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i3 = 320;
                    c = 5;
                    break;
                case 5:
                    c7p = c7p;
                    if (c7p.A00 != 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7p = c7p;
                    viewA00 = ((C7N) c7p).A04.A00(preferredBoundsFlag, i, i2, i3);
                    c = 7;
                    break;
                case 7:
                    return viewA00;
                case '\b':
                    c7p = c7p;
                    viewA00 = ((C7N) c7p).A05.A00(preferredBoundsFlag, i, i2, i3);
                    c = 7;
                    break;
                case '\t':
                    i2 = 320;
                    c = 3;
                    break;
            }
        }
    }

    private View A0E(AnonymousClass85 anonymousClass85, C8D c8d) {
        return A0C(0, A0Z());
    }

    private View A0F(AnonymousClass85 anonymousClass85, C8D c8d) {
        return A2H(anonymousClass85, c8d, 0, A0Z(), c8d.A03());
    }

    private View A0G(AnonymousClass85 anonymousClass85, C8D c8d) {
        return A0C(A0Z() - 1, -1);
    }

    private View A0H(AnonymousClass85 anonymousClass85, C8D c8d) {
        return A2H(anonymousClass85, c8d, A0Z() - 1, -1, c8d.A03());
    }

    private View A0J(AnonymousClass85 anonymousClass85, C8D c8d) {
        C7P c7p = this;
        View viewA0G = null;
        char c = c7p.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0G = c7p.A0E(anonymousClass85, c8d);
                    c = 3;
                    break;
                case 3:
                    return viewA0G;
                case 4:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0G = c7p.A0G(anonymousClass85, c8d);
                    c = 3;
                    break;
            }
        }
    }

    private View A0K(AnonymousClass85 anonymousClass85, C8D c8d) {
        C7P c7p = this;
        View viewA0G = null;
        char c = c7p.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0G = c7p.A0G(anonymousClass85, c8d);
                    c = 3;
                    break;
                case 3:
                    return viewA0G;
                case 4:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0G = c7p.A0E(anonymousClass85, c8d);
                    c = 3;
                    break;
            }
        }
    }

    private View A0L(AnonymousClass85 anonymousClass85, C8D c8d) {
        C7P c7p = this;
        View viewA0F = null;
        char c = c7p.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0F = c7p.A0F(anonymousClass85, c8d);
                    c = 3;
                    break;
                case 3:
                    return viewA0F;
                case 4:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0F = c7p.A0H(anonymousClass85, c8d);
                    c = 3;
                    break;
            }
        }
    }

    private View A0M(AnonymousClass85 anonymousClass85, C8D c8d) {
        C7P c7p = this;
        View viewA0H = null;
        char c = c7p.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0H = c7p.A0H(anonymousClass85, c8d);
                    c = 3;
                    break;
                case 3:
                    return viewA0H;
                case 4:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0H = c7p.A0F(anonymousClass85, c8d);
                    c = 3;
                    break;
            }
        }
    }

    private View A0N(boolean z, boolean z2) {
        C7P c7p = this;
        View viewA0D = null;
        char c = c7p.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    viewA0D = c7p.A0D(0, c7p.A0Z(), z, z2);
                    c = 3;
                    break;
                case 3:
                    return viewA0D;
                case 4:
                    c7p = c7p;
                    viewA0D = c7p.A0D(c7p.A0Z() - 1, -1, z, z2);
                    c = 3;
                    break;
            }
        }
    }

    private View A0O(boolean z, boolean z2) {
        C7P c7p = this;
        View viewA0D = null;
        char c = c7p.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    viewA0D = c7p.A0D(c7p.A0Z() - 1, -1, z, z2);
                    c = 3;
                    break;
                case 3:
                    return viewA0D;
                case 4:
                    c7p = c7p;
                    viewA0D = c7p.A0D(0, c7p.A0Z(), z, z2);
                    c = 3;
                    break;
            }
        }
    }

    private final C7T A0P() {
        return new C7T();
    }

    private void A0R() {
        C7P c7p = this;
        boolean z = true;
        char c = c7p.A00 != 1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    if (!c7p.A2O()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    c7p = c7p;
                    c7p.A05 = c7p.A0A;
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c7p = c7p;
                    if (!c7p.A0A) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    c7p = c7p;
                    c7p.A05 = z;
                    c = 4;
                    break;
                case 7:
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    private void A0T(int i, int i2) {
        int i3 = 0;
        this.A07.A00 = this.A04.A07() - i2;
        C7T c7t = this.A07;
        char c = this.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i3 = -1;
                    c = 3;
                    break;
                case 3:
                    C7P c7p = this;
                    c7t.A03 = i3;
                    c7p.A07.A01 = i;
                    c7p.A07.A05 = 1;
                    c7p.A07.A06 = i2;
                    c7p.A07.A07 = Integer.MIN_VALUE;
                    return;
                case 4:
                    i3 = 1;
                    c = 3;
                    break;
            }
        }
    }

    private void A0U(int i, int i2) {
        int i3 = 0;
        this.A07.A00 = i2 - this.A04.A0A();
        this.A07.A01 = i;
        C7T c7t = this.A07;
        char c = this.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i3 = 1;
                    c = 3;
                    break;
                case 3:
                    C7P c7p = this;
                    c7t.A03 = i3;
                    c7p.A07.A05 = -1;
                    c7p.A07.A06 = i2;
                    c7p.A07.A07 = Integer.MIN_VALUE;
                    return;
                case 4:
                    i3 = -1;
                    c = 3;
                    break;
            }
        }
    }

    private void A0V(int i, int i2, boolean z, C8D c8d) {
        C7P c7p = this;
        C7T c7t = null;
        View viewA0B = null;
        View viewA0A = null;
        C7T c7t2 = null;
        int iA0C = 0;
        int i3 = -1;
        int i4 = 1;
        c7p.A07.A09 = c7p.A0f();
        c7p.A07.A02 = c7p.A09(c8d);
        c7p.A07.A05 = i;
        char c = i == 1 ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    c7p.A07.A02 += c7p.A04.A08();
                    viewA0A = c7p.A0A();
                    c7t2 = c7p.A07;
                    if (!c7p.A05) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7p = c7p;
                    viewA0A = viewA0A;
                    c7t2 = c7t2;
                    c7t2.A03 = i3;
                    c7p.A07.A01 = c7p.A0s(viewA0A) + c7p.A07.A03;
                    c7p.A07.A06 = c7p.A04.A0C(viewA0A);
                    iA0C = c7p.A04.A0C(viewA0A) - c7p.A04.A07();
                    c = 4;
                    break;
                case 4:
                    c7p = c7p;
                    c7p.A07.A00 = i2;
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7p = c7p;
                    c7p.A07.A00 -= iA0C;
                    c = 6;
                    break;
                case 6:
                    c7p.A07.A07 = iA0C;
                    return;
                case 7:
                    i3 = i4;
                    c = 3;
                    break;
                case '\b':
                    c7p = c7p;
                    viewA0B = c7p.A0B();
                    c7p.A07.A02 += c7p.A04.A0A();
                    c7t = c7p.A07;
                    if (!c7p.A05) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7p = c7p;
                    viewA0B = viewA0B;
                    c7t = c7t;
                    c7t.A03 = i4;
                    c7p.A07.A01 = c7p.A0s(viewA0B) + c7p.A07.A03;
                    c7p.A07.A06 = c7p.A04.A0F(viewA0B);
                    iA0C = (-c7p.A04.A0F(viewA0B)) + c7p.A04.A0A();
                    c = 4;
                    break;
                case '\n':
                    i4 = i3;
                    c = '\t';
                    break;
            }
        }
    }

    private void A0W(C7R c7r) {
        A0T(c7r.A01, c7r.A00);
    }

    private void A0X(C7R c7r) {
        A0U(c7r.A01, c7r.A00);
    }

    private void A0Y(AnonymousClass85 anonymousClass85, int i) {
        C7P c7p = this;
        int i2 = 0;
        int iA06 = 0;
        View viewA0w = null;
        int i3 = 0;
        View viewA0w2 = null;
        int iA0Z = c7p.A0Z();
        int limit = i < 0 ? 2 : 3;
        while (true) {
            switch (limit) {
                case 2:
                    return;
                case 3:
                    c7p = c7p;
                    iA06 = c7p.A04.A06() - i;
                    if (!c7p.A05) {
                        limit = 10;
                        break;
                    } else {
                        limit = 4;
                        break;
                    }
                case 4:
                    i2 = 0;
                    limit = 5;
                    break;
                case 5:
                    if (i2 >= iA0Z) {
                        limit = 2;
                        break;
                    } else {
                        limit = 6;
                        break;
                    }
                case 6:
                    c7p = c7p;
                    viewA0w = c7p.A0w(i2);
                    if (c7p.A04.A0F(viewA0w) < iA06) {
                        limit = 8;
                        break;
                    } else {
                        limit = 7;
                        break;
                    }
                case 7:
                    c7p = c7p;
                    viewA0w = viewA0w;
                    int limit2 = c7p.A04.A0H(viewA0w);
                    if (limit2 >= iA06) {
                        limit = 9;
                        break;
                    } else {
                        limit = 8;
                        break;
                    }
                case 8:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7p.A0a(anonymousClass85, 0, i2);
                    limit = 2;
                    break;
                case 9:
                    i2++;
                    limit = 5;
                    break;
                case 10:
                    i3 = iA0Z - 1;
                    limit = 11;
                    break;
                case 11:
                    if (i3 < 0) {
                        limit = 2;
                        break;
                    } else {
                        limit = 12;
                        break;
                    }
                case 12:
                    c7p = c7p;
                    viewA0w2 = c7p.A0w(i3);
                    if (c7p.A04.A0F(viewA0w2) < iA06) {
                        limit = 14;
                        break;
                    } else {
                        limit = 13;
                        break;
                    }
                case 13:
                    c7p = c7p;
                    viewA0w2 = viewA0w2;
                    int limit3 = c7p.A04.A0H(viewA0w2);
                    if (limit3 >= iA06) {
                        limit = 15;
                        break;
                    } else {
                        limit = 14;
                        break;
                    }
                case 14:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7p.A0a(anonymousClass85, iA0Z - 1, i3);
                    limit = 2;
                    break;
                case 15:
                    i3--;
                    limit = 11;
                    break;
            }
        }
    }

    private void A0Z(AnonymousClass85 anonymousClass85, int i) {
        C7P c7p = this;
        int limit = 0;
        int iA0Z = 0;
        int i2 = 0;
        int i3 = 0;
        View viewA0w = null;
        View viewA0w2 = null;
        char c = i < 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c7p = c7p;
                    i3 = i;
                    iA0Z = c7p.A0Z();
                    if (!c7p.A05) {
                        c = '\n';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i2 = iA0Z - 1;
                    c = 5;
                    break;
                case 5:
                    if (i2 < 0) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7p = c7p;
                    viewA0w2 = c7p.A0w(i2);
                    if (c7p.A04.A0C(viewA0w2) > i3) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c7p = c7p;
                    viewA0w2 = viewA0w2;
                    if (c7p.A04.A0G(viewA0w2) <= i3) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7p.A0a(anonymousClass85, iA0Z - 1, i2);
                    c = 2;
                    break;
                case '\t':
                    i2--;
                    c = 5;
                    break;
                case '\n':
                    limit = 0;
                    c = 11;
                    break;
                case 11:
                    if (limit >= iA0Z) {
                        c = 2;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c7p = c7p;
                    viewA0w = c7p.A0w(limit);
                    if (c7p.A04.A0C(viewA0w) > i3) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c7p = c7p;
                    viewA0w = viewA0w;
                    if (c7p.A04.A0G(viewA0w) <= i3) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7p.A0a(anonymousClass85, 0, limit);
                    c = 2;
                    break;
                case 15:
                    limit++;
                    c = 11;
                    break;
            }
        }
    }

    private void A0a(AnonymousClass85 anonymousClass85, int i, int i2) {
        C7P c7p = this;
        int i3 = 0;
        int i4 = 0;
        char c = i == i2 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    if (i2 <= i) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i3 = i2 - 1;
                    c = 5;
                    break;
                case 5:
                    if (i3 < i) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7p.A18(i3, anonymousClass85);
                    i3--;
                    c = 5;
                    break;
                case 7:
                    i4 = i;
                    c = '\b';
                    break;
                case '\b':
                    if (i4 <= i2) {
                        c = 2;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7p.A18(i4, anonymousClass85);
                    i4--;
                    c = '\b';
                    break;
            }
        }
    }

    private void A0b(AnonymousClass85 anonymousClass85, C7T c7t) {
        C7P c7p = this;
        char c = c7t.A0B ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7t = c7t;
                    if (!c7t.A09) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c7t = c7t;
                    if (c7t.A05 != -1) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7t = c7t;
                    c7p.A0Y(anonymousClass85, c7t.A07);
                    c = 3;
                    break;
                case 6:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c7t = c7t;
                    c7p.A0Z(anonymousClass85, c7t.A07);
                    c = 3;
                    break;
            }
        }
    }

    private void A0c(AnonymousClass85 anonymousClass85, C8D c8d, int i, int i2) {
        C7P c7p = this;
        List<C8G> listA0J = null;
        int scrapExtraEnd = 0;
        char c = 0;
        int i3 = 0;
        int scrapSize = 0;
        C8G c8g = null;
        boolean z = false;
        int iA0D = 0;
        int iA0D2 = 0;
        char c2 = c8d.A08() ? (char) 2 : (char) 5;
        while (true) {
            switch (c2) {
                case 2:
                    c7p = c7p;
                    if (c7p.A0Z() == 0) {
                        c2 = 5;
                        break;
                    } else {
                        c2 = 3;
                        break;
                    }
                case 3:
                    c8d = c8d;
                    if (!c8d.A07()) {
                        c2 = 4;
                        break;
                    } else {
                        c2 = 5;
                        break;
                    }
                case 4:
                    c7p = c7p;
                    if (!c7p.A2B()) {
                        c2 = 5;
                        break;
                    } else {
                        c2 = 6;
                        break;
                    }
                case 5:
                    return;
                case 6:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    iA0D = 0;
                    iA0D2 = 0;
                    listA0J = anonymousClass85.A0J();
                    scrapExtraEnd = listA0J.size();
                    scrapSize = c7p.A0s(c7p.A0w(0));
                    i3 = 0;
                    c2 = 7;
                    break;
                case 7:
                    if (i3 >= scrapExtraEnd) {
                        c2 = 19;
                        break;
                    } else {
                        c2 = '\b';
                        break;
                    }
                case '\b':
                    listA0J = listA0J;
                    c8g = listA0J.get(i3);
                    if (!c8g.A0c()) {
                        c2 = '\n';
                        break;
                    } else {
                        c2 = '\t';
                        break;
                    }
                case '\t':
                    i3++;
                    c2 = 7;
                    break;
                case '\n':
                    c8g = c8g;
                    if (c8g.A0I() >= scrapSize) {
                        c2 = 17;
                        break;
                    } else {
                        c2 = 11;
                        break;
                    }
                case 11:
                    z = true;
                    c2 = '\f';
                    break;
                case '\f':
                    c7p = c7p;
                    if (z == c7p.A05) {
                        c2 = 16;
                        break;
                    } else {
                        c2 = '\r';
                        break;
                    }
                case '\r':
                    c = 65535;
                    c2 = 14;
                    break;
                case 14:
                    if (c != 65535) {
                        c2 = 18;
                        break;
                    } else {
                        c2 = 15;
                        break;
                    }
                case 15:
                    c7p = c7p;
                    c8g = c8g;
                    iA0D += c7p.A04.A0D(c8g.A0H);
                    c2 = '\t';
                    break;
                case 16:
                    c = 1;
                    c2 = 14;
                    break;
                case 17:
                    z = false;
                    c2 = '\f';
                    break;
                case 18:
                    c7p = c7p;
                    c8g = c8g;
                    iA0D2 += c7p.A04.A0D(c8g.A0H);
                    c2 = '\t';
                    break;
                case 19:
                    c7p = c7p;
                    listA0J = listA0J;
                    c7p.A07.A08 = listA0J;
                    if (iA0D <= 0) {
                        c2 = 21;
                        break;
                    } else {
                        c2 = 20;
                        break;
                    }
                case 20:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    c7p.A0U(c7p.A0s(c7p.A0B()), i);
                    c7p.A07.A02 = iA0D;
                    c7p.A07.A00 = 0;
                    c7p.A07.A04();
                    c7p.A05(anonymousClass85, c7p.A07, c8d, false);
                    c2 = 21;
                    break;
                case 21:
                    if (iA0D2 <= 0) {
                        c2 = 23;
                        break;
                    } else {
                        c2 = 22;
                        break;
                    }
                case 22:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    c7p.A0T(c7p.A0s(c7p.A0A()), i2);
                    c7p.A07.A02 = iA0D2;
                    c7p.A07.A00 = 0;
                    c7p.A07.A04();
                    c7p.A05(anonymousClass85, c7p.A07, c8d, false);
                    c2 = 23;
                    break;
                case 23:
                    c7p = c7p;
                    c7p.A07.A08 = null;
                    c2 = 5;
                    break;
            }
        }
    }

    private void A0d(AnonymousClass85 anonymousClass85, C8D c8d, C7R c7r) {
        C7P c7p = this;
        int iA03 = 0;
        char c = c7p.A0h(c8d, c7r) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    c7r = c7r;
                    if (!c7p.A0g(anonymousClass85, c8d, c7r)) {
                        c = 4;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 4:
                    c7p = c7p;
                    c7r = c7r;
                    c7r.A02();
                    if (!c7p.A0C) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8d = c8d;
                    iA03 = c8d.A03() - 1;
                    c = 6;
                    break;
                case 6:
                    c7r = c7r;
                    c7r.A01 = iA03;
                    c = 2;
                    break;
                case 7:
                    iA03 = 0;
                    c = 6;
                    break;
            }
        }
    }

    private final void A0e(boolean z) {
        A27(null);
        if (z == this.A0A) {
            return;
        }
        this.A0A = z;
        A11();
    }

    private final boolean A0f() {
        C7P c7p = this;
        boolean z = false;
        char c = c7p.A04.A09() == 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    if (c7p.A04.A06() != 0) {
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

    private boolean A0g(AnonymousClass85 anonymousClass85, C8D c8d, C7R c7r) {
        C7P c7p = this;
        View viewA0v = null;
        int iA07 = 0;
        View viewA0L = null;
        boolean z = false;
        boolean z2 = false;
        char c = c7p.A0Z() == 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z2;
                case 3:
                    c7p = c7p;
                    viewA0v = c7p.A0v();
                    if (viewA0v == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8d = c8d;
                    c7r = c7r;
                    viewA0v = viewA0v;
                    if (!c7r.A06(viewA0v, c8d)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7r = c7r;
                    viewA0v = viewA0v;
                    c7r.A05(viewA0v);
                    z2 = true;
                    c = 2;
                    break;
                case 6:
                    c7p = c7p;
                    if (c7p.A08 != c7p.A0C) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c7r = c7r;
                    if (!c7r.A02) {
                        c = 22;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0L = c7p.A0L(anonymousClass85, c8d);
                    c = '\t';
                    break;
                case '\t':
                    viewA0L = viewA0L;
                    if (viewA0L == null) {
                        c = 2;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8d = c8d;
                    c7r = c7r;
                    viewA0L = viewA0L;
                    c7r.A04(viewA0L);
                    if (!c8d.A07()) {
                        c = 11;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 11:
                    c7p = c7p;
                    if (!c7p.A2B()) {
                        c = 19;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c7p = c7p;
                    viewA0L = viewA0L;
                    if (c7p.A04.A0F(viewA0L) >= c7p.A04.A07()) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c7p = c7p;
                    viewA0L = viewA0L;
                    if (c7p.A04.A0C(viewA0L) >= c7p.A04.A0A()) {
                        c = 21;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    z = true;
                    c = 15;
                    break;
                case 15:
                    if (!z) {
                        c = 19;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c7r = c7r;
                    if (!c7r.A02) {
                        c = 20;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c7p = c7p;
                    iA07 = c7p.A04.A07();
                    c = 18;
                    break;
                case 18:
                    c7r = c7r;
                    c7r.A00 = iA07;
                    c = 19;
                    break;
                case 19:
                    z2 = true;
                    c = 2;
                    break;
                case 20:
                    c7p = c7p;
                    iA07 = c7p.A04.A0A();
                    c = 18;
                    break;
                case 21:
                    z2 = false;
                    z = false;
                    c = 15;
                    break;
                case 22:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0L = c7p.A0M(anonymousClass85, c8d);
                    c = '\t';
                    break;
            }
        }
    }

    private boolean A0h(C8D c8d, C7R c7r) {
        C7P c7p = this;
        int iA0F = 0;
        boolean z = false;
        View viewA1v = null;
        boolean z2 = false;
        boolean z3 = true;
        int startGap = !c8d.A07() ? 2 : 3;
        while (true) {
            switch (startGap) {
                case 2:
                    c7p = c7p;
                    int startGap2 = c7p.A01;
                    if (startGap2 != -1) {
                        startGap = 5;
                        break;
                    } else {
                        startGap = 3;
                        break;
                    }
                case 3:
                    z2 = false;
                    z3 = false;
                    startGap = 4;
                    break;
                case 4:
                    return z3;
                case 5:
                    c7p = c7p;
                    int startGap3 = c7p.A01;
                    if (startGap3 < 0) {
                        startGap = 7;
                        break;
                    } else {
                        startGap = 6;
                        break;
                    }
                case 6:
                    c7p = c7p;
                    c8d = c8d;
                    int i = c7p.A01;
                    int startGap4 = c8d.A03();
                    if (i < startGap4) {
                        startGap = 8;
                        break;
                    } else {
                        startGap = 7;
                        break;
                    }
                case 7:
                    c7p = c7p;
                    z2 = false;
                    c7p.A01 = -1;
                    c7p.A02 = Integer.MIN_VALUE;
                    z3 = false;
                    startGap = 4;
                    break;
                case 8:
                    c7p = c7p;
                    c7r = c7r;
                    int startGap5 = c7p.A01;
                    c7r.A01 = startGap5;
                    if (c7p.A03 == null) {
                        startGap = 13;
                        break;
                    } else {
                        startGap = 9;
                        break;
                    }
                case 9:
                    c7p = c7p;
                    if (!c7p.A03.A01()) {
                        startGap = 13;
                        break;
                    } else {
                        startGap = 10;
                        break;
                    }
                case 10:
                    c7p = c7p;
                    c7r = c7r;
                    c7r.A02 = c7p.A03.A02;
                    if (!c7r.A02) {
                        startGap = 12;
                        break;
                    } else {
                        startGap = 11;
                        break;
                    }
                case 11:
                    c7p = c7p;
                    c7r = c7r;
                    int iA07 = c7p.A04.A07();
                    int startGap6 = c7p.A03.A00;
                    c7r.A00 = iA07 - startGap6;
                    startGap = 4;
                    break;
                case 12:
                    c7p = c7p;
                    c7r = c7r;
                    c7r.A00 = c7p.A04.A0A() + c7p.A03.A00;
                    startGap = 4;
                    break;
                case 13:
                    c7p = c7p;
                    int startGap7 = c7p.A02;
                    if (startGap7 != Integer.MIN_VALUE) {
                        startGap = 33;
                        break;
                    } else {
                        startGap = 14;
                        break;
                    }
                case 14:
                    c7p = c7p;
                    viewA1v = c7p.A1v(c7p.A01);
                    if (viewA1v == null) {
                        startGap = 25;
                        break;
                    } else {
                        startGap = 15;
                        break;
                    }
                case 15:
                    c7p = c7p;
                    viewA1v = viewA1v;
                    int iA0D = c7p.A04.A0D(viewA1v);
                    int startGap8 = c7p.A04.A0B();
                    if (iA0D <= startGap8) {
                        startGap = 17;
                        break;
                    } else {
                        startGap = 16;
                        break;
                    }
                case 16:
                    c7r = c7r;
                    c7r.A02();
                    startGap = 4;
                    break;
                case 17:
                    c7p = c7p;
                    viewA1v = viewA1v;
                    if (c7p.A04.A0F(viewA1v) - c7p.A04.A0A() >= 0) {
                        startGap = 19;
                        break;
                    } else {
                        startGap = 18;
                        break;
                    }
                case 18:
                    c7p = c7p;
                    c7r = c7r;
                    z2 = false;
                    int startGap9 = c7p.A04.A0A();
                    c7r.A00 = startGap9;
                    c7r.A02 = false;
                    startGap = 4;
                    break;
                case 19:
                    c7p = c7p;
                    viewA1v = viewA1v;
                    int iA072 = c7p.A04.A07();
                    int startGap10 = c7p.A04.A0C(viewA1v);
                    if (iA072 - startGap10 >= 0) {
                        startGap = 21;
                        break;
                    } else {
                        startGap = 20;
                        break;
                    }
                case 20:
                    c7p = c7p;
                    c7r = c7r;
                    int startGap11 = c7p.A04.A07();
                    c7r.A00 = startGap11;
                    c7r.A02 = z3;
                    startGap = 4;
                    break;
                case 21:
                    c7r = c7r;
                    if (!c7r.A02) {
                        startGap = 24;
                        break;
                    } else {
                        startGap = 22;
                        break;
                    }
                case 22:
                    c7p = c7p;
                    viewA1v = viewA1v;
                    int iA0C = c7p.A04.A0C(viewA1v);
                    int startGap12 = c7p.A04.A05();
                    iA0F = iA0C + startGap12;
                    startGap = 23;
                    break;
                case 23:
                    c7r = c7r;
                    c7r.A00 = iA0F;
                    startGap = 4;
                    break;
                case 24:
                    c7p = c7p;
                    viewA1v = viewA1v;
                    iA0F = c7p.A04.A0F(viewA1v);
                    startGap = 23;
                    break;
                case 25:
                    c7p = c7p;
                    if (c7p.A0Z() <= 0) {
                        startGap = 31;
                        break;
                    } else {
                        startGap = 26;
                        break;
                    }
                case 26:
                    c7p = c7p;
                    z2 = false;
                    if (c7p.A01 >= c7p.A0s(c7p.A0w(0))) {
                        startGap = 32;
                        break;
                    } else {
                        startGap = 27;
                        break;
                    }
                case 27:
                    z = z3;
                    startGap = 28;
                    break;
                case 28:
                    c7p = c7p;
                    if (z != c7p.A05) {
                        startGap = 30;
                        break;
                    } else {
                        startGap = 29;
                        break;
                    }
                case 29:
                    z2 = z3;
                    startGap = 30;
                    break;
                case 30:
                    c7r = c7r;
                    c7r.A02 = z2;
                    startGap = 31;
                    break;
                case 31:
                    c7r = c7r;
                    c7r.A02();
                    startGap = 4;
                    break;
                case 32:
                    z = z2;
                    startGap = 28;
                    break;
                case 33:
                    c7p = c7p;
                    c7r = c7r;
                    c7r.A02 = c7p.A05;
                    if (!c7p.A05) {
                        startGap = 35;
                        break;
                    } else {
                        startGap = 34;
                        break;
                    }
                case 34:
                    c7p = c7p;
                    c7r = c7r;
                    c7r.A00 = c7p.A04.A07() - c7p.A02;
                    startGap = 4;
                    break;
                case 35:
                    c7p = c7p;
                    c7r = c7r;
                    c7r.A00 = c7p.A04.A0A() + c7p.A02;
                    startGap = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public int A1m(int i, AnonymousClass85 anonymousClass85, C8D c8d) {
        C7P c7p = this;
        int iA02 = 0;
        char c = c7p.A00 == 1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA02 = 0;
                    c = 3;
                    break;
                case 3:
                    return iA02;
                case 4:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    iA02 = c7p.A02(i, anonymousClass85, c8d);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public int A1n(int i, AnonymousClass85 anonymousClass85, C8D c8d) {
        C7P c7p = this;
        int iA02 = 0;
        char c = c7p.A00 == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA02 = 0;
                    c = 3;
                    break;
                case 3:
                    return iA02;
                case 4:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    iA02 = c7p.A02(i, anonymousClass85, c8d);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final int A1o(C8D c8d) {
        return A06(c8d);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final int A1p(C8D c8d) {
        return A07(c8d);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final int A1q(C8D c8d) {
        return A08(c8d);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final int A1r(C8D c8d) {
        return A06(c8d);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final int A1s(C8D c8d) {
        return A07(c8d);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final int A1t(C8D c8d) {
        return A08(c8d);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final Parcelable A1u() {
        C7P c7p = this;
        LinearLayoutManager$SavedState state = null;
        char c = c7p.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    state = new LinearLayoutManager$SavedState(c7p.A03);
                    c = 3;
                    break;
                case 3:
                    return state;
                case 4:
                    c7p = c7p;
                    state = new LinearLayoutManager$SavedState();
                    if (c7p.A0Z() <= 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7p = c7p;
                    state = state;
                    c7p.A2I();
                    boolean z = c7p.A08 ^ c7p.A05;
                    state.A02 = z;
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7p = c7p;
                    state = state;
                    View viewA0A = c7p.A0A();
                    state.A00 = c7p.A04.A07() - c7p.A04.A0C(viewA0A);
                    state.A01 = c7p.A0s(viewA0A);
                    c = 3;
                    break;
                case 7:
                    c7p = c7p;
                    state = state;
                    View viewA0B = c7p.A0B();
                    state.A01 = c7p.A0s(viewA0B);
                    state.A00 = c7p.A04.A0F(viewA0B) - c7p.A04.A0A();
                    c = 3;
                    break;
                case '\b':
                    state = state;
                    state.A00();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final View A1v(int childCount) {
        C7P c7p = this;
        View viewA0w = null;
        int iA0s = 0;
        int iA0Z = c7p.A0Z();
        char c = iA0Z == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewA0w = null;
                    c = 3;
                    break;
                case 3:
                    return viewA0w;
                case 4:
                    c7p = c7p;
                    iA0s = childCount - c7p.A0s(c7p.A0w(0));
                    if (iA0s < 0) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    if (iA0s >= iA0Z) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7p = c7p;
                    viewA0w = c7p.A0w(iA0s);
                    if (c7p.A0s(viewA0w) == childCount) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c7p = c7p;
                    viewA0w = super.A1v(childCount);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public View A1w(View view, int i, AnonymousClass85 anonymousClass85, C8D c8d) {
        C7P c7p = this;
        View viewA0A = null;
        int iA2G = 0;
        View viewA0K = null;
        c7p.A0R();
        char c = c7p.A0Z() == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewA0A = null;
                    c = 3;
                    break;
                case 3:
                    return viewA0A;
                case 4:
                    c7p = c7p;
                    iA2G = c7p.A2G(i);
                    if (iA2G != Integer.MIN_VALUE) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    viewA0A = null;
                    c = 3;
                    break;
                case 6:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    c7p.A2I();
                    c7p.A2I();
                    c7p.A0V(iA2G, (int) (0.33333334f * c7p.A04.A0B()), false, c8d);
                    c7p.A07.A07 = Integer.MIN_VALUE;
                    c7p.A07.A0B = false;
                    c7p.A05(anonymousClass85, c7p.A07, c8d, true);
                    if (iA2G != -1) {
                        c = 14;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0K = c7p.A0K(anonymousClass85, c8d);
                    c = '\b';
                    break;
                case '\b':
                    if (iA2G != -1) {
                        c = '\r';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7p = c7p;
                    viewA0A = c7p.A0B();
                    c = '\n';
                    break;
                case '\n':
                    viewA0A = viewA0A;
                    if (!viewA0A.hasFocusable()) {
                        c = 15;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    viewA0K = viewA0K;
                    if (viewA0K != null) {
                        c = 3;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    viewA0A = null;
                    c = 3;
                    break;
                case '\r':
                    c7p = c7p;
                    viewA0A = c7p.A0A();
                    c = '\n';
                    break;
                case 14:
                    c7p = c7p;
                    anonymousClass85 = anonymousClass85;
                    c8d = c8d;
                    viewA0K = c7p.A0J(anonymousClass85, c8d);
                    c = '\b';
                    break;
                case 15:
                    viewA0K = viewA0K;
                    viewA0A = viewA0K;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public C7L A1x() {
        return new C7L(-2, -2);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public void A1y(int i) {
        this.A01 = i;
        this.A02 = Integer.MIN_VALUE;
        if (this.A03 != null) {
            this.A03.A00();
        }
        A11();
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final void A1z(int i, int i2, C8D c8d, C7F c7f) {
        C7P c7p = this;
        int i3 = 0;
        int i4 = 0;
        char c = c7p.A00 == 0 ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    i3 = i;
                    c = 3;
                    break;
                case 3:
                    c7p = c7p;
                    if (c7p.A0Z() == 0) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (i3 != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    return;
                case 6:
                    c7p = c7p;
                    c7p.A2I();
                    if (i3 <= 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    i4 = 1;
                    c = '\b';
                    break;
                case '\b':
                    c7p = c7p;
                    c8d = c8d;
                    c7f = c7f;
                    c7p.A0V(i4, Math.abs(i3), true, c8d);
                    c7p.A2N(c8d, c7p.A07, c7f);
                    c = 5;
                    break;
                case '\t':
                    i4 = -1;
                    c = '\b';
                    break;
                case '\n':
                    i3 = i2;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final void A20(int i, C7F c7f) {
        C7P c7p = this;
        boolean z = false;
        int targetPos = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = -1;
        char c = c7p.A03 != null ? (char) 2 : (char) 11;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    if (!c7p.A03.A01()) {
                        c = 11;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7p = c7p;
                    z = c7p.A03.A02;
                    targetPos = c7p.A03.A01;
                    c = 4;
                    break;
                case 4:
                    if (!z) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i3 = targetPos;
                    i2 = 0;
                    c = 6;
                    break;
                case 6:
                    c7p = c7p;
                    if (i2 >= c7p.A06) {
                        c = 16;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (i3 < 0) {
                        c = 16;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (i3 >= i) {
                        c = 16;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7f = c7f;
                    c7f.A2X(i3, i4);
                    i3 += i5;
                    i2++;
                    c = 6;
                    break;
                case '\n':
                    i5 = 1;
                    c = 5;
                    break;
                case 11:
                    c7p = c7p;
                    c7p.A0R();
                    z = c7p.A05;
                    if (c7p.A01 != i5) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    if (!z) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    targetPos = i - 1;
                    c = 4;
                    break;
                case 14:
                    i4 = 0;
                    targetPos = 0;
                    c = 4;
                    break;
                case 15:
                    c7p = c7p;
                    targetPos = c7p.A01;
                    c = 4;
                    break;
                case 16:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final void A21(Parcelable parcelable) {
        if (parcelable instanceof LinearLayoutManager$SavedState) {
            this.A03 = (LinearLayoutManager$SavedState) parcelable;
            A11();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final void A22(AccessibilityEvent accessibilityEvent) {
        super.A22(accessibilityEvent);
        if (A0Z() > 0) {
            accessibilityEvent.setFromIndex(A2D());
            accessibilityEvent.setToIndex(A2E());
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public void A23(AnonymousClass85 anonymousClass85, C8D c8d) {
        C8D c8d2 = c8d;
        AnonymousClass85 anonymousClass852 = anonymousClass85;
        C7P c7p = this;
        int iA09 = 0;
        View viewA0v = null;
        int endOffset = 0;
        int i = 0;
        int extra = 0;
        int extraForEnd = 0;
        int extraForStart = 0;
        int firstElement = 0;
        View viewA1v = null;
        int iA0A = 0;
        int lastElement = 0;
        int startOffset = 0;
        int upcomingOffset = 0;
        char c = c7p.A03 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    if (c7p.A01 == -1) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8d2 = c8d2;
                    if (c8d2.A03() != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c7p.A1N(anonymousClass852);
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c7p = c7p;
                    if (c7p.A03 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c7p = c7p;
                    if (!c7p.A03.A01()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7p = c7p;
                    c7p.A01 = c7p.A03.A01;
                    c = '\t';
                    break;
                case '\t':
                    c7p = c7p;
                    c7p.A2I();
                    c7p.A07.A0B = false;
                    c7p.A0R();
                    viewA0v = c7p.A0v();
                    if (!c7p.A0D.A03) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c7p = c7p;
                    if (c7p.A01 != -1) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c7p = c7p;
                    if (c7p.A03 == null) {
                        c = '2';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    c7p.A0D.A03();
                    c7p.A0D.A02 = c7p.A05 ^ c7p.A0C;
                    c7p.A0d(anonymousClass852, c8d2, c7p.A0D);
                    c7p.A0D.A03 = true;
                    c = '\r';
                    break;
                case '\r':
                    c7p = c7p;
                    c8d2 = c8d2;
                    iA09 = c7p.A09(c8d2);
                    if (c7p.A07.A04 < 0) {
                        c = '1';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    extra = iA09;
                    i = 0;
                    c = 15;
                    break;
                case 15:
                    c7p = c7p;
                    c8d2 = c8d2;
                    iA0A = i + c7p.A04.A0A();
                    extraForStart = extra + c7p.A04.A08();
                    if (!c8d2.A07()) {
                        c = 23;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c7p = c7p;
                    if (c7p.A01 == -1) {
                        c = 23;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c7p = c7p;
                    if (c7p.A02 == Integer.MIN_VALUE) {
                        c = 23;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c7p = c7p;
                    viewA1v = c7p.A1v(c7p.A01);
                    if (viewA1v == null) {
                        c = 23;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c7p = c7p;
                    if (!c7p.A05) {
                        c = '0';
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c7p = c7p;
                    viewA1v = viewA1v;
                    int endOffset2 = c7p.A04.A07();
                    endOffset = (endOffset2 - c7p.A04.A0C(viewA1v)) - c7p.A02;
                    c = 21;
                    break;
                case 21:
                    if (endOffset <= 0) {
                        c = '/';
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    iA0A += endOffset;
                    c = 23;
                    break;
                case 23:
                    c7p = c7p;
                    if (!c7p.A0D.A02) {
                        c = ',';
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c7p = c7p;
                    if (!c7p.A05) {
                        c = '+';
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    firstElement = 1;
                    c = 26;
                    break;
                case 26:
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    c7p.A2L(anonymousClass852, c8d2, c7p.A0D, firstElement);
                    c7p.A1M(anonymousClass852);
                    c7p.A07.A09 = c7p.A0f();
                    c7p.A07.A0A = c8d2.A07();
                    if (!c7p.A0D.A02) {
                        c = '\'';
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    c7p.A0X(c7p.A0D);
                    c7p.A07.A02 = iA0A;
                    c7p.A05(anonymousClass852, c7p.A07, c8d2, false);
                    lastElement = c7p.A07.A06;
                    startOffset = c7p.A07.A01;
                    if (c7p.A07.A00 <= 0) {
                        c = 29;
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    c7p = c7p;
                    extraForStart += c7p.A07.A00;
                    c = 29;
                    break;
                case 29:
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    c7p.A0W(c7p.A0D);
                    c7p.A07.A02 = extraForStart;
                    c7p.A07.A01 += c7p.A07.A03;
                    c7p.A05(anonymousClass852, c7p.A07, c8d2, false);
                    extraForEnd = c7p.A07.A06;
                    if (c7p.A07.A00 <= 0) {
                        c = 31;
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    int i2 = c7p.A07.A00;
                    c7p.A0U(startOffset, lastElement);
                    c7p.A07.A02 = i2;
                    c7p.A05(anonymousClass852, c7p.A07, c8d2, false);
                    lastElement = c7p.A07.A06;
                    c = 31;
                    break;
                case 31:
                    c7p = c7p;
                    if (c7p.A0Z() <= 0) {
                        c = '\"';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    c7p = c7p;
                    if (!(c7p.A05 ^ c7p.A0C)) {
                        c = '&';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    int iA03 = c7p.A03(extraForEnd, anonymousClass852, c8d2, true);
                    int lastElement2 = lastElement + iA03;
                    int extraForEnd2 = extraForEnd + iA03;
                    int iA04 = c7p.A04(lastElement2, anonymousClass852, c8d2, false);
                    lastElement = lastElement2 + iA04;
                    extraForEnd = extraForEnd2 + iA04;
                    c = '\"';
                    break;
                case '\"':
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    c7p.A0c(anonymousClass852, c8d2, lastElement, extraForEnd);
                    if (!c8d2.A07()) {
                        c = '#';
                        break;
                    } else {
                        c = '%';
                        break;
                    }
                case '#':
                    c7p = c7p;
                    c7p.A04.A0I();
                    c = '$';
                    break;
                case '$':
                    c7p = c7p;
                    c7p.A08 = c7p.A0C;
                    c = 5;
                    break;
                case '%':
                    c7p = c7p;
                    c7p.A0D.A03();
                    c = '$';
                    break;
                case '&':
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    int iA042 = c7p.A04(lastElement, anonymousClass852, c8d2, true);
                    int i3 = lastElement + iA042;
                    int extraForEnd3 = extraForEnd + iA042;
                    int iA032 = c7p.A03(extraForEnd3, anonymousClass852, c8d2, false);
                    lastElement = i3 + iA032;
                    extraForEnd = extraForEnd3 + iA032;
                    c = '\"';
                    break;
                case '\'':
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    c7p.A0W(c7p.A0D);
                    c7p.A07.A02 = extraForStart;
                    c7p.A05(anonymousClass852, c7p.A07, c8d2, false);
                    extraForEnd = c7p.A07.A06;
                    upcomingOffset = c7p.A07.A01;
                    if (c7p.A07.A00 <= 0) {
                        c = ')';
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case '(':
                    c7p = c7p;
                    iA0A += c7p.A07.A00;
                    c = ')';
                    break;
                case ')':
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    c7p.A0X(c7p.A0D);
                    c7p.A07.A02 = iA0A;
                    c7p.A07.A01 += c7p.A07.A03;
                    c7p.A05(anonymousClass852, c7p.A07, c8d2, false);
                    lastElement = c7p.A07.A06;
                    if (c7p.A07.A00 <= 0) {
                        c = 31;
                        break;
                    } else {
                        c = '*';
                        break;
                    }
                case '*':
                    c7p = c7p;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    int i4 = c7p.A07.A00;
                    c7p.A0T(upcomingOffset, extraForEnd);
                    c7p.A07.A02 = i4;
                    c7p.A05(anonymousClass852, c7p.A07, c8d2, false);
                    extraForEnd = c7p.A07.A06;
                    c = 31;
                    break;
                case '+':
                    firstElement = -1;
                    c = 26;
                    break;
                case ',':
                    c7p = c7p;
                    if (!c7p.A05) {
                        c = '.';
                        break;
                    } else {
                        c = '-';
                        break;
                    }
                case '-':
                    firstElement = -1;
                    c = 26;
                    break;
                case '.':
                    firstElement = 1;
                    c = 26;
                    break;
                case '/':
                    extraForStart -= endOffset;
                    c = 23;
                    break;
                case '0':
                    c7p = c7p;
                    viewA1v = viewA1v;
                    int iA0F = c7p.A04.A0F(viewA1v) - c7p.A04.A0A();
                    int endOffset3 = c7p.A02;
                    endOffset = endOffset3 - iA0F;
                    c = 21;
                    break;
                case '1':
                    i = iA09;
                    extra = 0;
                    c = 15;
                    break;
                case '2':
                    viewA0v = viewA0v;
                    if (viewA0v == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '3';
                        break;
                    }
                case '3':
                    c7p = c7p;
                    viewA0v = viewA0v;
                    if (c7p.A04.A0F(viewA0v) >= c7p.A04.A07()) {
                        c = '5';
                        break;
                    } else {
                        c = '4';
                        break;
                    }
                case '4':
                    c7p = c7p;
                    viewA0v = viewA0v;
                    if (c7p.A04.A0C(viewA0v) > c7p.A04.A0A()) {
                        c = '\r';
                        break;
                    } else {
                        c = '5';
                        break;
                    }
                case '5':
                    c7p = c7p;
                    viewA0v = viewA0v;
                    c7p.A0D.A05(viewA0v);
                    c = '\r';
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public void A24(C8D c8d) {
        super.A24(c8d);
        this.A03 = null;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A0D.A03();
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final void A25(C8H c8h, AnonymousClass85 anonymousClass85) {
        super.A25(c8h, anonymousClass85);
        if (this.A09) {
            A1N(anonymousClass85);
            anonymousClass85.A0P();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public void A26(C8H c8h, C8D c8d, int i) {
        C7X c7x = new C7X(c8h.getContext());
        c7x.A0A(i);
        A1Q(c7x);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final void A27(String str) {
        if (this.A03 == null) {
            super.A27(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final boolean A28() {
        C7P c7p = this;
        boolean z = false;
        char c = c7p.A0b() != 1073741824 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    if (c7p.A0l() == 1073741824) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7p = c7p;
                    if (!c7p.A1b()) {
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

    @Override // com.facebook.ads.redexgen.X.C7N
    public final boolean A29() {
        boolean z = false;
        char c = this.A00 == 0 ? (char) 2 : (char) 4;
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

    @Override // com.facebook.ads.redexgen.X.C7N
    public final boolean A2A() {
        return this.A00 == 1;
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public boolean A2B() {
        C7P c7p = this;
        boolean z = false;
        char c = c7p.A03 == null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    if (c7p.A08 != c7p.A0C) {
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

    public final int A2C() {
        C7P c7p = this;
        int iA0s = 0;
        View viewA0D = c7p.A0D(0, c7p.A0Z(), true, false);
        char c = viewA0D == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA0s = -1;
                    c = 3;
                    break;
                case 3:
                    return iA0s;
                case 4:
                    c7p = c7p;
                    viewA0D = viewA0D;
                    iA0s = c7p.A0s(viewA0D);
                    c = 3;
                    break;
            }
        }
    }

    public final int A2D() {
        C7P c7p = this;
        int iA0s = 0;
        View viewA0D = c7p.A0D(0, c7p.A0Z(), false, true);
        char c = viewA0D == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA0s = -1;
                    c = 3;
                    break;
                case 3:
                    return iA0s;
                case 4:
                    c7p = c7p;
                    viewA0D = viewA0D;
                    iA0s = c7p.A0s(viewA0D);
                    c = 3;
                    break;
            }
        }
    }

    public final int A2E() {
        View viewA0D = A0D(A0Z() - 1, -1, false, true);
        if (viewA0D == null) {
            return -1;
        }
        return A0s(viewA0D);
    }

    public final int A2F() {
        return this.A00;
    }

    public final int A2G(int i) {
        char c;
        C7P c7p = this;
        int i2 = -1;
        int i3 = Integer.MIN_VALUE;
        int i4 = 1;
        switch (i) {
            case 1:
                c = 18;
                break;
            case 2:
                c = 14;
                break;
            case 17:
                c = 7;
                break;
            case 33:
                c = '\f';
                break;
            case 66:
                c = 4;
                break;
            case 130:
                c = '\t';
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    i2 = i3;
                    c = 3;
                    break;
                case 3:
                    return i2;
                case 4:
                    c7p = c7p;
                    if (c7p.A00 != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i2 = i4;
                    c = 3;
                    break;
                case 6:
                    i4 = i3;
                    c = 5;
                    break;
                case 7:
                    c7p = c7p;
                    if (c7p.A00 == 0) {
                        c = 3;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    i2 = i3;
                    c = 3;
                    break;
                case '\t':
                    c7p = c7p;
                    if (c7p.A00 != i4) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    i3 = i4;
                    c = 11;
                    break;
                case 11:
                    i2 = i3;
                    c = 3;
                    break;
                case '\f':
                    c7p = c7p;
                    if (c7p.A00 == i4) {
                        c = 3;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    i2 = i3;
                    c = 3;
                    break;
                case 14:
                    c7p = c7p;
                    if (c7p.A00 != i4) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    i2 = i4;
                    c = 3;
                    break;
                case 16:
                    c7p = c7p;
                    if (!c7p.A2O()) {
                        c = 17;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 17:
                    i2 = i4;
                    c = 3;
                    break;
                case 18:
                    c7p = c7p;
                    if (c7p.A00 == i4) {
                        c = 3;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c7p = c7p;
                    if (!c7p.A2O()) {
                        c = 3;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    i2 = i4;
                    c = 3;
                    break;
            }
        }
    }

    public View A2H(AnonymousClass85 anonymousClass85, C8D c8d, int i, int i2, int i3) {
        C7P c7p = this;
        View view = null;
        int i4 = 0;
        int iA0s = 0;
        int i5 = 0;
        c7p.A2I();
        View view2 = null;
        View view3 = null;
        int iA0A = c7p.A04.A0A();
        int iA07 = c7p.A04.A07();
        char c = i2 > i ? (char) 2 : (char) 15;
        while (true) {
            switch (c) {
                case 2:
                    i5 = 1;
                    c = 3;
                    break;
                case 3:
                    i4 = i;
                    c = 4;
                    break;
                case 4:
                    if (i4 == i2) {
                        c = 16;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7p = c7p;
                    view = c7p.A0w(i4);
                    iA0s = c7p.A0s(view);
                    if (iA0s < 0) {
                        c = '\n';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (iA0s >= i3) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    view = view;
                    if (!((C7L) view.getLayoutParams()).A02()) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (view2 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    view = view;
                    view2 = view;
                    c = '\n';
                    break;
                case '\n':
                    i4 += i5;
                    c = 4;
                    break;
                case 11:
                    c7p = c7p;
                    view = view;
                    if (c7p.A04.A0F(view) >= iA07) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c7p = c7p;
                    view = view;
                    if (c7p.A04.A0C(view) >= iA0A) {
                        c = 18;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    if (view3 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    view = view;
                    view3 = view;
                    c = '\n';
                    break;
                case 15:
                    i5 = -1;
                    c = 3;
                    break;
                case 16:
                    if (view3 == null) {
                        c = 19;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    view = view3;
                    c = 18;
                    break;
                case 18:
                    return view;
                case 19:
                    view3 = view2;
                    c = 17;
                    break;
            }
        }
    }

    public final void A2I() {
        C7P c7p = this;
        char c = c7p.A07 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7p = c7p;
                    c7p.A07 = c7p.A0P();
                    c = 3;
                    break;
                case 3:
                    c7p = c7p;
                    if (c7p.A04 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7p = c7p;
                    c7p.A04 = C7Z.A02(c7p, c7p.A00);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public final void A2J(int i) {
        C7P c7p = this;
        C7Z c7z = null;
        char c = i != 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (i == 1) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new IllegalArgumentException(A0Q(0, 20, 105) + i);
                case 4:
                    c7p = c7p;
                    c7z = null;
                    c7p.A27(null);
                    if (i != c7p.A00) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    return;
                case 6:
                    c7p = c7p;
                    c7p.A00 = i;
                    c7p.A04 = c7z;
                    c7p.A11();
                    c = 5;
                    break;
            }
        }
    }

    public final void A2K(int i, int i2) {
        this.A01 = i;
        this.A02 = i2;
        if (this.A03 != null) {
            this.A03.A00();
        }
        A11();
    }

    public void A2L(AnonymousClass85 anonymousClass85, C8D c8d, C7R c7r, int i) {
    }

    public void A2M(AnonymousClass85 anonymousClass85, C8D c8d, C7T c7t, C7S c7s) {
        C7S c7s2 = c7s;
        C7T c7t2 = c7t;
        C7P c7p = this;
        int iA0j = 0;
        int iA0E = 0;
        boolean z = false;
        boolean z2 = false;
        C7L c7l = null;
        int iA0E2 = 0;
        int iA0h = 0;
        boolean z3 = false;
        boolean z4 = false;
        int i = 0;
        View viewA03 = c7t2.A03(anonymousClass85);
        int bottom = viewA03 == null ? 2 : 4;
        while (true) {
            switch (bottom) {
                case 2:
                    c7s2 = c7s2;
                    c7s2.A01 = true;
                    bottom = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c7t2 = c7t2;
                    viewA03 = viewA03;
                    c7l = (C7L) viewA03.getLayoutParams();
                    if (c7t2.A08 != null) {
                        bottom = 25;
                        break;
                    } else {
                        bottom = 5;
                        break;
                    }
                case 5:
                    c7p = c7p;
                    c7t2 = c7t2;
                    z2 = c7p.A05;
                    if (c7t2.A05 != -1) {
                        bottom = 24;
                        break;
                    } else {
                        bottom = 6;
                        break;
                    }
                case 6:
                    z = true;
                    bottom = 7;
                    break;
                case 7:
                    if (z2 != z) {
                        bottom = 23;
                        break;
                    } else {
                        bottom = 8;
                        break;
                    }
                case 8:
                    c7p = c7p;
                    viewA03 = viewA03;
                    c7p.A1B(viewA03);
                    bottom = 9;
                    break;
                case 9:
                    c7p = c7p;
                    c7s2 = c7s2;
                    viewA03 = viewA03;
                    c7p.A1E(viewA03, i, i);
                    int bottom2 = c7p.A04.A0D(viewA03);
                    c7s2.A00 = bottom2;
                    int bottom3 = c7p.A00;
                    if (bottom3 != 1) {
                        bottom = 20;
                        break;
                    } else {
                        bottom = 10;
                        break;
                    }
                case 10:
                    c7p = c7p;
                    if (!c7p.A2O()) {
                        bottom = 19;
                        break;
                    } else {
                        bottom = 11;
                        break;
                    }
                case 11:
                    c7p = c7p;
                    viewA03 = viewA03;
                    int iA0k = c7p.A0k();
                    int bottom4 = c7p.A0i();
                    iA0E2 = iA0k - bottom4;
                    int bottom5 = c7p.A04.A0E(viewA03);
                    iA0h = iA0E2 - bottom5;
                    bottom = 12;
                    break;
                case 12:
                    c7t2 = c7t2;
                    if (c7t2.A05 != -1) {
                        bottom = 18;
                        break;
                    } else {
                        bottom = 13;
                        break;
                    }
                case 13:
                    c7t2 = c7t2;
                    c7s2 = c7s2;
                    iA0E = c7t2.A06;
                    int i2 = c7t2.A06;
                    int bottom6 = c7s2.A00;
                    iA0j = i2 - bottom6;
                    bottom = 14;
                    break;
                case 14:
                    c7p = c7p;
                    viewA03 = viewA03;
                    c7l = c7l;
                    c7p.A1F(viewA03, iA0h, iA0j, iA0E2, iA0E);
                    if (!c7l.A02()) {
                        bottom = 15;
                        break;
                    } else {
                        bottom = 16;
                        break;
                    }
                case 15:
                    c7l = c7l;
                    if (!c7l.A01()) {
                        bottom = 17;
                        break;
                    } else {
                        bottom = 16;
                        break;
                    }
                case 16:
                    c7s2 = c7s2;
                    c7s2.A03 = true;
                    bottom = 17;
                    break;
                case 17:
                    c7s2 = c7s2;
                    viewA03 = viewA03;
                    c7s2.A02 = viewA03.hasFocusable();
                    bottom = 3;
                    break;
                case 18:
                    c7t2 = c7t2;
                    c7s2 = c7s2;
                    iA0j = c7t2.A06;
                    iA0E = c7t2.A06 + c7s2.A00;
                    bottom = 14;
                    break;
                case 19:
                    c7p = c7p;
                    viewA03 = viewA03;
                    iA0h = c7p.A0h();
                    iA0E2 = iA0h + c7p.A04.A0E(viewA03);
                    bottom = 12;
                    break;
                case 20:
                    c7p = c7p;
                    c7t2 = c7t2;
                    viewA03 = viewA03;
                    iA0j = c7p.A0j();
                    iA0E = iA0j + c7p.A04.A0E(viewA03);
                    if (c7t2.A05 != -1) {
                        bottom = 22;
                        break;
                    } else {
                        bottom = 21;
                        break;
                    }
                case 21:
                    c7t2 = c7t2;
                    c7s2 = c7s2;
                    iA0E2 = c7t2.A06;
                    iA0h = c7t2.A06 - c7s2.A00;
                    bottom = 14;
                    break;
                case 22:
                    c7t2 = c7t2;
                    c7s2 = c7s2;
                    iA0h = c7t2.A06;
                    int i3 = c7t2.A06;
                    int bottom7 = c7s2.A00;
                    iA0E2 = i3 + bottom7;
                    bottom = 14;
                    break;
                case 23:
                    c7p = c7p;
                    viewA03 = viewA03;
                    i = 0;
                    c7p.A1D(viewA03, 0);
                    bottom = 9;
                    break;
                case 24:
                    i = 0;
                    z = false;
                    bottom = 7;
                    break;
                case 25:
                    c7p = c7p;
                    c7t2 = c7t2;
                    z4 = c7p.A05;
                    if (c7t2.A05 != -1) {
                        bottom = 29;
                        break;
                    } else {
                        bottom = 26;
                        break;
                    }
                case 26:
                    z3 = true;
                    bottom = 27;
                    break;
                case 27:
                    if (z4 != z3) {
                        bottom = 30;
                        break;
                    } else {
                        bottom = 28;
                        break;
                    }
                case 28:
                    c7p = c7p;
                    viewA03 = viewA03;
                    c7p.A1A(viewA03);
                    bottom = 9;
                    break;
                case 29:
                    i = 0;
                    z3 = false;
                    bottom = 27;
                    break;
                case 30:
                    c7p = c7p;
                    viewA03 = viewA03;
                    i = 0;
                    c7p.A1C(viewA03, 0);
                    bottom = 9;
                    break;
            }
        }
    }

    public void A2N(C8D c8d, C7T c7t, C7F c7f) {
        int i = c7t.A01;
        char c = i >= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8d = c8d;
                    if (i >= c8d.A03()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7t = c7t;
                    c7f = c7f;
                    c7f.A2X(i, Math.max(0, c7t.A07));
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final boolean A2O() {
        return A0d() == 1;
    }

    @Override // com.facebook.ads.redexgen.X.C7O
    public final PointF A2o(int firstChildPos) {
        C7P c7p = this;
        PointF pointF = null;
        int i = 0;
        boolean z = false;
        char c = c7p.A0Z() == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    pointF = null;
                    c = 3;
                    break;
                case 3:
                    return pointF;
                case 4:
                    c7p = c7p;
                    z = false;
                    if (firstChildPos >= c7p.A0s(c7p.A0w(0))) {
                        c = 6;
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
                    c7p = c7p;
                    if (z == c7p.A05) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    i = -1;
                    c = '\b';
                    break;
                case '\b':
                    c7p = c7p;
                    if (c7p.A00 != 0) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    pointF = new PointF(i, 0.0f);
                    c = 3;
                    break;
                case '\n':
                    i = 1;
                    c = '\b';
                    break;
                case 11:
                    pointF = new PointF(0.0f, i);
                    c = 3;
                    break;
            }
        }
    }
}
