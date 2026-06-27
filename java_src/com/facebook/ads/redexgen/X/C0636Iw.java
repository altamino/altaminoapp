package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Iw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0636Iw extends C9N {
    public final /* synthetic */ C0632Is A00;

    public C0636Iw(C0632Is c0632Is) {
        this.A00 = c0632Is;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K4 k4) {
        C0636Iw c0636Iw = this;
        boolean z = false;
        char c = c0636Iw.A00.A03 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c0636Iw = c0636Iw;
                    if (!c0636Iw.A00.A02) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0636Iw = c0636Iw;
                    z = false;
                    c0636Iw.A00.A03 = false;
                    if (!c0636Iw.A00.A0D(B7.A03)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    c0636Iw = c0636Iw;
                    if (!c0636Iw.A00.A04) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0636Iw = c0636Iw;
                    c0636Iw.A00.A04 = z;
                    c0636Iw.A00.A05.postDelayed(new C0637Ix(c0636Iw), c0636Iw.A00.A00);
                    c = 6;
                    break;
                case 6:
                    return;
                case 7:
                    c0636Iw = c0636Iw;
                    if (!c0636Iw.A00.A0D(B7.A02)) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0636Iw = c0636Iw;
                    c0636Iw.A00.A03();
                    c0636Iw.A00.A06(true, true);
                    c = 6;
                    break;
            }
        }
    }
}
