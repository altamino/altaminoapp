package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAd;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9k, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03919k implements AnonymousClass20 {
    private final List<AnonymousClass29> A00;
    public final /* synthetic */ C03929l A01;

    public C03919k(C03929l c03929l, List<AnonymousClass29> list) {
        this.A01 = c03929l;
        this.A00 = list;
    }

    private void A00() {
        C03919k c03919k = this;
        c03919k.A01.A01.A07(true);
        c03919k.A01.A01.A04();
        c03919k.A01.A01.A05(0);
        Iterator<AnonymousClass29> it = c03919k.A00.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03919k = c03919k;
                    it = it;
                    c03919k.A01.A01.A06(new NativeAd(c03919k.A01.A00, new L8(c03919k.A01.A00, it.next(), null, L8.A0G(), c03919k.A01.A01.A03())));
                    c = 2;
                    break;
                case 4:
                    final C03919k c03919k2 = c03919k;
                    MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.9j
                        @Override // com.facebook.ads.redexgen.X.C2M
                        public final void A01() {
                            if (this.A00.A01.A01.A02() == null) {
                                return;
                            }
                            this.A00.A01.A01.A02().onAdsLoaded();
                        }
                    });
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final void A50() {
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final void A57() {
        A00();
    }
}
