package com.facebook.ads.redexgen.X;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7C, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C7C extends C7B {
    public boolean A00 = true;

    public abstract boolean A0U(C8G c8g);

    public abstract boolean A0V(C8G c8g);

    public abstract boolean A0W(C8G c8g, int i, int i2, int i3, int i4);

    public abstract boolean A0X(C8G c8g, C8G c8g2, int i, int i2, int i3, int i4);

    private final void A01(C8G c8g) {
    }

    private final void A02(C8G c8g) {
    }

    private final void A03(C8G c8g) {
    }

    private final void A04(C8G c8g) {
    }

    private final void A05(C8G c8g) {
    }

    private final void A06(C8G c8g) {
    }

    private final void A07(C8G c8g, boolean z) {
    }

    private final void A08(C8G c8g, boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final boolean A0H(@NonNull C8G c8g) {
        boolean z = false;
        char c = this.A00 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    if (!c8g.A0b()) {
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

    @Override // com.facebook.ads.redexgen.X.C7B
    public final boolean A0I(@NonNull C8G c8g, @Nullable C03507t c03507t, @NonNull C03507t c03507t2) {
        C8G c8g2 = c8g;
        C7C c7c = this;
        boolean zA0W = false;
        char c = c03507t != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c03507t = c03507t;
                    c03507t2 = c03507t2;
                    if (c03507t.A01 != c03507t2.A01) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03507t = c03507t;
                    c03507t2 = c03507t2;
                    if (c03507t.A03 == c03507t2.A03) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7c = c7c;
                    c8g2 = c8g2;
                    c03507t = c03507t;
                    c03507t2 = c03507t2;
                    zA0W = c7c.A0W(c8g2, c03507t.A01, c03507t.A03, c03507t2.A01, c03507t2.A03);
                    c = 5;
                    break;
                case 5:
                    return zA0W;
                case 6:
                    c7c = c7c;
                    c8g2 = c8g2;
                    zA0W = c7c.A0U(c8g2);
                    c = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final boolean A0J(@NonNull C8G c8g, @NonNull C03507t c03507t, @Nullable C03507t c03507t2) {
        C8G c8g2 = c8g;
        C7C c7c = this;
        int left = 0;
        boolean zA0W = false;
        int top = 0;
        int i = c03507t.A01;
        int i2 = c03507t.A03;
        View view = c8g2.A0H;
        int newLeft = c03507t2 == null ? 2 : 12;
        while (true) {
            switch (newLeft) {
                case 2:
                    view = view;
                    left = view.getLeft();
                    newLeft = 3;
                    break;
                case 3:
                    c03507t2 = c03507t2;
                    if (c03507t2 != null) {
                        newLeft = 11;
                        break;
                    } else {
                        newLeft = 4;
                        break;
                    }
                case 4:
                    view = view;
                    top = view.getTop();
                    newLeft = 5;
                    break;
                case 5:
                    c8g2 = c8g2;
                    if (!c8g2.A0c()) {
                        newLeft = 6;
                        break;
                    } else {
                        newLeft = 10;
                        break;
                    }
                case 6:
                    if (i != left) {
                        newLeft = 8;
                        break;
                    } else {
                        newLeft = 7;
                        break;
                    }
                case 7:
                    if (i2 == top) {
                        newLeft = 10;
                        break;
                    } else {
                        newLeft = 8;
                        break;
                    }
                case 8:
                    c7c = c7c;
                    c8g2 = c8g2;
                    view = view;
                    int width = view.getWidth() + left;
                    int newLeft2 = view.getHeight();
                    view.layout(left, top, width, newLeft2 + top);
                    zA0W = c7c.A0W(c8g2, i, i2, left, top);
                    newLeft = 9;
                    break;
                case 9:
                    return zA0W;
                case 10:
                    c7c = c7c;
                    c8g2 = c8g2;
                    zA0W = c7c.A0V(c8g2);
                    newLeft = 9;
                    break;
                case 11:
                    c03507t2 = c03507t2;
                    top = c03507t2.A03;
                    newLeft = 5;
                    break;
                case 12:
                    c03507t2 = c03507t2;
                    left = c03507t2.A01;
                    newLeft = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final boolean A0K(@NonNull C8G c8g, @NonNull C03507t c03507t, @NonNull C03507t c03507t2) {
        C8G c8g2 = c8g;
        C7C c7c = this;
        boolean zA0W = false;
        char c = c03507t.A01 == c03507t2.A01 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03507t = c03507t;
                    c03507t2 = c03507t2;
                    if (c03507t.A03 == c03507t2.A03) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7c = c7c;
                    c8g2 = c8g2;
                    c03507t = c03507t;
                    c03507t2 = c03507t2;
                    zA0W = c7c.A0W(c8g2, c03507t.A01, c03507t.A03, c03507t2.A01, c03507t2.A03);
                    c = 4;
                    break;
                case 4:
                    return zA0W;
                case 5:
                    c7c = c7c;
                    c8g2 = c8g2;
                    c7c.A0O(c8g2);
                    zA0W = false;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final boolean A0L(@NonNull C8G c8g, @NonNull C8G c8g2, @NonNull C03507t c03507t, @NonNull C03507t c03507t2) {
        int i = 0;
        int i2 = 0;
        int i3 = c03507t.A01;
        int i4 = c03507t.A03;
        int toLeft = c8g2.A0h() ? 2 : 4;
        while (true) {
            switch (toLeft) {
                case 2:
                    c03507t = c03507t;
                    i = c03507t.A01;
                    i2 = c03507t.A03;
                    toLeft = 3;
                    break;
                case 3:
                    return A0X(c8g, c8g2, i3, i4, i, i2);
                case 4:
                    c03507t2 = c03507t2;
                    i = c03507t2.A01;
                    i2 = c03507t2.A03;
                    toLeft = 3;
                    break;
            }
        }
    }

    public final void A0M(C8G c8g) {
        A01(c8g);
        A0B(c8g);
    }

    public final void A0N(C8G c8g) {
        A02(c8g);
    }

    public final void A0O(C8G c8g) {
        A03(c8g);
        A0B(c8g);
    }

    public final void A0P(C8G c8g) {
        A04(c8g);
    }

    public final void A0Q(C8G c8g) {
        A05(c8g);
        A0B(c8g);
    }

    public final void A0R(C8G c8g) {
        A06(c8g);
    }

    public final void A0S(C8G c8g, boolean z) {
        A07(c8g, z);
        A0B(c8g);
    }

    public final void A0T(C8G c8g, boolean z) {
        A08(c8g, z);
    }
}
