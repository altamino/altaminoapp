package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EL implements InterfaceC0442Bk {
    public final /* synthetic */ EV A00;

    public EL(EV ev) {
        this.A00 = ev;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        EL el = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    el = el;
                    abstractC0528EsA07 = el.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    el = el;
                    if (el.A00.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    el = el;
                    abstractC0528EsA07 = el.A00.A0F(el.A00.A00.isDataEnabled());
                    c = 3;
                    break;
                case 6:
                    el = el;
                    abstractC0528EsA07 = el.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
