package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QP implements InterfaceC03718p {
    public final /* synthetic */ QX A00;

    public QP(QX qx) {
        this.A00 = qx;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03718p
    public final boolean A3t() {
        boolean z = false;
        char c = !this.A00.A06 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
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
