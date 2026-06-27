package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0448Bq implements InterfaceC0442Bk {
    public final /* synthetic */ C0455Bx A00;

    public C0448Bq(C0455Bx c0455Bx) {
        this.A00 = c0455Bx;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0448Bq c0448Bq = this;
        AbstractC0528Es abstractC0528EsA04 = null;
        char c = c0448Bq.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0448Bq = c0448Bq;
                    abstractC0528EsA04 = c0448Bq.A00.A04(c0448Bq.A00.A00.reqKeyboardType);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA04;
                case 4:
                    c0448Bq = c0448Bq;
                    abstractC0528EsA04 = c0448Bq.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
