package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class E7 implements InterfaceC0442Bk {
    public final /* synthetic */ E9 A00;
    public final /* synthetic */ EB A01;
    public final /* synthetic */ List A02;

    public E7(EB eb, List list, E9 e9) {
        this.A01 = eb;
        this.A02 = list;
        this.A00 = e9;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        E7 e7 = this;
        C0521El c0521El = null;
        HashMap map = new HashMap();
        Iterator it = e7.A02.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    c0521El = (C0521El) it.next();
                    if (!c0521El.A02()) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    e7 = e7;
                    map = map;
                    c0521El = c0521El;
                    String str = (String) c0521El.A01();
                    map.put(str, new EA(e7.A01.A00, str, e7.A00));
                    c = 2;
                    break;
                case 5:
                    return e7.A01.A02(map);
            }
        }
    }
}
