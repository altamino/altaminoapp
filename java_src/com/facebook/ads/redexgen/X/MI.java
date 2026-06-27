package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class MI extends AbstractC01971t<LN> {
    public final /* synthetic */ MA A00;

    public MI(MA ma) {
        this.A00 = ma;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(LN ln) {
        MI mi = this;
        int iA00 = ln.A00();
        int iA01 = ln.A01();
        char c = mi.A00.A00 > 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (iA00 != iA01) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    mi = mi;
                    if (iA01 <= mi.A00.A00) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    if (iA01 >= iA00 + 500) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (iA01 != 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    mi = mi;
                    mi.A00.A0c(mi.A00.A00);
                    c = 4;
                    break;
                case '\b':
                    mi = mi;
                    mi.A00.A0c(iA01);
                    c = 4;
                    break;
                case '\t':
                    mi = mi;
                    mi.A00.A0c(iA00);
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    public final Class<LN> A01() {
        return LN.class;
    }
}
