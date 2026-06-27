package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0494Dk implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0494Dk(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0494Dk c0494Dk = this;
        AbstractC0528Es abstractC0528EsA04 = null;
        char c = c0494Dk.A00.A06 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0494Dk = c0494Dk;
                    abstractC0528EsA04 = c0494Dk.A00.A04(c0494Dk.A00.A06.length);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA04;
                case 4:
                    c0494Dk = c0494Dk;
                    abstractC0528EsA04 = c0494Dk.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
