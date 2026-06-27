package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EJ implements InterfaceC0442Bk {
    public final /* synthetic */ EV A00;

    public EJ(EV ev) {
        this.A00 = ev;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        EJ ej = this;
        AbstractC0528Es abstractC0528EsA04 = null;
        char c = ej.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ej = ej;
                    abstractC0528EsA04 = ej.A00.A04(ej.A00.A00.getSimState());
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA04;
                case 4:
                    ej = ej;
                    abstractC0528EsA04 = ej.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
