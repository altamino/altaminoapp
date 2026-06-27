package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class C7 implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public C7(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C7 c7 = this;
        AbstractC0528Es abstractC0528EsA04 = null;
        char c = c7.A00.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7 = c7;
                    abstractC0528EsA04 = c7.A00.A04(c7.A00.A01.flags);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA04;
                case 4:
                    c7 = c7;
                    abstractC0528EsA04 = c7.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
