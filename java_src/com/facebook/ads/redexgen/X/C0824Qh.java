package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0824Qh implements InterfaceC03718p {
    public final /* synthetic */ C0836Qt A00;

    public C0824Qh(C0836Qt c0836Qt) {
        this.A00 = c0836Qt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03718p
    public final boolean A3t() {
        C0824Qh c0824Qh = this;
        boolean z = false;
        char c = c0824Qh.A00.A0I ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0824Qh = c0824Qh;
                    if (!c0824Qh.A00.A0F) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
