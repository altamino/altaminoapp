package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0505Dv implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0505Dv(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0505Dv c0505Dv = this;
        AbstractC0528Es abstractC0528EsA04 = null;
        char c = c0505Dv.A00.A01 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 22) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0505Dv = c0505Dv;
                    abstractC0528EsA04 = c0505Dv.A00.A04(c0505Dv.A00.A01.baseRevisionCode);
                    c = 4;
                    break;
                case 4:
                    return abstractC0528EsA04;
                case 5:
                    c0505Dv = c0505Dv;
                    abstractC0528EsA04 = c0505Dv.A00.A07(F6.A05);
                    c = 4;
                    break;
            }
        }
    }
}
