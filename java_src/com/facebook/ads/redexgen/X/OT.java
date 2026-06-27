package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class OT implements InterfaceC0781Oq {
    public final /* synthetic */ OQ A00;

    public OT(OQ oq) {
        this.A00 = oq;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0781Oq
    public final void A6e() {
        if (this.A00.A02 != null) {
            this.A00.A02.A2f(this.A00.A03.A3g());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0781Oq
    public final void A6g(C0783Os c0783Os) {
        OT ot = this;
        char c = ot.A00.A02 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0783Os = c0783Os;
                    if (c0783Os == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0783Os = c0783Os;
                    if (!c0783Os.A00()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    ot = ot;
                    ot.A00.A02.A2f(ot.A00.A03.A3h());
                    c = 2;
                    break;
                case 6:
                    ot = ot;
                    ot.A00.A02.A2f(ot.A00.A03.A3g());
                    c = 2;
                    break;
            }
        }
    }
}
