package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class D1 implements InterfaceC0442Bk {
    public final /* synthetic */ DB A00;

    public D1(DB db) {
        this.A00 = db;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        D1 d1 = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 23 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    d1 = d1;
                    abstractC0528EsA07 = d1.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    d1 = d1;
                    abstractC0528EsA07 = d1.A00.A08(Build.VERSION.BASE_OS);
                    c = 3;
                    break;
            }
        }
    }
}
