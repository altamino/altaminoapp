package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Collections;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dg, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0490Dg implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0490Dg(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0490Dg c0490Dg = this;
        int iMin = 0;
        int loopCount = 0;
        ArrayList arrayList = null;
        AbstractC0528Es abstractC0528EsA0E = null;
        char c = c0490Dg.A00.A05 != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c0490Dg = c0490Dg;
                    arrayList = new ArrayList();
                    iMin = Math.min(c0490Dg.A00.A05.length, c0490Dg.A00.A03.A0O());
                    loopCount = 0;
                    c = 3;
                    break;
                case 3:
                    if (loopCount >= iMin) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0490Dg = c0490Dg;
                    arrayList = arrayList;
                    arrayList.add(c0490Dg.A00.A05[loopCount].name);
                    loopCount++;
                    c = 3;
                    break;
                case 5:
                    c0490Dg = c0490Dg;
                    arrayList = arrayList;
                    Collections.sort(arrayList);
                    abstractC0528EsA0E = c0490Dg.A00.A0E(arrayList);
                    c = 7;
                    break;
                case 6:
                    c0490Dg = c0490Dg;
                    abstractC0528EsA0E = c0490Dg.A00.A07(F6.A05);
                    c = 7;
                    break;
                case 7:
                    return abstractC0528EsA0E;
            }
        }
    }
}
