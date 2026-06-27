package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class B2 {
    private final List<B1> A00 = new ArrayList();

    public final void A00(B1 b1) {
        this.A00.add(b1);
    }

    public final void A01(EnumC0522Em enumC0522Em) {
        Iterator<B1> it = this.A00.iterator();
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
                    enumC0522Em = enumC0522Em;
                    it = it;
                    it.next().A7G(enumC0522Em);
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }
}
