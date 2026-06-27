package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ea, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0510Ea implements InterfaceC0442Bk {
    public final /* synthetic */ C0514Ee A00;

    public C0510Ea(C0514Ee c0514Ee) {
        this.A00 = c0514Ee;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        return this.A00.A06(FH.A02(TrafficStats.getMobileRxBytes()));
    }
}
