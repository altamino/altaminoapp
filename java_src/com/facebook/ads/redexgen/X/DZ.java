package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class DZ implements InterfaceC0442Bk {
    public final /* synthetic */ C0485Db A00;

    public DZ(C0485Db c0485Db) {
        this.A00 = c0485Db;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        DZ dz = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    dz = dz;
                    abstractC0528EsA07 = dz.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    dz = dz;
                    abstractC0528EsA07 = dz.A00.A08(Locale.getDefault().getScript());
                    c = 3;
                    break;
            }
        }
    }
}
