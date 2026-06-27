package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class ET implements InterfaceC0442Bk {
    public final /* synthetic */ EV A00;

    public ET(EV ev) {
        this.A00 = ev;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        ET et = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        char c = et.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    et = et;
                    abstractC0528EsA08 = et.A00.A08(et.A00.A00.getSimOperatorName());
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    et = et;
                    abstractC0528EsA08 = et.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
