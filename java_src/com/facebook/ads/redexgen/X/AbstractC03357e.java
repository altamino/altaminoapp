package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7e, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC03357e extends AbstractC03347d {
    private static byte[] A03;
    public C8H A00;
    private Scroller A01;
    private final AnonymousClass82 A02 = new AnonymousClass82() { // from class: com.facebook.ads.redexgen.X.8L
        public boolean A00 = false;

        @Override // com.facebook.ads.redexgen.X.AnonymousClass82
        public final void A0U(C8H c8h, int i) {
            C8L c8l = this;
            super.A0U(c8h, i);
            char c = i == 0 ? (char) 2 : (char) 4;
            while (true) {
                switch (c) {
                    case 2:
                        c8l = c8l;
                        if (!c8l.A00) {
                            c = 4;
                            break;
                        } else {
                            c = 3;
                            break;
                        }
                    case 3:
                        c8l = c8l;
                        c8l.A00 = false;
                        c8l.A01.A0A();
                        c = 4;
                        break;
                    case 4:
                        return;
                }
            }
        }

        @Override // com.facebook.ads.redexgen.X.AnonymousClass82
        public final void A0V(C8H c8h, int i, int i2) {
            C8L c8l = this;
            char c = i == 0 ? (char) 2 : (char) 3;
            while (true) {
                switch (c) {
                    case 2:
                        if (i2 == 0) {
                            c = 4;
                            break;
                        } else {
                            c = 3;
                            break;
                        }
                    case 3:
                        c8l = c8l;
                        c8l.A00 = true;
                        c = 4;
                        break;
                    case 4:
                        return;
                }
            }
        }
    };

    static {
        A04();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_WRITE_PERMISSION_DENIED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A03 = new byte[]{8, 53, -25, 48, 53, 58, 59, 40, 53, 42, 44, -25, 54, 45, -25, 22, 53, 13, 51, 48, 53, 46, 19, 48, 58, 59, 44, 53, 44, 57, -25, 40, 51, 57, 44, 40, 43, 64, -25, 58, 44, 59, -11};
    }

    public abstract int A07(C7N c7n, int i, int i2);

    @Nullable
    public abstract View A08(C7N c7n);

    @Nullable
    public abstract int[] A0C(@NonNull C7N c7n, @NonNull View view);

    @Nullable
    private final C7W A00(C7N c7n) {
        return A09(c7n);
    }

    private void A02() {
        this.A00.A1d(this.A02);
        this.A00.setOnFlingListener(null);
    }

    private void A03() throws IllegalStateException {
        if (this.A00.getOnFlingListener() != null) {
            throw new IllegalStateException(A01(0, 43, 92));
        }
        this.A00.A1c(this.A02);
        this.A00.setOnFlingListener(this);
    }

    private boolean A05(@NonNull C7N c7n, int i, int i2) {
        AbstractC03357e abstractC03357e = this;
        C7W c7wA00 = null;
        int iA07 = 0;
        boolean z = false;
        char c = !(c7n instanceof C7O) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    abstractC03357e = abstractC03357e;
                    c7n = c7n;
                    c7wA00 = abstractC03357e.A00(c7n);
                    if (c7wA00 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    abstractC03357e = abstractC03357e;
                    c7n = c7n;
                    iA07 = abstractC03357e.A07(c7n, i, i2);
                    if (iA07 == -1) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7n = c7n;
                    c7wA00 = c7wA00;
                    c7wA00.A0A(iA07);
                    c7n.A1Q(c7wA00);
                    z = true;
                    c = 2;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03347d
    public final boolean A06(int i, int minFlingVelocity) {
        AbstractC03357e abstractC03357e = this;
        int minFlingVelocity2 = 0;
        boolean z = false;
        C7N layoutManager = abstractC03357e.A00.getLayoutManager();
        char c = layoutManager == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    abstractC03357e = abstractC03357e;
                    if (abstractC03357e.A00.getAdapter() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    abstractC03357e = abstractC03357e;
                    minFlingVelocity2 = abstractC03357e.A00.getMinFlingVelocity();
                    if (Math.abs(minFlingVelocity) > minFlingVelocity2) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    if (Math.abs(i) <= minFlingVelocity2) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    abstractC03357e = abstractC03357e;
                    layoutManager = layoutManager;
                    if (!abstractC03357e.A05(layoutManager, i, minFlingVelocity)) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = true;
                    c = 2;
                    break;
            }
        }
    }

    @Nullable
    @Deprecated
    public C7X A09(C7N c7n) {
        final AbstractC03357e abstractC03357e = this;
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
                    abstractC03357e = abstractC03357e;
                    final Context context = abstractC03357e.A00.getContext();
                    c7x = new C7X(context) { // from class: com.facebook.ads.redexgen.X.8M
                        @Override // com.facebook.ads.redexgen.X.C7X, com.facebook.ads.redexgen.X.C7W
                        public final void A0J(View view, C8D c8d, C8B c8b) {
                            int[] iArrA0C = this.A00.A0C(this.A00.A00.getLayoutManager(), view);
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
                    };
                    c = 3;
                    break;
            }
        }
    }

    public final void A0A() {
        AbstractC03357e abstractC03357e = this;
        C7N layoutManager = null;
        View viewA08 = null;
        int[] iArrA0C = null;
        char c = 0;
        char c2 = abstractC03357e.A00 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c2) {
                case 2:
                    return;
                case 3:
                    abstractC03357e = abstractC03357e;
                    layoutManager = abstractC03357e.A00.getLayoutManager();
                    if (layoutManager == null) {
                        c2 = 2;
                        break;
                    } else {
                        c2 = 4;
                        break;
                    }
                case 4:
                    abstractC03357e = abstractC03357e;
                    layoutManager = layoutManager;
                    viewA08 = abstractC03357e.A08(layoutManager);
                    if (viewA08 == null) {
                        c2 = 2;
                        break;
                    } else {
                        c2 = 5;
                        break;
                    }
                case 5:
                    abstractC03357e = abstractC03357e;
                    layoutManager = layoutManager;
                    viewA08 = viewA08;
                    c = 0;
                    iArrA0C = abstractC03357e.A0C(layoutManager, viewA08);
                    if (iArrA0C[0] != 0) {
                        c2 = 7;
                        break;
                    } else {
                        c2 = 6;
                        break;
                    }
                case 6:
                    iArrA0C = iArrA0C;
                    if (iArrA0C[1] == 0) {
                        c2 = 2;
                        break;
                    } else {
                        c2 = 7;
                        break;
                    }
                case 7:
                    abstractC03357e = abstractC03357e;
                    iArrA0C = iArrA0C;
                    abstractC03357e.A00.A1X(iArrA0C[c], iArrA0C[1]);
                    c2 = 2;
                    break;
            }
        }
    }

    public final void A0B(@Nullable C8H c8h) throws IllegalStateException {
        AbstractC03357e abstractC03357e = this;
        char c = abstractC03357e.A00 == c8h ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    abstractC03357e = abstractC03357e;
                    if (abstractC03357e.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    abstractC03357e = abstractC03357e;
                    abstractC03357e.A02();
                    c = 5;
                    break;
                case 5:
                    abstractC03357e = abstractC03357e;
                    c8h = c8h;
                    abstractC03357e.A00 = c8h;
                    if (abstractC03357e.A00 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    abstractC03357e = abstractC03357e;
                    abstractC03357e.A03();
                    abstractC03357e.A01 = new Scroller(abstractC03357e.A00.getContext(), new DecelerateInterpolator());
                    abstractC03357e.A0A();
                    c = 2;
                    break;
            }
        }
    }
}
