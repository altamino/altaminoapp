package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;
import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0445Bn implements InterfaceC0442Bk {
    public final /* synthetic */ C0455Bx A00;

    public C0445Bn(C0455Bx c0455Bx) {
        this.A00 = c0455Bx;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0445Bn c0445Bn = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 16 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0445Bn = c0445Bn;
                    abstractC0528EsA07 = c0445Bn.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0445Bn = c0445Bn;
                    if (c0445Bn.A00.A02 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0445Bn = c0445Bn;
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    c0445Bn.A00.A02.getMemoryInfo(memoryInfo);
                    abstractC0528EsA07 = c0445Bn.A00.A06(memoryInfo.totalMem / 1048576);
                    c = 3;
                    break;
                case 6:
                    c0445Bn = c0445Bn;
                    abstractC0528EsA07 = c0445Bn.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
