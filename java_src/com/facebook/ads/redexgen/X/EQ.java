package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EQ implements InterfaceC0442Bk {
    public final /* synthetic */ EV A00;

    public EQ(EV ev) {
        this.A00 = ev;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        EQ eq = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = eq.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    eq = eq;
                    abstractC0528EsA07 = eq.A00.A08(eq.A00.A00.getNetworkOperator());
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    eq = eq;
                    abstractC0528EsA07 = eq.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
