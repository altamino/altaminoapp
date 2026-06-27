package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7f, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03367f extends AbstractC03357e {

    @Nullable
    private C7Z A00;

    @Nullable
    private C7Z A01;

    private int A00(@NonNull C7N c7n, @NonNull View view, C7Z c7z) {
        int iA06 = 0;
        int iA0F = c7z.A0F(view) + (c7z.A0D(view) / 2);
        char c = c7n.A1c() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7z = c7z;
                    iA06 = c7z.A0A() + (c7z.A0B() / 2);
                    c = 3;
                    break;
                case 3:
                    return iA0F - iA06;
                case 4:
                    c7z = c7z;
                    iA06 = c7z.A06() / 2;
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    private View A01(C7N c7n, C7Z c7z) {
        View view = null;
        View viewA0w = null;
        int i = 0;
        int iA06 = 0;
        int i2 = 0;
        int iAbs = 0;
        int iA0Z = c7n.A0Z();
        char c = iA0Z == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view = null;
                    c = 3;
                    break;
                case 3:
                    return view;
                case 4:
                    c7n = c7n;
                    view = null;
                    if (!c7n.A1c()) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7z = c7z;
                    iA06 = c7z.A0A() + (c7z.A0B() / 2);
                    c = 6;
                    break;
                case 6:
                    i2 = Integer.MAX_VALUE;
                    i = 0;
                    c = 7;
                    break;
                case 7:
                    if (i >= iA0Z) {
                        c = 3;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7n = c7n;
                    c7z = c7z;
                    viewA0w = c7n.A0w(i);
                    iAbs = Math.abs((c7z.A0F(viewA0w) + (c7z.A0D(viewA0w) / 2)) - iA06);
                    if (iAbs >= i2) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    viewA0w = viewA0w;
                    i2 = iAbs;
                    view = viewA0w;
                    c = '\n';
                    break;
                case '\n':
                    i++;
                    c = 7;
                    break;
                case 11:
                    c7z = c7z;
                    iA06 = c7z.A06() / 2;
                    c = 6;
                    break;
            }
        }
    }

    @Nullable
    private View A02(C7N c7n, C7Z c7z) {
        View closestChild = null;
        int i = 0;
        int i2 = 0;
        View viewA0w = null;
        int iA0F = 0;
        int iA0Z = c7n.A0Z();
        int startest = iA0Z == 0 ? 2 : 4;
        while (true) {
            switch (startest) {
                case 2:
                    closestChild = null;
                    startest = 3;
                    break;
                case 3:
                    return closestChild;
                case 4:
                    closestChild = null;
                    i2 = Integer.MAX_VALUE;
                    i = 0;
                    startest = 5;
                    break;
                case 5:
                    if (i >= iA0Z) {
                        startest = 3;
                        break;
                    } else {
                        startest = 6;
                        break;
                    }
                case 6:
                    c7n = c7n;
                    c7z = c7z;
                    viewA0w = c7n.A0w(i);
                    iA0F = c7z.A0F(viewA0w);
                    if (iA0F >= i2) {
                        startest = 8;
                        break;
                    } else {
                        startest = 7;
                        break;
                    }
                case 7:
                    viewA0w = viewA0w;
                    i2 = iA0F;
                    closestChild = viewA0w;
                    startest = 8;
                    break;
                case 8:
                    i++;
                    startest = 5;
                    break;
            }
        }
    }

    @NonNull
    private C7Z A03(@NonNull C7N c7n) {
        C03367f c03367f = this;
        char c = c03367f.A00 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03367f = c03367f;
                    c7n = c7n;
                    if (c03367f.A00.A02 == c7n) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03367f = c03367f;
                    c7n = c7n;
                    c03367f.A00 = C7Z.A00(c7n);
                    c = 4;
                    break;
                case 4:
                    return c03367f.A00;
            }
        }
    }

    @NonNull
    private C7Z A04(@NonNull C7N c7n) {
        C03367f c03367f = this;
        char c = c03367f.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03367f = c03367f;
                    c7n = c7n;
                    if (c03367f.A01.A02 == c7n) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03367f = c03367f;
                    c7n = c7n;
                    c03367f.A01 = C7Z.A01(c7n);
                    c = 4;
                    break;
                case 4:
                    return c03367f.A01;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v2, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r12v3, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r12v4, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r12v6, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r12v7, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r12v8, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r12v9, types: [com.facebook.ads.redexgen.X.7N] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.facebook.ads.redexgen.X.7f] */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.facebook.ads.redexgen.X.7f] */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // com.facebook.ads.redexgen.X.AbstractC03357e
    public final int A07(C7N c7n, int itemCount, int i) {
        ?? r5 = this;
        int iA0s = 0;
        PointF pointFA2o = null;
        View viewA02 = null;
        boolean z = false;
        boolean z2 = false;
        float f = 0.0f;
        int iA0c = c7n.A0c();
        char c = iA0c == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA0s = -1;
                    c = 3;
                    break;
                case 3:
                    return iA0s;
                case 4:
                    c7n = (C7N) c7n;
                    viewA02 = null;
                    boolean reverseLayout = c7n.A2A();
                    if (!reverseLayout) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    r5 = (C03367f) r5;
                    c7n = (C7N) c7n;
                    viewA02 = r5.A02(c7n, r5.A04(c7n));
                    c = 6;
                    break;
                case 6:
                    if (viewA02 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    iA0s = -1;
                    c = 3;
                    break;
                case '\b':
                    c7n = (C7N) c7n;
                    if (!c7n.A29()) {
                        c = 6;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    r5 = (C03367f) r5;
                    c7n = (C7N) c7n;
                    viewA02 = r5.A02(c7n, r5.A03(c7n));
                    c = 6;
                    break;
                case '\n':
                    c7n = (C7N) c7n;
                    iA0s = c7n.A0s(viewA02);
                    if (iA0s != -1) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    iA0s = -1;
                    c = 3;
                    break;
                case '\f':
                    c7n = (C7N) c7n;
                    boolean reverseLayout2 = c7n.A29();
                    if (!reverseLayout2) {
                        c = 25;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    if (itemCount <= 0) {
                        c = 24;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    z2 = true;
                    c = 15;
                    break;
                case 15:
                    c7n = (C7N) c7n;
                    z = false;
                    boolean reverseLayout3 = c7n instanceof C7O;
                    if (!reverseLayout3) {
                        c = 20;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c7n = (C7N) c7n;
                    C7O vectorProvider = (C7O) c7n;
                    pointFA2o = vectorProvider.A2o(iA0c - 1);
                    if (pointFA2o == null) {
                        c = 20;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    pointFA2o = pointFA2o;
                    f = 0.0f;
                    if (pointFA2o.x < 0.0f) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    pointFA2o = pointFA2o;
                    if (pointFA2o.y >= f) {
                        c = 23;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    z = true;
                    c = 20;
                    break;
                case 20:
                    if (!z) {
                        c = 28;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    if (!z2) {
                        c = 3;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    iA0s--;
                    c = 3;
                    break;
                case 23:
                    z = false;
                    c = 20;
                    break;
                case 24:
                    z2 = false;
                    c = 15;
                    break;
                case 25:
                    if (i <= 0) {
                        c = 27;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    z2 = true;
                    c = 15;
                    break;
                case 27:
                    z2 = false;
                    c = 15;
                    break;
                case 28:
                    if (!z2) {
                        c = 3;
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    iA0s++;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03357e
    @Nullable
    public final View A08(C7N c7n) {
        C03367f c03367f = this;
        View viewA01 = null;
        char c = c7n.A2A() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c03367f = c03367f;
                    c7n = c7n;
                    viewA01 = c03367f.A01(c7n, c03367f.A04(c7n));
                    c = 3;
                    break;
                case 3:
                    return viewA01;
                case 4:
                    c7n = c7n;
                    if (!c7n.A29()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c03367f = c03367f;
                    c7n = c7n;
                    viewA01 = c03367f.A01(c7n, c03367f.A03(c7n));
                    c = 3;
                    break;
                case 6:
                    viewA01 = null;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03357e
    public final C7X A09(C7N c7n) {
        final C03367f c03367f = this;
        C7X c7x = null;
        char c = !(c7n instanceof C7O) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7x = null;
                    c = 3;
                    break;
                case 3:
                    return c7x;
                case 4:
                    c03367f = c03367f;
                    final Context context = ((AbstractC03357e) c03367f).A00.getContext();
                    c7x = new C7X(context) { // from class: com.facebook.ads.redexgen.X.7c
                        @Override // com.facebook.ads.redexgen.X.C7X, com.facebook.ads.redexgen.X.C7W
                        public final void A0J(View view, C8D c8d, C8B c8b) {
                            int[] iArrA0C = this.A00.A0C(((AbstractC03357e) this.A00).A00.getLayoutManager(), view);
                            int i = iArrA0C[0];
                            int i2 = iArrA0C[1];
                            int iA0N = A0N(Math.max(Math.abs(i), Math.abs(i2)));
                            if (iA0N > 0) {
                                c8b.A04(i, i2, iA0N, ((C7X) this).A04);
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.C7X
                        public final float A0K(DisplayMetrics displayMetrics) {
                            return 100.0f / displayMetrics.densityDpi;
                        }

                        @Override // com.facebook.ads.redexgen.X.C7X
                        public final int A0M(int i) {
                            return Math.min(100, super.A0M(i));
                        }
                    };
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03357e
    @Nullable
    public final int[] A0C(@NonNull C7N c7n, @NonNull View view) {
        C03367f c03367f = this;
        int i = 0;
        int[] iArr = new int[2];
        char c = c7n.A29() ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c03367f = c03367f;
                    c7n = c7n;
                    view = view;
                    iArr = iArr;
                    i = 0;
                    iArr[0] = c03367f.A00(c7n, view, c03367f.A03(c7n));
                    c = 3;
                    break;
                case 3:
                    c7n = c7n;
                    if (!c7n.A2A()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03367f = c03367f;
                    c7n = c7n;
                    view = view;
                    iArr = iArr;
                    iArr[1] = c03367f.A00(c7n, view, c03367f.A04(c7n));
                    c = 5;
                    break;
                case 5:
                    return iArr;
                case 6:
                    iArr = iArr;
                    iArr[1] = i;
                    c = 5;
                    break;
                case 7:
                    iArr = iArr;
                    i = 0;
                    iArr[0] = 0;
                    c = 3;
                    break;
            }
        }
    }
}
