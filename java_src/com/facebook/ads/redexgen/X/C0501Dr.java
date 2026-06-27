package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0501Dr implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0501Dr(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0501Dr c0501Dr = this;
        AbstractC0528Es abstractC0528EsA06 = null;
        char c = c0501Dr.A00.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0501Dr = c0501Dr;
                    abstractC0528EsA06 = c0501Dr.A00.A06(c0501Dr.A00.A01.lastUpdateTime);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA06;
                case 4:
                    c0501Dr = c0501Dr;
                    abstractC0528EsA06 = c0501Dr.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
