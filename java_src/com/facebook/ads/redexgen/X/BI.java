package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BI {
    private final List<BV> A00 = new ArrayList();

    public final void A00() {
        Iterator<BV> it = this.A00.iterator();
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
                    it = it;
                    it.next().A6U();
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A01(BV bv) {
        this.A00.add(bv);
    }
}
