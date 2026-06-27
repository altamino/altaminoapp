package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class SB extends AbstractC02052b {
    public final /* synthetic */ SI A00;

    public SB(SI si) {
        this.A00 = si;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        SB sb = this;
        char c = !sb.A00.A06 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    sb = sb;
                    if (!sb.A00.A01.A07()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    sb = sb;
                    sb.A00.A01.A05();
                    c = 4;
                    break;
                case 4:
                    sb = sb;
                    if (sb.A00.A09.get() == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    sb = sb;
                    ((InterfaceC01921o) sb.A00.A09.get()).A5R();
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }
}
