package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0453Bv implements InterfaceC0442Bk {
    public final /* synthetic */ C0455Bx A00;

    public C0453Bv(C0455Bx c0455Bx) {
        this.A00 = c0455Bx;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0453Bv c0453Bv = this;
        AbstractC0528Es abstractC0528EsA0F = null;
        char c = c0453Bv.A00.A02 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0453Bv = c0453Bv;
                    C0455Bx c0455Bx = c0453Bv.A00;
                    ActivityManager unused = c0453Bv.A00.A02;
                    abstractC0528EsA0F = c0455Bx.A0F(ActivityManager.isRunningInTestHarness());
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA0F;
                case 4:
                    c0453Bv = c0453Bv;
                    abstractC0528EsA0F = c0453Bv.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
