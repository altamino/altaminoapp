package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class P4 extends AnonymousClass27 {
    public final /* synthetic */ Context A00;

    public P4(Context context) {
        this.A00 = context;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        P4 p4 = this;
        Iterator it = P7.A06.iterator();
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
                    p4 = p4;
                    it = it;
                    P9 p9 = (P9) it.next();
                    P7.A0B(p4.A00, p9.A02(), p9.A00(), p9.A01(), false);
                    c = 2;
                    break;
                case 4:
                    P7.A06.clear();
                    return;
            }
        }
    }
}
