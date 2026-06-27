package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class C4 implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public C4(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() throws Throwable {
        C4 c4 = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        String strA06 = FD.A00(c4.A00.A00).A06(10010);
        char c = strA06 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4 = c4;
                    strA06 = strA06;
                    abstractC0528EsA08 = c4.A00.A08(strA06);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    c4 = c4;
                    abstractC0528EsA08 = c4.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
