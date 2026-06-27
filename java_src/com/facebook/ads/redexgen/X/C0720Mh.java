package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0720Mh extends AbstractC01971t<KF> {
    public final /* synthetic */ MA A00;

    public C0720Mh(MA ma) {
        this.A00 = ma;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(KF kf) {
        boolean z = false;
        this.A00.A0V();
        MA ma = this.A00;
        int iA00 = kf.A00();
        char c = ((double) kf.A00()) < 2000.0d ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    ma.A0e(iA00, false, z);
                    return;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    public final Class<KF> A01() {
        return KF.class;
    }
}
