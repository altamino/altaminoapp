package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ib, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0615Ib extends AnonymousClass27 {
    public final /* synthetic */ C0614Ia A00;

    public C0615Ib(C0614Ia c0614Ia) {
        this.A00 = c0614Ia;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        C0615Ib c0615Ib = this;
        char c = !c0615Ib.A00.A00.A00.A0A ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0615Ib = c0615Ib;
                    if (!c0615Ib.A00.A00.A00.A03) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0615Ib = c0615Ib;
                    c0615Ib.A00.A00.A00.A05();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
