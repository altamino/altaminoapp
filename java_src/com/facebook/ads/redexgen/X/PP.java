package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class PP implements PO {
    public final /* synthetic */ PQ A00;

    public PP(PQ pq) {
        this.A00 = pq;
    }

    @Override // com.facebook.ads.redexgen.X.PO
    public final void A5u(String str) {
        this.A00.A0A.setProgress(100);
        this.A00.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.X.PO
    public final void A5w(String str) {
        this.A00.A05 = true;
        this.A00.A09.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.PO
    public final void A64(int i) {
        if (!this.A00.A05) {
            return;
        }
        this.A00.A0A.setProgress(i);
    }

    @Override // com.facebook.ads.redexgen.X.PO
    public final void A66(String str) {
        this.A00.A09.setTitle(str);
    }
}
