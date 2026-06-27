package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class E2 implements InterfaceC0442Bk {
    public final /* synthetic */ E3 A00;

    public E2(E3 e3) {
        this.A00 = e3;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        E2 e2 = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    e2 = e2;
                    abstractC0528EsA07 = e2.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    e2 = e2;
                    if (e2.A00.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    e2 = e2;
                    abstractC0528EsA07 = e2.A00.A0F(e2.A00.A00.isPowerSaveMode());
                    c = 3;
                    break;
                case 6:
                    e2 = e2;
                    abstractC0528EsA07 = e2.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
