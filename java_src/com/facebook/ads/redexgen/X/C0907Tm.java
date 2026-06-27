package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tm, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0907Tm extends AbstractC02052b {
    public final /* synthetic */ C0914Tu A00;

    public C0907Tm(C0914Tu c0914Tu) {
        this.A00 = c0914Tu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        C0907Tm c0907Tm = this;
        char c = !c0907Tm.A00.A0E.A07() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0907Tm = c0907Tm;
                    c0907Tm.A00.A0E.A05();
                    c0907Tm.A00.A0C.A4H(c0907Tm.A00.A0L, new SN().A04(c0907Tm.A00.A0J).A03(c0907Tm.A00.A0E).A07());
                    if (c0907Tm.A00.A0G == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0907Tm = c0907Tm;
                    c0907Tm.A00.A0G.A2f(c0907Tm.A00.A03.A3Z());
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
