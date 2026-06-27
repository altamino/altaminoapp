package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class MM extends AbstractC01971t<K0> {
    public final /* synthetic */ MA A00;

    public MM(MA ma) {
        this.A00 = ma;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K0 k0) {
        MM mm = this;
        int iA00 = k0.A00();
        char c = mm.A00.A00 > 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    mm = mm;
                    if (iA00 != mm.A00.A0B.getDuration()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    mm = mm;
                    if (mm.A00.A0B.getDuration() <= mm.A00.A00) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    mm = mm;
                    mm.A00.A0b(iA00);
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    public final Class<K0> A01() {
        return K0.class;
    }
}
