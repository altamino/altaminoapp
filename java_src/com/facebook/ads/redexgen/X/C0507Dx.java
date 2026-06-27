package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0507Dx implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0507Dx(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0507Dx c0507Dx = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = c0507Dx.A00.A04 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0507Dx = c0507Dx;
                    abstractC0528EsA07 = c0507Dx.A00.A04(c0507Dx.A00.A04.length);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0507Dx = c0507Dx;
                    abstractC0528EsA07 = c0507Dx.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
