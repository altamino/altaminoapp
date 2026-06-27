package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Cf, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0463Cf implements InterfaceC0442Bk {
    public final /* synthetic */ C0468Ck A00;

    public C0463Cf(C0468Ck c0468Ck) {
        this.A00 = c0468Ck;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0463Cf c0463Cf = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        char c = c0463Cf.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0463Cf = c0463Cf;
                    abstractC0528EsA08 = c0463Cf.A00.A08(c0463Cf.A00.A00.getAddress());
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    c0463Cf = c0463Cf;
                    abstractC0528EsA08 = c0463Cf.A00.A07(F6.A04);
                    c = 3;
                    break;
            }
        }
    }
}
