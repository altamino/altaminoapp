package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.AdSettings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jf, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0645Jf {
    private static C0645Jf A04;
    private static byte[] A05;

    @Nullable
    private A4 A00;

    @Nullable
    private AD A01;

    @Nullable
    private InterfaceC02855d A02;

    @Nullable
    private C0T A03;

    static {
        A06();
    }

    private static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 123);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A05 = new byte[]{18, 48, 61, 61, 62, 67, -17, 54, 52, 67, -17, 60, 62, 51, 68, 59, 52, 66, -17, 50, 62, 61, 67, 48, 56, 61, 52, 65, -17, 49, 52, 53, 62, 65, 52, -17, 56, 61, 56, 67, 56, 48, 59, 56, 73, 48, 56, 67, 62, 61, -3};
    }

    private C0645Jf(@Nullable InterfaceC02855d interfaceC02855d, @Nullable C0T c0t, @Nullable AD ad, @Nullable A4 a4) {
        this.A02 = interfaceC02855d;
        this.A03 = c0t;
        this.A01 = ad;
        this.A00 = a4;
    }

    @Nullable
    private static A4 A00(Context context, @Nullable AD ad) {
        A4 a4A01 = null;
        char c = K1.A1G(context) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    ad = ad;
                    if (ad != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    a4A01 = null;
                    c = 4;
                    break;
                case 4:
                    return a4A01;
                case 5:
                    context = context;
                    ad = ad;
                    a4A01 = A5.A00().A01(ad, context);
                    c = 4;
                    break;
            }
        }
    }

    @Nullable
    private static AD A01(Context context, @Nullable C0T c0t) {
        AD adA01 = null;
        char c = K1.A1G(context) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0t = c0t;
                    if (c0t != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    adA01 = null;
                    c = 4;
                    break;
                case 4:
                    return adA01;
                case 5:
                    c0t = c0t;
                    adA01 = AE.A00().A01(c0t);
                    c = 4;
                    break;
            }
        }
    }

    public static synchronized C0645Jf A02() {
        if (A04 == null) {
            throw new IllegalStateException(A05(0, 51, 84));
        }
        return A04;
    }

    @Nullable
    private static InterfaceC02855d A03(Context context) {
        InterfaceC02855d interfaceC02855dA05 = null;
        char c = !K1.A1F(context) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    interfaceC02855dA05 = null;
                    c = 3;
                    break;
                case 3:
                    return interfaceC02855dA05;
                case 4:
                    context = context;
                    interfaceC02855dA05 = C0780Op.A05(context);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    private static C0T A04(Context context, @Nullable InterfaceC02855d interfaceC02855d) {
        if (!K1.A1p(context) || interfaceC02855d == null) {
            return null;
        }
        return C0S.A00().A01(interfaceC02855d, M2.A02(), new C0644Je(new C0700Lk(context, A05(51, 0, 1), null, LW.A08, AdSettings.getTestAdType() != AdSettings.TestAdType.DEFAULT ? AdSettings.getTestAdType().getAdTypeString() : null, 0, AdSettings.isTestMode(context), AdSettings.isMixedAudience(), new C0691Lb(context), OE.A01(K1.A0P(context)), null), context), C0Y.A00().A00());
    }

    public static synchronized void A07(Context context) {
        if (A04 == null) {
            InterfaceC02855d interfaceC02855dA03 = A03(context);
            C0T c0tA04 = A04(context, interfaceC02855dA03);
            AD adA01 = A01(context, c0tA04);
            A04 = new C0645Jf(interfaceC02855dA03, c0tA04, adA01, A00(context, adA01));
            if (c0tA04 != null) {
                c0tA04.A38();
            }
        }
    }

    @Nullable
    public final C0T A08() {
        return this.A03;
    }
}
