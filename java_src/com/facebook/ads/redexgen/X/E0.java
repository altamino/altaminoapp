package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class E0 implements InterfaceC0442Bk {
    public final /* synthetic */ E3 A00;

    public E0(E3 e3) {
        this.A00 = e3;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        E0 e0 = this;
        AbstractC0528Es abstractC0528EsA0F = null;
        char c = e0.A00.A00 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 7) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    e0 = e0;
                    abstractC0528EsA0F = e0.A00.A0F(e0.A00.A03());
                    c = 4;
                    break;
                case 4:
                    return abstractC0528EsA0F;
                case 5:
                    e0 = e0;
                    abstractC0528EsA0F = e0.A00.A07(F6.A05);
                    c = 4;
                    break;
            }
        }
    }
}
