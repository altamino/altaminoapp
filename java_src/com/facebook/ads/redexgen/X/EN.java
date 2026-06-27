package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EN implements InterfaceC0442Bk {
    public final /* synthetic */ EV A00;

    public EN(EV ev) {
        this.A00 = ev;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        EN en = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = en.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    en = en;
                    abstractC0528EsA07 = en.A00.A07(F6.A05);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    if (Build.VERSION.SDK_INT < 24) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    en = en;
                    abstractC0528EsA07 = en.A00.A04(en.A00.A00.getVoiceNetworkType());
                    c = 3;
                    break;
                case 6:
                    en = en;
                    abstractC0528EsA07 = en.A00.A04(en.A00.A00.getNetworkType());
                    c = 3;
                    break;
            }
        }
    }
}
