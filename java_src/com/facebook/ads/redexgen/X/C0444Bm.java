package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bm, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0444Bm implements InterfaceC0442Bk {
    public final /* synthetic */ C0455Bx A00;

    public C0444Bm(C0455Bx c0455Bx) {
        this.A00 = c0455Bx;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0444Bm c0444Bm = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 23 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0444Bm = c0444Bm;
                    abstractC0528EsA07 = c0444Bm.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0444Bm = c0444Bm;
                    if (c0444Bm.A00.A02 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0444Bm = c0444Bm;
                    abstractC0528EsA07 = c0444Bm.A00.A04(c0444Bm.A00.A02.getLockTaskModeState());
                    c = 3;
                    break;
                case 6:
                    c0444Bm = c0444Bm;
                    abstractC0528EsA07 = c0444Bm.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
