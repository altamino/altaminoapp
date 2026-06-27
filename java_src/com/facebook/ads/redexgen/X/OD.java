package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class OD implements O7 {
    public final O6 A00;
    public final O7 A01;

    public OD(O7 o7, int i, int i2) {
        this.A01 = o7;
        this.A00 = new O6(i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void A6c(String str) {
        OD od = this;
        od.A00.A04(str);
        char c = od.A00.A02() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    od = od;
                    if (!OE.A08(od.A00)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    od = od;
                    od.A01.A6c(od.A00.A02());
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void flush() {
        OD od = this;
        od.A00.A03();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    od = od;
                    if (od.A00.A02() == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    od = od;
                    if (!OE.A08(od.A00)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    od = od;
                    od.A01.A6c(od.A00.A02());
                    c = 5;
                    break;
                case 5:
                    od = od;
                    od.A00.A03();
                    c = 2;
                    break;
                case 6:
                    return;
            }
        }
    }
}
