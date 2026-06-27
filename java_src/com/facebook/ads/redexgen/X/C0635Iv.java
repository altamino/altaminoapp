package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Iv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0635Iv extends Q1 {
    public final /* synthetic */ C0632Is A00;

    public C0635Iv(C0632Is c0632Is) {
        this.A00 = c0632Is;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K0 k0) {
        C0635Iv c0635Iv = this;
        char c = !c0635Iv.A00.A02 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0635Iv = c0635Iv;
                    if (!c0635Iv.A00.A0D(B7.A04)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0635Iv = c0635Iv;
                    c0635Iv.A00.A03();
                    c0635Iv.A00.A06(true, false);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
