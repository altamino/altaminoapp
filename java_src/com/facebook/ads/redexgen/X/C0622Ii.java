package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ii, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0622Ii extends C9N {
    public final /* synthetic */ IS A00;

    public C0622Ii(IS is) {
        this.A00 = is;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K4 k4) {
        C0622Ii c0622Ii = this;
        char c = !c0622Ii.A00.A03 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0622Ii = c0622Ii;
                    if (c0622Ii.A00.A02 == IT.A02) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0622Ii = c0622Ii;
                    if (!c0622Ii.A00.A09) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0622Ii = c0622Ii;
                    c0622Ii.A00.A02 = null;
                    c0622Ii.A00.A05();
                    c = 2;
                    break;
                case 6:
                    c0622Ii = c0622Ii;
                    c0622Ii.A00.A06(0, 8);
                    c = 2;
                    break;
            }
        }
    }
}
