package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EK implements InterfaceC0442Bk {
    public final /* synthetic */ EV A00;

    public EK(EV ev) {
        this.A00 = ev;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    @SuppressLint({"MissingPermission"})
    public final AbstractC0528Es A31() {
        EK ek = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 17 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ek = ek;
                    abstractC0528EsA07 = ek.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    ek = ek;
                    if (ek.A00.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    ek = ek;
                    abstractC0528EsA07 = ek.A00.A04(EV.A00(ek.A00.A00.getAllCellInfo().get(0)));
                    c = 3;
                    break;
                case 6:
                    ek = ek;
                    abstractC0528EsA07 = ek.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
