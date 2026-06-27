package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import com.facebook.ads.AdError;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3a, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02303a extends C3Z {
    public C02303a(Context context, C3V c3v) {
        super(context, c3v);
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0N() {
        if (this.A00 != null) {
            this.A07.A0F(this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0O(InterfaceC01851h interfaceC01851h, JJ jj, JH jh, final Map<String, Object> map) {
        final C01961s c01961s = (C01961s) interfaceC01851h;
        final AnonymousClass27 anonymousClass27 = new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.3W
            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                this.A01.A0H(map);
                this.A01.A0D(c01961s);
                this.A01.A0C();
            }
        };
        A06().postDelayed(anonymousClass27, jj.A05().A05());
        c01961s.A08(this.A0C, this.A09, this.A08.A06, new InterfaceC01911n() { // from class: com.facebook.ads.redexgen.X.3X
            private static byte[] A02;

            static {
                A01();
            }

            private static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 46);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A02 = new byte[]{55, 20, 27, 27, 16, 7, 85, 28, 24, 5, 7, 16, 6, 6, 28, 26, 27, 85, 19, 28, 7, 16, 17, 52, 55, 101, 52, 59, 49, 98, 54, 85, 84, 120, 91, 84, 84, 95, 72, 118, 85, 93, 93, 83, 84, 93, 115, 87, 74, 72, 95, 73, 73, 83, 85, 84};
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC01911n
            public final void A4v(C01961s c01961s2) {
                this.A00.A07.A0D();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC01911n
            public final void A4w(C01961s c01961s2, View view) {
                C3X c3x = this;
                InterfaceC01851h interfaceC01851h2 = null;
                char c = c01961s2 != c3x.A00.A01 ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return;
                        case 3:
                            c3x = c3x;
                            c01961s2 = c01961s2;
                            view = view;
                            c3x.A00.A06().removeCallbacks(anonymousClass27);
                            interfaceC01851h2 = c3x.A00.A02;
                            c3x.A00.A02 = c01961s2;
                            c3x.A00.A00 = view;
                            if (!c3x.A00.A0D) {
                                c = 4;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 4:
                            c3x = c3x;
                            c01961s2 = c01961s2;
                            super/*com.facebook.ads.redexgen.X.3Z*/.A09();
                            c3x.A00.A07.A0G(c01961s2);
                            c = 2;
                            break;
                        case 5:
                            c3x = c3x;
                            view = view;
                            interfaceC01851h2 = interfaceC01851h2;
                            c3x.A00.A07.A0F(view);
                            c3x.A00.A0D(interfaceC01851h2);
                            c = 2;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC01911n
            public final void A4x(C01961s c01961s2, AdError adError) {
                if (c01961s2 != this.A00.A01) {
                    return;
                }
                this.A00.A06().removeCallbacks(anonymousClass27);
                this.A00.A0D(c01961s2);
                this.A00.A0C();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC01911n
            public final void A4y(C01961s c01961s2) {
                C0695Lf.A05(A00(31, 25, 20), A00(0, 23, 91), A00(23, 8, 45));
                this.A00.A07.A0E();
            }
        }, map);
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0P(String str) {
        C02303a c02303a = this;
        LQ lqA01 = C02363g.A01(c02303a.A0C, 0);
        char c = lqA01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02303a = c02303a;
                    lqA01 = lqA01;
                    c02303a.A5G(lqA01);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c02303a = c02303a;
                    str = str;
                    super.A0P(str);
                    c = 3;
                    break;
            }
        }
    }
}
