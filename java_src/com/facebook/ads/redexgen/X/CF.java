package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class CF implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public CF(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        CF cf = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        char c = cf.A00.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    cf = cf;
                    abstractC0528EsA08 = cf.A00.A08(cf.A00.A01.processName);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    cf = cf;
                    abstractC0528EsA08 = cf.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
