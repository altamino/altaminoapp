package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class KJ extends AnonymousClass27 {
    public final /* synthetic */ KL A00;

    public KJ(KL kl) {
        this.A00 = kl;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        this.A00.A0D = false;
        if (!this.A00.A0C.getQueue().isEmpty()) {
            return;
        }
        this.A00.A0C.execute(this.A00.A0B);
    }
}
