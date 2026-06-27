package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class DV implements InterfaceC0442Bk {
    public final /* synthetic */ DW A00;

    public DV(DW dw) {
        this.A00 = dw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        DV dv = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 16 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    dv = dv;
                    abstractC0528EsA07 = dv.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    dv = dv;
                    if (dv.A00.A00 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    dv = dv;
                    abstractC0528EsA07 = dv.A00.A07(F6.A05);
                    c = 3;
                    break;
                case 6:
                    dv = dv;
                    abstractC0528EsA07 = dv.A00.A0F(dv.A00.A00.isKeyguardSecure());
                    c = 3;
                    break;
            }
        }
    }
}
