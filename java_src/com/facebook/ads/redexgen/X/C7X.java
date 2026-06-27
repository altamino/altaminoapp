package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7X, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C7X extends C7W {
    private static byte[] A06;
    public PointF A02;
    private final float A03;
    public final LinearInterpolator A05 = new LinearInterpolator();
    public final DecelerateInterpolator A04 = new DecelerateInterpolator();
    public int A00 = 0;
    public int A01 = 0;

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A06 = new byte[]{2, 52, 46, 123, 40, 51, 52, 46, 55, 63, 123, 52, 45, 62, 41, 41, 50, 63, 62, 123, 56, 52, 54, 43, 46, 47, 62, 8, 56, 41, 52, 55, 55, 13, 62, 56, 47, 52, 41, 29, 52, 41, 11, 52, 40, 50, 47, 50, 52, 53, 123, 44, 51, 62, 53, 123, 47, 51, 62, 123, 23, 58, 34, 52, 46, 47, 22, 58, 53, 58, 60, 62, 41, 123, 63, 52, 62, 40, 123, 53, 52, 47, 123, 50, 54, 43, 55, 62, 54, 62, 53, 47, 123, 19, 54, 49, 58, 62, 45, 12, 50, 48, 48, 43, 55, 12, 60, 45, 48, 51, 51, 58, 45, 111, 114, 125, 108, 60, 108, 110, 121, 122, 121, 110, 121, 114, 127, 121, 60, 111, 116, 115, 105, 112, 120, 60, 126, 121, 60, 115, 114, 121, 60, 115, 122, 60, 104, 116, 121, 60, 127, 115, 114, 111, 104, 125, 114, 104, 111, 60, 120, 121, 122, 117, 114, 121, 120, 60, 117, 114, 60, 79, 113, 115, 115, 104, 116, 79, 127, 110, 115, 112, 112, 121, 110, 48, 60, 111, 104, 125, 110, 104, 117, 114, 123, 60, 107, 117, 104, 116, 60, 79, 82, 93, 76, 67};
    }

    public C7X(Context context) {
        this.A03 = A0K(context.getResources().getDisplayMetrics());
    }

    private final int A00() {
        C7X c7x = this;
        int i = 0;
        float f = 0.0f;
        char c = c7x.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7x = c7x;
                    f = 0.0f;
                    if (c7x.A02.y != 0.0f) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    return i;
                case 5:
                    c7x = c7x;
                    if (c7x.A02.y <= f) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    i = 1;
                    c = 4;
                    break;
                case 7:
                    i = -1;
                    c = 4;
                    break;
            }
        }
    }

    private int A01(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    private final int A02(View view, int bottom) {
        C7X c7x = this;
        int iA0O = 0;
        C7N layoutManager = c7x.A08();
        int end = layoutManager != null ? 2 : 3;
        while (true) {
            switch (end) {
                case 2:
                    layoutManager = layoutManager;
                    if (!layoutManager.A2A()) {
                        end = 3;
                        break;
                    } else {
                        end = 5;
                        break;
                    }
                case 3:
                    iA0O = 0;
                    end = 4;
                    break;
                case 4:
                    return iA0O;
                case 5:
                    c7x = c7x;
                    view = view;
                    layoutManager = layoutManager;
                    C7L c7l = (C7L) view.getLayoutParams();
                    int iA0r = layoutManager.A0r(view) - c7l.topMargin;
                    int iA0m = layoutManager.A0m(view) + c7l.bottomMargin;
                    int iA0j = layoutManager.A0j();
                    int iA0a = layoutManager.A0a();
                    int start = layoutManager.A0g();
                    iA0O = c7x.A0O(iA0r, iA0m, iA0j, iA0a - start, bottom);
                    end = 4;
                    break;
            }
        }
    }

    private final void A06(C8B c8b) {
        C7X c7x = this;
        float f = 0.0f;
        PointF pointFA0Q = c7x.A0Q(c7x.A07());
        int time = pointFA0Q != null ? 2 : 4;
        while (true) {
            switch (time) {
                case 2:
                    pointFA0Q = pointFA0Q;
                    f = 0.0f;
                    if (pointFA0Q.x != 0.0f) {
                        time = 6;
                        break;
                    } else {
                        time = 3;
                        break;
                    }
                case 3:
                    pointFA0Q = pointFA0Q;
                    if (pointFA0Q.y != f) {
                        time = 6;
                        break;
                    } else {
                        time = 4;
                        break;
                    }
                case 4:
                    c7x = c7x;
                    c8b = c8b;
                    int time2 = c7x.A07();
                    c8b.A03(time2);
                    c7x.A09();
                    time = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c7x = c7x;
                    c8b = c8b;
                    pointFA0Q = pointFA0Q;
                    c7x.A0B(pointFA0Q);
                    c7x.A02 = pointFA0Q;
                    c7x.A00 = (int) (pointFA0Q.x * 10000.0f);
                    c7x.A01 = (int) (pointFA0Q.y * 10000.0f);
                    int iA0M = c7x.A0M(10000);
                    int time3 = c7x.A00;
                    int i = (int) (time3 * 1.2f);
                    int time4 = c7x.A01;
                    c8b.A04(i, (int) (time4 * 1.2f), (int) (iA0M * 1.2f), c7x.A05);
                    time = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7W
    public final void A0G() {
    }

    @Override // com.facebook.ads.redexgen.X.C7W
    public final void A0H() {
        this.A01 = 0;
        this.A00 = 0;
        this.A02 = null;
    }

    @Override // com.facebook.ads.redexgen.X.C7W
    public final void A0I(int i, int i2, C8D c8d, C8B c8b) {
        C7X c7x = this;
        char c = c7x.A06() == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7x = c7x;
                    c7x.A09();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c7x = c7x;
                    c7x.A00 = c7x.A01(c7x.A00, i);
                    c7x.A01 = c7x.A01(c7x.A01, i2);
                    if (c7x.A00 != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7x = c7x;
                    if (c7x.A01 != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7x = c7x;
                    c8b = c8b;
                    c7x.A06(c8b);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7W
    public void A0J(View view, C8D c8d, C8B c8b) {
        int iA0P = A0P(view, A0L());
        int iA02 = A02(view, A00());
        int iA0N = A0N((int) Math.sqrt((iA0P * iA0P) + (iA02 * iA02)));
        if (iA0N > 0) {
            c8b.A04(-iA0P, -iA02, iA0N, this.A04);
        }
    }

    public float A0K(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int A0L() {
        C7X c7x = this;
        int i = 0;
        float f = 0.0f;
        char c = c7x.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7x = c7x;
                    f = 0.0f;
                    if (c7x.A02.x != 0.0f) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    return i;
                case 5:
                    c7x = c7x;
                    if (c7x.A02.x <= f) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    i = 1;
                    c = 4;
                    break;
                case 7:
                    i = -1;
                    c = 4;
                    break;
            }
        }
    }

    public int A0M(int i) {
        return (int) Math.ceil(Math.abs(i) * this.A03);
    }

    public final int A0N(int i) {
        return (int) Math.ceil(A0M(i) / 0.3356d);
    }

    public final int A0O(int i, int i2, int i3, int i4, int i5) {
        char c;
        int i6 = 0;
        int i7 = 0;
        switch (i5) {
            case -1:
                c = '\b';
                break;
            case 0:
                c = 3;
                break;
            case 1:
                c = 7;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A03(113, 93, 99));
                case 3:
                    i7 = i3 - i;
                    if (i7 > 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i6 = i4 - i2;
                    if (i6 >= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i7 = i6;
                    c = '\t';
                    break;
                case 6:
                    i7 = 0;
                    c = '\t';
                    break;
                case 7:
                    i7 = i4 - i2;
                    c = '\t';
                    break;
                case '\b':
                    i7 = i3 - i;
                    c = '\t';
                    break;
                case '\t':
                    return i7;
            }
        }
    }

    public int A0P(View view, int right) {
        C7X c7x = this;
        int iA0O = 0;
        C7N layoutManager = c7x.A08();
        int end = layoutManager != null ? 2 : 3;
        while (true) {
            switch (end) {
                case 2:
                    layoutManager = layoutManager;
                    if (!layoutManager.A29()) {
                        end = 3;
                        break;
                    } else {
                        end = 5;
                        break;
                    }
                case 3:
                    iA0O = 0;
                    end = 4;
                    break;
                case 4:
                    return iA0O;
                case 5:
                    c7x = c7x;
                    view = view;
                    layoutManager = layoutManager;
                    C7L c7l = (C7L) view.getLayoutParams();
                    int iA0n = layoutManager.A0n(view) - c7l.leftMargin;
                    int iA0q = layoutManager.A0q(view) + c7l.rightMargin;
                    int iA0h = layoutManager.A0h();
                    int iA0k = layoutManager.A0k();
                    int start = layoutManager.A0i();
                    iA0O = c7x.A0O(iA0n, iA0q, iA0h, iA0k - start, right);
                    end = 4;
                    break;
            }
        }
    }

    @Nullable
    public PointF A0Q(int i) {
        PointF pointFA2o = null;
        Object objA08 = A08();
        char c = objA08 instanceof C7O ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    objA08 = (C7N) objA08;
                    pointFA2o = ((C7O) objA08).A2o(i);
                    c = 3;
                    break;
                case 3:
                    return pointFA2o;
                case 4:
                    Log.w(A03(93, 20, 32), A03(0, 93, 36) + C7O.class.getCanonicalName());
                    pointFA2o = null;
                    c = 3;
                    break;
            }
        }
    }
}
