package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bo, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0446Bo implements InterfaceC0442Bk {
    public final /* synthetic */ C0455Bx A00;

    public C0446Bo(C0455Bx c0455Bx) {
        this.A00 = c0455Bx;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0446Bo c0446Bo = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = c0446Bo.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0446Bo = c0446Bo;
                    abstractC0528EsA07 = c0446Bo.A00.A08(c0446Bo.A00.A00.getGlEsVersion());
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0446Bo = c0446Bo;
                    abstractC0528EsA07 = c0446Bo.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
