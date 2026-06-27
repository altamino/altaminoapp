package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class D0 implements InterfaceC0442Bk {
    public final /* synthetic */ DB A00;

    public D0(DB db) {
        this.A00 = db;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        D0 d0 = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        char c = Build.VERSION.SDK_INT < 23 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    d0 = d0;
                    abstractC0528EsA08 = d0.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    d0 = d0;
                    abstractC0528EsA08 = d0.A00.A08(Build.VERSION.SECURITY_PATCH);
                    c = 3;
                    break;
            }
        }
    }
}
