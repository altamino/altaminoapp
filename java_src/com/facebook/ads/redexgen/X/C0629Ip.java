package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ip, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0629Ip extends AnonymousClass27 {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C0628Io A01;

    public C0629Ip(C0628Io c0628Io, int i) {
        this.A01 = c0628Io;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        C0629Ip c0629Ip = this;
        char c = c0629Ip.A01.A00.A00.getVideoView() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0629Ip = c0629Ip;
                    if (c0629Ip.A00 > 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0629Ip = c0629Ip;
                    c0629Ip.A01.A00.A00.getVideoView().A0S(false);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
