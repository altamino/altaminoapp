package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0827Qk extends C9L {
    public final /* synthetic */ C0836Qt A00;

    public C0827Qk(C0836Qt c0836Qt) {
        this.A00 = c0836Qt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K2 k2) {
        C0827Qk c0827Qk = this;
        char c = c0827Qk.A00.A08 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0827Qk = c0827Qk;
                    c0827Qk.A00.A0G = true;
                    if (!c0827Qk.A00.A0R.A0T()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0827Qk = c0827Qk;
                    c0827Qk.A00.A0Q();
                    c = 4;
                    break;
                case 4:
                    c0827Qk = c0827Qk;
                    c0827Qk.A00.A0g.set(c0827Qk.A00.A08.A0U());
                    c0827Qk.A00.A0S();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }
}
