package com.facebook.ads.redexgen.X;

import org.json.JSONException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class KI extends AnonymousClass27 {
    public final /* synthetic */ KL A00;

    public KI(KL kl) {
        this.A00 = kl;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() throws JSONException, InterruptedException {
        KL.A00(this.A00);
        if (this.A00.A01 > 0) {
            try {
                Thread.sleep(this.A00.A01);
            } catch (InterruptedException unused) {
            }
        }
        this.A00.A0D();
    }
}
