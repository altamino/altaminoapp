package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class T5 implements InterfaceC0796Pf {
    public final /* synthetic */ TC A00;

    public T5(TC tc) {
        this.A00 = tc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0796Pf
    public final void A53() {
        T5 t5 = this;
        char c = t5.A00.A0N() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    t5 = t5;
                    t5.A00.A0G();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    t5 = t5;
                    if (!t5.A00.getAdInfo().A09()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    t5 = t5;
                    t5.A00.A0C.A0M();
                    c = 3;
                    break;
                case 6:
                    t5 = t5;
                    if (t5.A00.A01 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    t5 = t5;
                    t5.A00.A01.A53();
                    c = 3;
                    break;
            }
        }
    }
}
