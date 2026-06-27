package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TH implements InterfaceC0796Pf {
    public final /* synthetic */ InterfaceC0796Pf A00;
    public final /* synthetic */ TP A01;

    public TH(TP tp, InterfaceC0796Pf interfaceC0796Pf) {
        this.A01 = tp;
        this.A00 = interfaceC0796Pf;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0796Pf
    public final void A53() {
        TH th = this;
        char c = th.A01.A0X() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    th = th;
                    th.A01.A0Q(false);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    th = th;
                    if (th.A00 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    th = th;
                    th.A00.A53();
                    c = 3;
                    break;
            }
        }
    }
}
