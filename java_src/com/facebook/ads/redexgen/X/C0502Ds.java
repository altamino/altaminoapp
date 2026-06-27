package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ds, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0502Ds implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0502Ds(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0502Ds c0502Ds = this;
        AbstractC0528Es abstractC0528EsA06 = null;
        char c = c0502Ds.A00.A01 != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 28) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0502Ds = c0502Ds;
                    abstractC0528EsA06 = c0502Ds.A00.A06(c0502Ds.A00.A01.getLongVersionCode());
                    c = 4;
                    break;
                case 4:
                    return abstractC0528EsA06;
                case 5:
                    c0502Ds = c0502Ds;
                    abstractC0528EsA06 = c0502Ds.A00.A04(c0502Ds.A00.A01.versionCode);
                    c = 4;
                    break;
                case 6:
                    c0502Ds = c0502Ds;
                    abstractC0528EsA06 = c0502Ds.A00.A07(F6.A05);
                    c = 4;
                    break;
            }
        }
    }
}
