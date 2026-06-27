package com.facebook.ads.redexgen.X;

import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0506Dw implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0506Dw(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0506Dw c0506Dw = this;
        int iMin = 0;
        int i = 0;
        ArrayList arrayList = null;
        AbstractC0528Es abstractC0528EsA0E = null;
        char c = c0506Dw.A00.A04 != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c0506Dw = c0506Dw;
                    arrayList = new ArrayList();
                    iMin = Math.min(c0506Dw.A00.A04.length, c0506Dw.A00.A03.A0O());
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    if (i >= iMin) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0506Dw = c0506Dw;
                    arrayList = arrayList;
                    arrayList.add(c0506Dw.A00.A04[i].name);
                    i++;
                    c = 3;
                    break;
                case 5:
                    c0506Dw = c0506Dw;
                    arrayList = arrayList;
                    abstractC0528EsA0E = c0506Dw.A00.A0E(arrayList);
                    c = 7;
                    break;
                case 6:
                    c0506Dw = c0506Dw;
                    abstractC0528EsA0E = c0506Dw.A00.A07(F6.A05);
                    c = 7;
                    break;
                case 7:
                    return abstractC0528EsA0E;
            }
        }
    }
}
