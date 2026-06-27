package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class IZ extends JM {
    public final /* synthetic */ IS A00;

    public IZ(IS is) {
        this.A00 = is;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(JO jo) {
        IZ iz = this;
        char c = iz.A00.A01 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    jo = jo;
                    if (jo.A00().getAction() != 0) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    iz = iz;
                    iz.A00.A04.removeCallbacksAndMessages(null);
                    iz.A00.A07(new C0614Ia(iz));
                    c = 2;
                    break;
            }
        }
    }
}
