package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class CE implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public CE(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        CE ce = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 24 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ce = ce;
                    abstractC0528EsA07 = ce.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    ce = ce;
                    if (ce.A00.A01 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    ce = ce;
                    abstractC0528EsA07 = ce.A00.A08(ce.A00.A01.deviceProtectedDataDir);
                    c = 3;
                    break;
                case 6:
                    ce = ce;
                    abstractC0528EsA07 = ce.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
