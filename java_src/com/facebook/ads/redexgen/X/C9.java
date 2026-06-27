package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class C9 implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public C9(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C9 c9 = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 4 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c9 = c9;
                    abstractC0528EsA07 = c9.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c9 = c9;
                    if (c9.A00.A01 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c9 = c9;
                    abstractC0528EsA07 = c9.A00.A04(c9.A00.A01.targetSdkVersion);
                    c = 3;
                    break;
                case 6:
                    c9 = c9;
                    abstractC0528EsA07 = c9.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
