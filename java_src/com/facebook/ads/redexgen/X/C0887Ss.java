package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ss, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0887Ss {
    private static final int A00 = OY.A02.heightPixels;
    private static final int A01 = OY.A02.widthPixels;

    private C0887Ss() {
    }

    public static float A00(AnonymousClass32 anonymousClass32) {
        float f = 0.0f;
        int iA01 = anonymousClass32.A03().A01();
        int iA00 = anonymousClass32.A03().A00();
        int width = iA00 > 0 ? 2 : 4;
        while (true) {
            switch (width) {
                case 2:
                    f = iA01 / iA00;
                    width = 3;
                    break;
                case 3:
                    return f;
                case 4:
                    f = -1.0f;
                    width = 3;
                    break;
            }
        }
    }

    private static int A01(double d) {
        return (int) ((A01 - (AbstractC0888St.A04 * 2)) / d);
    }

    private static int A02(int bottomMargin) {
        int ctaSpacing = OY.A01(16);
        int ctaTextHeight = SZ.A0A;
        int i = ctaTextHeight * 2;
        int ctaTextHeight2 = AbstractC0888St.A04;
        int ctaMargin = ctaTextHeight2 * 2;
        int ctaSpacing2 = ctaSpacing + i + ctaMargin;
        int ctaMargin2 = A00;
        return (ctaMargin2 - bottomMargin) - ctaSpacing2;
    }

    public static boolean A03(double d) {
        boolean z = false;
        char c = d < 0.9d ? (char) 2 : (char) 4;
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

    private static boolean A04(double d, int i) {
        boolean z = false;
        char c = A02(i) < A01(d) ? (char) 2 : (char) 4;
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

    public static boolean A05(int i, int i2, double d) {
        boolean z = false;
        char c = i != 2 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (!A04(d, i2)) {
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
}
