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
/* renamed from: com.facebook.ads.redexgen.X.3f, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02353f extends C3Z {
    public C02353f(Context context, C3V c3v) {
        super(context, c3v);
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0N() {
        ((AnonymousClass23) this.A02).A0E();
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0O(InterfaceC01851h interfaceC01851h, JJ jj, JH jh, Map<String, Object> map) {
        ((AnonymousClass24) interfaceC01851h).A0G(this.A0C, new C2L() { // from class: com.facebook.ads.redexgen.X.3e
            private static byte[] A01;

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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A01 = new byte[]{-76, -39, -34, -33, -35, -48, -52, -40, -117, -44, -40, -37, -35, -48, -34, -34, -44, -38, -39, -117, -47, -44, -35, -48, -49, -77, -26, -76, -27, -28, -75, -76, -70, -81, -82, -119, -82, -77, -76, -78, -91, -95, -83, -106, -87, -92, -91, -81, -127, -92, -116, -81, -89, -89, -87, -82, -89, -119, -83, -80, -78, -91, -77, -77, -87, -81, -82};
            }

            @Override // com.facebook.ads.redexgen.X.C2L
            public final void A5S(AnonymousClass23 anonymousClass23) {
                this.A00.A07.A0D();
            }

            @Override // com.facebook.ads.redexgen.X.C2L
            public final void A5T(AnonymousClass23 anonymousClass23) {
                this.A00.A02 = anonymousClass23;
                this.A00.A0D = false;
                super/*com.facebook.ads.redexgen.X.3Z*/.A09();
                this.A00.A07.A0G(anonymousClass23);
            }

            @Override // com.facebook.ads.redexgen.X.C2L
            public final void A5U(AnonymousClass23 anonymousClass23) {
                C0695Lf.A05(A00(33, 34, 54), A00(0, 25, 97), A00(25, 8, 120));
                this.A00.A07.A0E();
            }

            @Override // com.facebook.ads.redexgen.X.C2L
            public final void A5V(AnonymousClass23 anonymousClass23) {
                this.A00.A07.A0C();
            }

            @Override // com.facebook.ads.redexgen.X.C2L
            public final void A5W(AnonymousClass23 anonymousClass23, View view) {
                this.A00.A07.A0F(view);
            }

            @Override // com.facebook.ads.redexgen.X.C2L
            public final void A5X(AnonymousClass23 anonymousClass23, AdError adError) {
                this.A00.A07.A0H(new LQ(adError.getErrorCode(), adError.getErrorMessage()));
            }
        }, map, this.A09, this.A08.A09);
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0P(String str) {
        C02353f c02353f = this;
        LQ lqA01 = C02363g.A01(c02353f.A0C, 0);
        char c = lqA01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02353f = c02353f;
                    lqA01 = lqA01;
                    c02353f.A5G(lqA01);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c02353f = c02353f;
                    str = str;
                    super.A0P(str);
                    c = 3;
                    break;
            }
        }
    }
}
