package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.support.annotation.Nullable;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4U, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4U {
    private static byte[] A04;
    private boolean A00 = false;
    private final C3V A01;
    private final C02503u A02;
    private final C4S A03;

    static {
        A03();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 73);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A04 = new byte[]{9, 5, 7, 68, 12, 11, 9, 15, 8, 5, 5, 1, 68, 11, 14, 25, 68, 25, 15, 9, 5, 4, 14, 11, 24, 19, 53, 11, 14, 53, 24, 15, 11, 14, 19};
    }

    public C4U(@Nullable String str, final C3V c3v, C4S c4s, final S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener, final C4E c4e) {
        this.A01 = c3v;
        this.A03 = c4s;
        this.A02 = new C02503u(this.A03.A0B, c3v);
        this.A02.A0E(new AbstractC01861i() { // from class: com.facebook.ads.redexgen.X.4T
            @Override // com.facebook.ads.redexgen.X.AbstractC01861i
            public final void A05() {
                c4e.A0B();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC01861i
            public final void A06() {
                s2SRewardedVideoAdExtendedListener.onRewardServerFailed();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC01861i
            public final void A07() {
                s2SRewardedVideoAdExtendedListener.onRewardServerSuccess();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC01861i
            public final void A08() {
                s2SRewardedVideoAdExtendedListener.onRewardedVideoCompleted();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC01861i
            public final void A0D() {
                s2SRewardedVideoAdExtendedListener.onAdClicked(this.A03.A03.A00());
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC01861i
            public final void A0E() {
                s2SRewardedVideoAdExtendedListener.onLoggingImpression(this.A03.A03.A00());
                c4e.A0D(c3v);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC01861i
            public final void A0G(InterfaceC01851h interfaceC01851h) {
                C2G c2g = (C2G) interfaceC01851h;
                if (this.A03.A03.A02 != null) {
                    c2g.A01(this.A03.A03.A02);
                }
                this.A03.A02();
                this.A03.A00 = true;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC01861i
            public final void A0H(LQ lq) {
                this.A03.A00 = false;
            }
        });
        this.A02.A0F(str);
        this.A02.A0G(c4s.A04);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        C02784w.A00(this.A03.A0B).A07(new Intent(A01(0, 35, 35)));
    }

    public final C3V A06() {
        return this.A01;
    }

    public final C02503u A07() {
        return this.A02;
    }

    public final boolean A08() {
        return this.A00;
    }
}
