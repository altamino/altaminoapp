package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nm, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0751Nm extends AnonymousClass27 {
    public final /* synthetic */ QL A00;

    public C0751Nm(QL ql) {
        this.A00 = ql;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        if (!this.A00.A03) {
            this.A00.A0A.A02(new K0(this.A00.getCurrentPositionInMillis()));
            this.A00.A07.postDelayed(this, this.A00.A00);
        }
    }
}
