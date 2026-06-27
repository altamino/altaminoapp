package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.NativeAdLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class RV {
    private static final int A00 = (int) (OY.A01 * 200.0f);
    private static final int A02 = (int) (OY.A01 * 200.0f);
    private static final int A01 = (int) (50.0f * OY.A01);

    private RV() {
    }

    public static C2V A00(@Nullable NativeAdLayout nativeAdLayout) {
        C2V c2v = null;
        char c = nativeAdLayout == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c2v = C2V.A04;
                    c = 3;
                    break;
                case 3:
                    return c2v;
                case 4:
                    nativeAdLayout = nativeAdLayout;
                    if (!A03(nativeAdLayout)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c2v = C2V.A05;
                    c = 3;
                    break;
                case 6:
                    c2v = C2V.A03;
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public static RU A01(Context context, KM km, String str, @Nullable NativeAdLayout nativeAdLayout) {
        String str2 = str;
        KM km2 = km;
        Context context2 = context;
        int height = 0;
        int width = 0;
        RU c0862Rt = null;
        int h = nativeAdLayout == null ? 2 : 3;
        while (true) {
            switch (h) {
                case 2:
                    return c0862Rt;
                case 3:
                    nativeAdLayout = nativeAdLayout;
                    width = nativeAdLayout.getWidth();
                    height = nativeAdLayout.getHeight();
                    int h2 = A00;
                    if (width < h2) {
                        h = 6;
                        break;
                    } else {
                        h = 4;
                        break;
                    }
                case 4:
                    if (height < A00) {
                        h = 6;
                        break;
                    } else {
                        h = 5;
                        break;
                    }
                case 5:
                    context2 = context2;
                    km2 = km2;
                    str2 = str2;
                    c0862Rt = new C0862Rt(context2, km2, str2, width, height);
                    h = 2;
                    break;
                case 6:
                    if (width < A02) {
                        h = 2;
                        break;
                    } else {
                        h = 7;
                        break;
                    }
                case 7:
                    if (height < A01) {
                        h = 2;
                        break;
                    } else {
                        h = 8;
                        break;
                    }
                case 8:
                    context2 = context2;
                    km2 = km2;
                    str2 = str2;
                    c0862Rt = new C0852Rj(context2, km2, str2, width, height);
                    h = 2;
                    break;
            }
        }
    }

    public static RU A02(Context context, KM km, String str, AnonymousClass38 anonymousClass38, PK pk, InterfaceC03688m interfaceC03688m) {
        return new C0845Rc(context, km, str, anonymousClass38, pk, interfaceC03688m);
    }

    private static boolean A03(NativeAdLayout nativeAdLayout) {
        boolean z = false;
        int width = nativeAdLayout.getWidth();
        int height = nativeAdLayout.getHeight();
        int w = A00;
        int w2 = width >= w ? 2 : 3;
        while (true) {
            switch (w2) {
                case 2:
                    int w3 = A00;
                    if (height >= w3) {
                        w2 = 7;
                        break;
                    } else {
                        w2 = 3;
                        break;
                    }
                case 3:
                    int w4 = A02;
                    if (width < w4) {
                        w2 = 5;
                        break;
                    } else {
                        w2 = 4;
                        break;
                    }
                case 4:
                    int w5 = A01;
                    if (height >= w5) {
                        w2 = 7;
                        break;
                    } else {
                        w2 = 5;
                        break;
                    }
                case 5:
                    z = true;
                    w2 = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    z = false;
                    w2 = 6;
                    break;
            }
        }
    }
}
