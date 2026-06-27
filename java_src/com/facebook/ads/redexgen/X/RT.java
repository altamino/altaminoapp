package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RT implements RS {
    private static byte[] A01;
    public final /* synthetic */ RU A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 88);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-41, -29, -31, -94, -38, -43, -41, -39, -42, -29, -29, -33, -94, -43, -40, -25, -94, -43, -40, -26, -39, -28, -29, -26, -24, -35, -30, -37, -94, -70, -67, -62, -67, -57, -68, -45, -75, -72, -45, -58, -71, -60, -61, -58, -56, -67, -62, -69, -45, -70, -64, -61, -53};
    }

    public RT(RU ru) {
        this.A00 = ru;
    }

    @Override // com.facebook.ads.redexgen.X.RS
    public final void A2l() {
        if (this.A00.A07 == null) {
            return;
        }
        this.A00.A07.A2f(A00(0, 53, 28));
    }

    @Override // com.facebook.ads.redexgen.X.RS
    public final void A2m(boolean z) {
        RT rt = this;
        rt.A00.A0L();
        char c = rt.A00.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    rt = rt;
                    rt.A00.A08.A67(true);
                    c = 3;
                    break;
                case 3:
                    rt = rt;
                    if (rt.A00.A05 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    rt = rt;
                    rt.A00.A05.A4n(z);
                    c = 5;
                    break;
                case 5:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    rt = rt;
                    rt.A00.A0A();
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RS
    public final void A3o() {
        RT rt = this;
        char c = rt.A00.A04 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    rt = rt;
                    rt.A2m(false);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    rt = rt;
                    RU.A01(rt.A00);
                    if (rt.A00.A04.A02() != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    rt = rt;
                    rt.A00.A0B();
                    c = 3;
                    break;
                case 6:
                    rt = rt;
                    rt.A00.A0D(rt.A00.A04.A02());
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RS
    public final void A43() {
        if (!TextUtils.isEmpty(C02654j.A0C(this.A00.getContext()))) {
            C0784Ot.A08(new C0784Ot(), this.A00.getContext(), Uri.parse(C02654j.A0C(this.A00.getContext())), this.A00.A09);
        }
        this.A00.A03.A04();
    }

    @Override // com.facebook.ads.redexgen.X.RS
    public final void A44() {
        RT rt = this;
        rt.A00.A0L();
        char c = rt.A00.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    rt = rt;
                    rt.A00.A08.A67(true);
                    c = 3;
                    break;
                case 3:
                    rt = rt;
                    if (!TextUtils.isEmpty(C02654j.A06(rt.A00.getContext()))) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    rt = rt;
                    C0784Ot.A08(new C0784Ot(), rt.A00.getContext(), Uri.parse(C02654j.A06(rt.A00.getContext())), rt.A00.A09);
                    c = 5;
                    break;
                case 5:
                    RT rt2 = rt;
                    rt2.A00.A03.A06();
                    rt2.A00.A0A();
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RS
    public final void A5l(EnumC02664k enumC02664k) {
        RT rt = this;
        C02684m c02684mA03 = null;
        RU.A00(rt.A00);
        rt.A00.A02 = enumC02664k;
        char c = rt.A00.A02 == EnumC02664k.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    rt = rt;
                    c02684mA03 = C02654j.A03(rt.A00.getContext());
                    c = 3;
                    break;
                case 3:
                    rt.A00.A0D(c02684mA03);
                    return;
                case 4:
                    rt = rt;
                    c02684mA03 = C02654j.A04(rt.A00.getContext());
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RS
    public final void A5t(C02684m c02684m) {
        RT rt = this;
        RU.A00(rt.A00);
        rt.A00.A03.A07(c02684m.A01());
        char c = c02684m.A05().isEmpty() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    rt = rt;
                    c02684m = c02684m;
                    rt.A00.A0C(c02684m);
                    if (rt.A00.A05 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    rt = rt;
                    c02684m = c02684m;
                    rt.A00.A05.A4o(c02684m, rt.A00.A02);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    rt = rt;
                    c02684m = c02684m;
                    rt.A00.A0D(c02684m);
                    c = 4;
                    break;
            }
        }
    }
}
