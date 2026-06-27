package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class DC implements InterfaceC0442Bk {
    public final /* synthetic */ DE A00;
    public final /* synthetic */ List A01;

    public DC(DE de, List list) {
        this.A00 = de;
        this.A01 = list;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0521El c0521El = null;
        HashMap map = new HashMap();
        Iterator it = this.A01.iterator();
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
                    map = map;
                    c0521El = c0521El;
                    String str = (String) c0521El.A01();
                    DD deviceFeatures = new DD(str);
                    map.put(str, deviceFeatures);
                    c = 2;
                    break;
                case 5:
                    return this.A00.A02(map);
            }
        }
    }
}
