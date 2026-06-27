package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class C0 implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public C0(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0 c0 = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0 = c0;
                    abstractC0528EsA07 = c0.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0 = c0;
                    if (c0.A00.A01 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0 = c0;
                    abstractC0528EsA07 = c0.A00.A04(c0.A00.A01.category);
                    c = 3;
                    break;
                case 6:
                    c0 = c0;
                    abstractC0528EsA07 = c0.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
