package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ff, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0541Ff extends AbstractC01971t<K0> {
    public final /* synthetic */ FT A00;

    public C0541Ff(FT ft) {
        this.A00 = ft;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K0 k0) {
        C0541Ff c0541Ff = this;
        int currentPositionInMillis = 0;
        char c = !c0541Ff.A00.A05.get() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0541Ff = c0541Ff;
                    if (c0541Ff.A00.getVideoView() != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c0541Ff = c0541Ff;
                    currentPositionInMillis = c0541Ff.A00.A00 - (c0541Ff.A00.getVideoView().getCurrentPositionInMillis() / 1000);
                    if (currentPositionInMillis <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0541Ff = c0541Ff;
                    c0541Ff.A00.A02.setText(c0541Ff.A00.A03 + ' ' + currentPositionInMillis);
                    c = 3;
                    break;
                case 6:
                    c0541Ff = c0541Ff;
                    c0541Ff.A00.A02.setText(c0541Ff.A00.A04);
                    c0541Ff.A00.A05.set(true);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    public final Class<K0> A01() {
        return K0.class;
    }
}
