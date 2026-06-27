package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dp, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0499Dp implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0499Dp(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0499Dp c0499Dp = this;
        AbstractC0528Es abstractC0528EsA0F = null;
        char c = Build.VERSION.SDK_INT < 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0499Dp = c0499Dp;
                    abstractC0528EsA0F = c0499Dp.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA0F;
                case 4:
                    c0499Dp = c0499Dp;
                    if (c0499Dp.A00.A02 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0499Dp = c0499Dp;
                    abstractC0528EsA0F = c0499Dp.A00.A0F(c0499Dp.A00.A02.canRequestPackageInstalls());
                    c = 3;
                    break;
                case 6:
                    c0499Dp = c0499Dp;
                    abstractC0528EsA0F = c0499Dp.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
