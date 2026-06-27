package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.WindowInsets;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6F, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C6F {
    private final Object A00;

    private C6F(Object obj) {
        this.A00 = obj;
    }

    public static C6F A00(Object obj) {
        C6F c6f = null;
        char c = obj == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6f = null;
                    c = 3;
                    break;
                case 3:
                    return c6f;
                case 4:
                    obj = obj;
                    c6f = new C6F(obj);
                    c = 3;
                    break;
            }
        }
    }

    public static Object A01(C6F c6f) {
        Object obj = null;
        char c = c6f == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    obj = null;
                    c = 3;
                    break;
                case 3:
                    return obj;
                case 4:
                    c6f = c6f;
                    obj = c6f.A00;
                    c = 3;
                    break;
            }
        }
    }

    public final int A02() {
        C6F c6f = this;
        int systemWindowInsetBottom = 0;
        char c = Build.VERSION.SDK_INT >= 20 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6f = c6f;
                    systemWindowInsetBottom = ((WindowInsets) c6f.A00).getSystemWindowInsetBottom();
                    c = 3;
                    break;
                case 3:
                    return systemWindowInsetBottom;
                case 4:
                    systemWindowInsetBottom = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int A03() {
        C6F c6f = this;
        int systemWindowInsetLeft = 0;
        char c = Build.VERSION.SDK_INT >= 20 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6f = c6f;
                    systemWindowInsetLeft = ((WindowInsets) c6f.A00).getSystemWindowInsetLeft();
                    c = 3;
                    break;
                case 3:
                    return systemWindowInsetLeft;
                case 4:
                    systemWindowInsetLeft = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int A04() {
        C6F c6f = this;
        int systemWindowInsetRight = 0;
        char c = Build.VERSION.SDK_INT >= 20 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6f = c6f;
                    systemWindowInsetRight = ((WindowInsets) c6f.A00).getSystemWindowInsetRight();
                    c = 3;
                    break;
                case 3:
                    return systemWindowInsetRight;
                case 4:
                    systemWindowInsetRight = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int A05() {
        C6F c6f = this;
        int systemWindowInsetTop = 0;
        char c = Build.VERSION.SDK_INT >= 20 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6f = c6f;
                    systemWindowInsetTop = ((WindowInsets) c6f.A00).getSystemWindowInsetTop();
                    c = 3;
                    break;
                case 3:
                    return systemWindowInsetTop;
                case 4:
                    systemWindowInsetTop = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final C6F A06(int i, int i2, int i3, int i4) {
        C6F c6f = this;
        C6F c6f2 = null;
        char c = Build.VERSION.SDK_INT >= 20 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6f = c6f;
                    c6f2 = new C6F(((WindowInsets) c6f.A00).replaceSystemWindowInsets(i, i2, i3, i4));
                    c = 3;
                    break;
                case 3:
                    return c6f2;
                case 4:
                    c6f2 = null;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A07() {
        C6F c6f = this;
        boolean zIsConsumed = false;
        char c = Build.VERSION.SDK_INT >= 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6f = c6f;
                    zIsConsumed = ((WindowInsets) c6f.A00).isConsumed();
                    c = 3;
                    break;
                case 3:
                    return zIsConsumed;
                case 4:
                    zIsConsumed = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean equals(Object obj) {
        C6F other = this;
        C6F c6f = null;
        boolean zEquals = true;
        char c = other == obj ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return zEquals;
                case 3:
                    obj = obj;
                    if (obj == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    other = other;
                    obj = obj;
                    if (other.getClass() == obj.getClass()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    zEquals = false;
                    c = 2;
                    break;
                case 6:
                    other = other;
                    obj = obj;
                    c6f = (C6F) obj;
                    if (other.A00 != null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c6f = c6f;
                    if (c6f.A00 == null) {
                        c = 2;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    zEquals = false;
                    c = 2;
                    break;
                case '\t':
                    other = other;
                    c6f = c6f;
                    zEquals = other.A00.equals(c6f.A00);
                    c = 2;
                    break;
            }
        }
    }

    public final int hashCode() {
        C6F c6f = this;
        int iHashCode = 0;
        char c = c6f.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iHashCode = 0;
                    c = 3;
                    break;
                case 3:
                    return iHashCode;
                case 4:
                    c6f = c6f;
                    iHashCode = c6f.A00.hashCode();
                    c = 3;
                    break;
            }
        }
    }
}
