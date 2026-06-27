package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Il, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0625Il extends AbstractC01971t<K0> {
    public final /* synthetic */ C0624Ik A00;

    public C0625Il(C0624Ik c0624Ik) {
        this.A00 = c0624Ik;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K0 k0) {
        if (this.A00.getVideoView() == null) {
            return;
        }
        this.A00.A00.setText(this.A00.A05(this.A00.getVideoView().getDuration() - this.A00.getVideoView().getCurrentPositionInMillis()));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    public final Class<K0> A01() {
        return K0.class;
    }
}
