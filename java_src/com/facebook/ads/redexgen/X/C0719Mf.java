package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mf, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0719Mf extends AbstractC01971t<K4> {
    public final /* synthetic */ MA A00;

    public C0719Mf(MA ma) {
        this.A00 = ma;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K4 k4) {
        C0719Mf c0719Mf = this;
        char c = !c0719Mf.A00.A01 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0719Mf = c0719Mf;
                    c0719Mf.A00.A01 = true;
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0719Mf = c0719Mf;
                    c0719Mf.A00.A0W();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    public final Class<K4> A01() {
        return K4.class;
    }
}
