package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0497Dn implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0497Dn(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0497Dn c0497Dn = this;
        AbstractC0528Es abstractC0528EsA0F = null;
        char c = c0497Dn.A00.A02 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0497Dn = c0497Dn;
                    abstractC0528EsA0F = c0497Dn.A00.A0F(c0497Dn.A00.A02.isSafeMode());
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA0F;
                case 4:
                    c0497Dn = c0497Dn;
                    abstractC0528EsA0F = c0497Dn.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
