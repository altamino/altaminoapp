package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ko, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0679Ko implements InterfaceC02072d {
    public final /* synthetic */ C0684Ku A00;

    public C0679Ko(C0684Ku c0684Ku) {
        this.A00 = c0684Ku;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02072d
    public final void A5P(boolean z) {
        C0679Ko c0679Ko = this;
        c0679Ko.A00.A0C.set(z);
        char c = c0679Ko.A00.A0D.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0679Ko = c0679Ko;
                    if (c0679Ko.A00.A02 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0679Ko = c0679Ko;
                    c0679Ko.A00.A02.A5y(z);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
