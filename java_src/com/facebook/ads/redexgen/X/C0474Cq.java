package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Cq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0474Cq implements InterfaceC0442Bk {
    public final /* synthetic */ DB A00;

    public C0474Cq(DB db) {
        this.A00 = db;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0474Cq c0474Cq = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0474Cq = c0474Cq;
                    abstractC0528EsA07 = c0474Cq.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0474Cq = c0474Cq;
                    abstractC0528EsA07 = c0474Cq.A00.A08(Build.getSerial());
                    c = 3;
                    break;
            }
        }
    }
}
