package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Cr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0475Cr implements InterfaceC0442Bk {
    public final /* synthetic */ DB A00;

    public C0475Cr(DB db) {
        this.A00 = db;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0475Cr c0475Cr = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        String[] strArr = null;
        char c = Build.VERSION.SDK_INT < 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0475Cr = c0475Cr;
                    abstractC0528EsA07 = c0475Cr.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    strArr = Build.SUPPORTED_ABIS;
                    if (strArr == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0475Cr = c0475Cr;
                    strArr = strArr;
                    abstractC0528EsA07 = c0475Cr.A00.A0E(Arrays.asList(strArr));
                    c = 3;
                    break;
                case 6:
                    c0475Cr = c0475Cr;
                    abstractC0528EsA07 = c0475Cr.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
