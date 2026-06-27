package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.It, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0633It extends JM {
    public final /* synthetic */ C0632Is A00;

    public C0633It(C0632Is c0632Is) {
        this.A00 = c0632Is;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(JO jo) {
        C0633It c0633It = this;
        char c = c0633It.A00.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0633It = c0633It;
                    if (!c0633It.A00.A03) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    jo = jo;
                    if (jo.A00().getAction() != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0633It = c0633It;
                    c0633It.A00.A05.removeCallbacksAndMessages(null);
                    if (!c0633It.A00.A0D(B7.A04)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0633It = c0633It;
                    c0633It.A00.A03();
                    c0633It.A00.A06(true, false);
                    c = 7;
                    break;
                case 7:
                    c0633It = c0633It;
                    if (!c0633It.A00.A02) {
                        c = 3;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0633It = c0633It;
                    c0633It.A00.A05.postDelayed(new C0634Iu(c0633It), c0633It.A00.A00);
                    c = 3;
                    break;
            }
        }
    }
}
