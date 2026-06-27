package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class PL implements InterfaceC03718p {
    public final /* synthetic */ PQ A00;

    public PL(PQ pq) {
        this.A00 = pq;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03718p
    public final boolean A3t() {
        PL pl2 = this;
        boolean z = false;
        char c = pl2.A00.A0B.canGoBack() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    pl2 = pl2;
                    pl2.A00.A0B.goBack();
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
