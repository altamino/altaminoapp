package com.facebook.ads.redexgen.X;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewParent;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5Q, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C5Q {
    private ViewParent A00;
    private ViewParent A01;
    private boolean A02;
    private int[] A03;
    private final View A04;

    public C5Q(@NonNull View view) {
        this.A04 = view;
    }

    private ViewParent A00(int i) {
        char c;
        C5Q c5q = this;
        ViewParent viewParent = null;
        switch (i) {
            case 0:
                c = 4;
                break;
            case 1:
                c = 5;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    viewParent = null;
                    c = 3;
                    break;
                case 3:
                    return viewParent;
                case 4:
                    c5q = c5q;
                    viewParent = c5q.A01;
                    c = 3;
                    break;
                case 5:
                    c5q = c5q;
                    viewParent = c5q.A00;
                    c = 3;
                    break;
            }
        }
    }

    private void A01(int i, ViewParent viewParent) {
        char c;
        C5Q c5q = this;
        switch (i) {
            case 0:
                c = 3;
                break;
            case 1:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c5q = c5q;
                    viewParent = viewParent;
                    c5q.A01 = viewParent;
                    c = 2;
                    break;
                case 4:
                    c5q = c5q;
                    viewParent = viewParent;
                    c5q.A00 = viewParent;
                    c = 2;
                    break;
            }
        }
    }

    public final void A02() {
        A03(0);
    }

    public final void A03(int i) {
        ViewParent viewParentA00 = A00(i);
        if (viewParentA00 != null) {
            C6E.A00(viewParentA00, this.A04, i);
            A01(i, null);
        }
    }

    public final void A04(boolean z) {
        if (this.A02) {
            C02985s.A08(this.A04);
        }
        this.A02 = z;
    }

    public final boolean A05() {
        return A09(0);
    }

    public final boolean A06() {
        return this.A02;
    }

    public final boolean A07(float f, float f2) {
        C5Q c5q = this;
        ViewParent viewParentA00 = null;
        boolean zA04 = false;
        char c = c5q.A06() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c5q = c5q;
                    zA04 = false;
                    viewParentA00 = c5q.A00(0);
                    if (viewParentA00 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c5q = c5q;
                    viewParentA00 = viewParentA00;
                    zA04 = C6E.A04(viewParentA00, c5q.A04, f, f2);
                    c = 4;
                    break;
                case 4:
                    return zA04;
            }
        }
    }

    public final boolean A08(float f, float f2, boolean z) {
        C5Q c5q = this;
        ViewParent viewParentA00 = null;
        boolean zA05 = false;
        char c = c5q.A06() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c5q = c5q;
                    zA05 = false;
                    viewParentA00 = c5q.A00(0);
                    if (viewParentA00 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c5q = c5q;
                    viewParentA00 = viewParentA00;
                    zA05 = C6E.A05(viewParentA00, c5q.A04, f, f2, z);
                    c = 4;
                    break;
                case 4:
                    return zA05;
            }
        }
    }

    public final boolean A09(int i) {
        boolean z = false;
        char c = A00(i) != null ? (char) 2 : (char) 4;
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

    public final boolean A0A(int i) {
        return A0B(i, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r3v9, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.facebook.ads.redexgen.X.5Q] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.facebook.ads.redexgen.X.5Q] */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.facebook.ads.redexgen.X.5Q] */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.facebook.ads.redexgen.X.5Q] */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.facebook.ads.redexgen.X.5Q] */
    /* JADX WARN: Type inference failed for: r4v6 */
    public final boolean A0B(int i, int i2) {
        ?? r4 = this;
        ?? parent = 0;
        View view = null;
        boolean z = true;
        char c = r4.A09(i2) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    r4 = (C5Q) r4;
                    if (!r4.A06()) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    r4 = (C5Q) r4;
                    parent = r4.A04.getParent();
                    view = r4.A04;
                    c = 5;
                    break;
                case 5:
                    parent = (ViewParent) parent;
                    if (parent == 0) {
                        c = 11;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    r4 = (C5Q) r4;
                    parent = (ViewParent) parent;
                    view = view;
                    if (!C6E.A06(parent, view, r4.A04, i, i2)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    r4 = (C5Q) r4;
                    parent = (ViewParent) parent;
                    view = view;
                    r4.A01(i2, parent);
                    C6E.A03(parent, view, r4.A04, i, i2);
                    c = 2;
                    break;
                case '\b':
                    parent = (ViewParent) parent;
                    if (!(parent instanceof View)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    parent = (ViewParent) parent;
                    view = (View) parent;
                    c = '\n';
                    break;
                case '\n':
                    parent = ((ViewParent) parent).getParent();
                    c = 5;
                    break;
                case 11:
                    z = false;
                    c = 2;
                    break;
            }
        }
    }

    public final boolean A0C(int i, int i2, int i3, int i4, @Nullable int[] iArr) {
        return A0D(i, i2, i3, i4, iArr, 0);
    }

    public final boolean A0D(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5) {
        int[] iArr2 = iArr;
        C5Q c5q = this;
        int startX = 0;
        boolean z = false;
        ViewParent viewParentA00 = null;
        int i6 = 0;
        char c = c5q.A06() ? (char) 2 : (char) 16;
        while (true) {
            switch (c) {
                case 2:
                    c5q = c5q;
                    viewParentA00 = c5q.A00(i5);
                    if (viewParentA00 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = false;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    if (i != 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (i2 != 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (i3 != 0) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (i4 == 0) {
                        c = 14;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    iArr2 = iArr2;
                    i6 = 0;
                    startX = 0;
                    if (iArr2 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c5q = c5q;
                    iArr2 = iArr2;
                    c5q.A04.getLocationInWindow(iArr2);
                    i6 = iArr2[0];
                    startX = iArr2[1];
                    c = 11;
                    break;
                case 11:
                    c5q = c5q;
                    iArr2 = iArr2;
                    viewParentA00 = viewParentA00;
                    C6E.A01(viewParentA00, c5q.A04, i, i2, i3, i4, i5);
                    if (iArr2 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c5q = c5q;
                    iArr2 = iArr2;
                    c5q.A04.getLocationInWindow(iArr2);
                    iArr2[0] = iArr2[0] - i6;
                    iArr2[1] = iArr2[1] - startX;
                    c = '\r';
                    break;
                case '\r':
                    z = true;
                    c = 4;
                    break;
                case 14:
                    iArr2 = iArr2;
                    if (iArr2 == null) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    iArr2 = iArr2;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    c = 16;
                    break;
                case 16:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final boolean A0E(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return A0F(i, i2, iArr, iArr2, 0);
    }

    public final boolean A0F(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2, int i3) {
        int[] iArr3 = iArr2;
        int[] iArr4 = iArr;
        C5Q c5q = this;
        int i4 = 0;
        boolean z = false;
        ViewParent viewParentA00 = null;
        int i5 = 0;
        boolean z2 = false;
        char c = c5q.A06() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c5q = c5q;
                    viewParentA00 = c5q.A00(i3);
                    if (viewParentA00 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z2;
                case 4:
                    if (i != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    if (i2 == 0) {
                        c = 19;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    iArr3 = iArr3;
                    i5 = 0;
                    i4 = 0;
                    if (iArr3 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c5q = c5q;
                    iArr3 = iArr3;
                    z2 = false;
                    c5q.A04.getLocationInWindow(iArr3);
                    i5 = iArr3[0];
                    i4 = iArr3[1];
                    c = '\b';
                    break;
                case '\b':
                    iArr4 = iArr4;
                    if (iArr4 != null) {
                        c = '\f';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c5q = c5q;
                    if (c5q.A03 != null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c5q = c5q;
                    c5q.A03 = new int[2];
                    c = 11;
                    break;
                case 11:
                    c5q = c5q;
                    iArr4 = c5q.A03;
                    c = '\f';
                    break;
                case '\f':
                    c5q = c5q;
                    iArr4 = iArr4;
                    iArr3 = iArr3;
                    viewParentA00 = viewParentA00;
                    iArr4[z2 ? 1 : 0] = z2 ? 1 : 0;
                    iArr4[1] = z2 ? 1 : 0;
                    C6E.A02(viewParentA00, c5q.A04, i, i2, iArr4, i3);
                    if (iArr3 == null) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c5q = c5q;
                    iArr3 = iArr3;
                    c5q.A04.getLocationInWindow(iArr3);
                    iArr3[z2 ? 1 : 0] = iArr3[z2 ? 1 : 0] - i5;
                    iArr3[1] = iArr3[1] - i4;
                    c = 14;
                    break;
                case 14:
                    iArr4 = iArr4;
                    if (iArr4[z2 ? 1 : 0] != 0) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    iArr4 = iArr4;
                    if (iArr4[1] == 0) {
                        c = 18;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    z = true;
                    c = 17;
                    break;
                case 17:
                    z2 = z;
                    c = 3;
                    break;
                case 18:
                    z = z2 ? 1 : 0;
                    c = 17;
                    break;
                case 19:
                    iArr3 = iArr3;
                    if (iArr3 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    iArr3 = iArr3;
                    z2 = false;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    c = 3;
                    break;
            }
        }
    }
}
