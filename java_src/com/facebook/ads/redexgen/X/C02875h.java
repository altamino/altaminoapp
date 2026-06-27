package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
import android.support.annotation.Nullable;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5h, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C02875h {
    public static Field A00;
    public static boolean A01;
    private static Field A02;
    private static Field A03;
    private static boolean A04;
    private static boolean A05;
    private static byte[] A06;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A06 = new byte[]{2, 28, 27, 17, 26, 2, 27, 59, 31, 24, 62, 19, 31, 17, 30, 2, 80, 112, 84, 83, 106, 84, 89, 73, 85, 113, 93, 127, 127, 121, 111, 111, 117, 126, 117, 112, 117, 104, 101, 88, 121, 112, 121, 123, 125, 104, 121};
    }

    static {
        A02();
        A01 = false;
    }

    private final long A00() {
        return ValueAnimator.getFrameDelay();
    }

    public int A03(View view) {
        return 0;
    }

    public int A04(View view) {
        return 0;
    }

    public int A05(View view) {
        int iIntValue = 0;
        char c = !A04 ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    try {
                        A02 = View.class.getDeclaredField(A01(6, 10, 7));
                        A02.setAccessible(true);
                    } catch (NoSuchFieldException unused) {
                    }
                    A04 = true;
                    c = '\t';
                    break;
                case '\t':
                    if (A02 != null) {
                        try {
                            iIntValue = ((Integer) A02.get(view)).intValue();
                            c = 16;
                            break;
                        } catch (Exception unused2) {
                        }
                    }
                    iIntValue = 0;
                    c = 16;
                    break;
                case 16:
                    return iIntValue;
            }
        }
    }

    public int A06(View view) {
        int iIntValue = 0;
        char c = !A05 ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    try {
                        A03 = View.class.getDeclaredField(A01(16, 9, 76));
                        A03.setAccessible(true);
                    } catch (NoSuchFieldException unused) {
                    }
                    A05 = true;
                    c = '\t';
                    break;
                case '\t':
                    if (A03 != null) {
                        try {
                            iIntValue = ((Integer) A03.get(view)).intValue();
                            c = 16;
                            break;
                        } catch (Exception unused2) {
                        }
                    }
                    iIntValue = 0;
                    c = 16;
                    break;
                case 16:
                    return iIntValue;
            }
        }
    }

    public Display A07(View view) {
        Display defaultDisplay = null;
        char c = A0I(view) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    defaultDisplay = ((WindowManager) view.getContext().getSystemService(A01(0, 6, 4))).getDefaultDisplay();
                    c = 3;
                    break;
                case 3:
                    return defaultDisplay;
                case 4:
                    defaultDisplay = null;
                    c = 3;
                    break;
            }
        }
    }

    public C6F A08(View view, C6F c6f) {
        return c6f;
    }

    public C6F A09(View view, C6F c6f) {
        return c6f;
    }

    public void A0A(View view) {
        view.postInvalidate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void A0B(View view) {
        if (view instanceof C5O) {
            ((C5O) view).stopNestedScroll();
        }
    }

    public void A0C(View view, int i) {
    }

    public final void A0D(View view, @Nullable C5L c5l) {
        View.AccessibilityDelegate accessibilityDelegateA00 = null;
        char c = c5l == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    accessibilityDelegateA00 = null;
                    c = 3;
                    break;
                case 3:
                    view.setAccessibilityDelegate(accessibilityDelegateA00);
                    return;
                case 4:
                    c5l = c5l;
                    accessibilityDelegateA00 = c5l.A00();
                    c = 3;
                    break;
            }
        }
    }

    public void A0E(View view, C5T c5t) {
    }

    public void A0F(View view, Runnable runnable) {
        view.postDelayed(runnable, A00());
    }

    public void A0G(View view, Runnable runnable, long j) {
        view.postDelayed(runnable, A00() + j);
    }

    public boolean A0H(View view) {
        return false;
    }

    public boolean A0I(View view) {
        boolean z = false;
        char c = view.getWindowToken() != null ? (char) 2 : (char) 4;
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

    /* JADX WARN: Removed duplicated region for block: B:28:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A0J(android.view.View r7) {
        /*
            r6 = this;
            r0 = 0
            r0 = 0
            r0 = 0
            r5 = 1
            r4 = 0
            boolean r0 = com.facebook.ads.redexgen.X.C02875h.A01
            if (r0 == 0) goto L49
            r0 = 2
        La:
            switch(r0) {
                case 2: goto L4b;
                case 3: goto L16;
                case 14: goto L11;
                case 15: goto Le;
                default: goto Ld;
            }
        Ld:
            goto La
        Le:
            r4 = r5
            r0 = 2
            goto La
        L11:
            r4 = 0
            r5 = r4
            r0 = 15
            goto La
        L16:
            java.lang.reflect.Field r0 = com.facebook.ads.redexgen.X.C02875h.A00
            if (r0 != 0) goto L37
            java.lang.Class<android.view.View> r3 = android.view.View.class
            r2 = 25
            r1 = 22
            r0 = 109(0x6d, float:1.53E-43)
            java.lang.String r0 = A01(r2, r1, r0)     // Catch: java.lang.Throwable -> L33
            java.lang.reflect.Field r0 = r3.getDeclaredField(r0)     // Catch: java.lang.Throwable -> L33
            com.facebook.ads.redexgen.X.C02875h.A00 = r0     // Catch: java.lang.Throwable -> L33
            java.lang.reflect.Field r1 = com.facebook.ads.redexgen.X.C02875h.A00     // Catch: java.lang.Throwable -> L33
            r0 = 1
            r1.setAccessible(r0)     // Catch: java.lang.Throwable -> L33
            goto L37
        L33:
            com.facebook.ads.redexgen.X.C02875h.A01 = r5
            r0 = 2
            goto La
        L37:
            java.lang.reflect.Field r0 = com.facebook.ads.redexgen.X.C02875h.A00     // Catch: java.lang.Throwable -> L45
            java.lang.Object r0 = r0.get(r7)     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L42
            r0 = 15
            goto La
        L42:
            r0 = 14
            goto La
        L45:
            com.facebook.ads.redexgen.X.C02875h.A01 = r5
            r0 = 2
            goto La
        L49:
            r0 = 3
            goto La
        L4b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02875h.A0J(android.view.View):boolean");
    }
}
