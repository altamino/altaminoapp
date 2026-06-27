package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class O9 implements O7 {
    public final Collection<String> A00;

    private O9() {
        this.A00 = new ArrayList();
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void A6c(String str) {
        this.A00.add(str);
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void flush() {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.A00.iterator();
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
                    sb = sb;
                    it = it;
                    sb.append(it.next());
                    sb.append('\n');
                    c = 2;
                    break;
                case 4:
                    return sb.toString();
            }
        }
    }
}
