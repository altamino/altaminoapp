package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class CC implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public CC(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        CC cc = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        char c = Build.VERSION.SDK_INT < 9 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    cc = cc;
                    abstractC0528EsA08 = cc.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    cc = cc;
                    if (cc.A00.A01 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    cc = cc;
                    abstractC0528EsA08 = cc.A00.A08(cc.A00.A01.nativeLibraryDir);
                    c = 3;
                    break;
                case 6:
                    cc = cc;
                    abstractC0528EsA08 = cc.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
