package com.facebook.ads.redexgen.X;

import android.os.SystemClock;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EC implements InterfaceC0442Bk {
    public final /* synthetic */ EE A00;

    public EC(EE ee) {
        this.A00 = ee;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        return this.A00.A03(SystemClock.elapsedRealtime() / 1000.0f);
    }
}
