package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C2B implements AnonymousClass20 {
    private final boolean A00;

    public abstract void A00();

    public abstract void A01(boolean z);

    public C2B(boolean z) {
        this.A00 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final void A50() {
        C2B c2b = this;
        char c = c2b.A00 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c2b = c2b;
                    c2b.A00();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c2b = c2b;
                    c2b.A01(false);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final void A57() {
        A01(true);
    }
}
