package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TL implements PO {
    public final /* synthetic */ TP A00;

    public TL(TP tp) {
        this.A00 = tp;
    }

    @Override // com.facebook.ads.redexgen.X.PO
    public final void A5u(String str) {
        this.A00.A0H = false;
        this.A00.A0B.setProgress(100);
        OY.A0Q(this.A00.A0B, 8);
    }

    @Override // com.facebook.ads.redexgen.X.PO
    public final void A5w(String str) {
        this.A00.A0H = true;
        OY.A0Q(this.A00.A0B, 0);
        this.A00.A0A.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.PO
    public final void A64(int i) {
        if (!this.A00.A0H) {
            return;
        }
        this.A00.A0B.setProgress(i);
    }

    @Override // com.facebook.ads.redexgen.X.PO
    public final void A66(String str) {
        this.A00.A0A.setTitle(str);
    }
}
