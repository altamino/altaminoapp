package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8K, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C8K {
    private C8K() {
    }

    public static int A00(C8D c8d, C7Z c7z, View view, View view2, C7N c7n, boolean z) {
        int iAbs = 0;
        char c = c7n.A0Z() != 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8d = c8d;
                    if (c8d.A03() == 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    view = view;
                    if (view == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view2 = view2;
                    if (view2 != null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    iAbs = 0;
                    c = 6;
                    break;
                case 6:
                    return iAbs;
                case 7:
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    view = view;
                    view2 = view2;
                    c7n = c7n;
                    iAbs = Math.abs(c7n.A0s(view) - c7n.A0s(view2)) + 1;
                    c = 6;
                    break;
                case '\t':
                    c7z = c7z;
                    view = view;
                    view2 = view2;
                    iAbs = Math.min(c7z.A0B(), c7z.A0C(view2) - c7z.A0F(view));
                    c = 6;
                    break;
            }
        }
    }

    public static int A01(C8D c8d, C7Z c7z, View view, View view2, C7N c7n, boolean z) {
        int iA0C = 0;
        char c = c7n.A0Z() != 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8d = c8d;
                    if (c8d.A03() == 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    view = view;
                    if (view == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view2 = view2;
                    if (view2 != null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    iA0C = 0;
                    c = 6;
                    break;
                case 6:
                    return iA0C;
                case 7:
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    c8d = c8d;
                    iA0C = c8d.A03();
                    c = 6;
                    break;
                case '\t':
                    c8d = c8d;
                    c7z = c7z;
                    view = view;
                    view2 = view2;
                    c7n = c7n;
                    iA0C = (int) (((c7z.A0C(view2) - c7z.A0F(view)) / (Math.abs(c7n.A0s(view) - c7n.A0s(view2)) + 1)) * c8d.A03());
                    c = 6;
                    break;
            }
        }
    }

    public static int A02(C8D c8d, C7Z c7z, View view, View view2, C7N c7n, boolean z, boolean z2) {
        int iMax = 0;
        int iMin = 0;
        int iMax2 = 0;
        char c = c7n.A0Z() != 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8d = c8d;
                    if (c8d.A03() == 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    view = view;
                    if (view == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view2 = view2;
                    if (view2 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    return iMax2;
                case 6:
                    view = view;
                    view2 = view2;
                    c7n = c7n;
                    iMin = Math.min(c7n.A0s(view), c7n.A0s(view2));
                    iMax = Math.max(c7n.A0s(view), c7n.A0s(view2));
                    if (!z2) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8d = c8d;
                    iMax2 = Math.max(0, (c8d.A03() - iMax) - 1);
                    c = '\b';
                    break;
                case '\b':
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7z = c7z;
                    view = view;
                    view2 = view2;
                    c7n = c7n;
                    iMax2 = Math.round((iMax2 * (Math.abs(c7z.A0C(view2) - c7z.A0F(view)) / (Math.abs(c7n.A0s(view) - c7n.A0s(view2)) + 1))) + (c7z.A0A() - c7z.A0F(view)));
                    c = 5;
                    break;
                case '\n':
                    iMax2 = Math.max(0, iMin);
                    c = '\b';
                    break;
            }
        }
    }
}
