package com.facebook.ads.redexgen.X;

import android.icu.util.TimeZone;
import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EW implements InterfaceC0442Bk {
    public final /* synthetic */ EZ A00;

    public EW(EZ ez) {
        this.A00 = ez;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        EW ew = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 24 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ew = ew;
                    abstractC0528EsA07 = ew.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    ew = ew;
                    abstractC0528EsA07 = ew.A00.A08(TimeZone.getDefault().getID());
                    c = 3;
                    break;
            }
        }
    }
}
