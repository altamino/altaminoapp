package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class U8 implements InterfaceC0897Tc {
    public final /* synthetic */ UA A00;

    public U8(UA ua) {
        this.A00 = ua;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0897Tc
    public final void A6I(int i) {
        U8 u8 = this;
        u8.A00.A0G(i, true);
        char c = u8.A00.A0N() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    u8 = u8;
                    u8.A00.A07();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    u8 = u8;
                    u8.A00.A0B(i);
                    c = 3;
                    break;
            }
        }
    }
}
