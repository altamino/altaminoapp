package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0457Bz implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public C0457Bz(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0457Bz c0457Bz = this;
        AbstractC0528Es abstractC0528EsA04 = null;
        char c = c0457Bz.A00.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0457Bz = c0457Bz;
                    abstractC0528EsA04 = c0457Bz.A00.A04(c0457Bz.A00.A01.theme);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA04;
                case 4:
                    c0457Bz = c0457Bz;
                    abstractC0528EsA04 = c0457Bz.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
