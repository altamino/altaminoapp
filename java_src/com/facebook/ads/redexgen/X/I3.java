package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class I3 implements I2 {
    @Override // com.facebook.ads.redexgen.X.I2
    public final void A2i(String str, boolean z, int i, @Nullable String str2, @Nullable Integer num, @Nullable Long l) {
        IA.A06(str, IA.A01(z), i, str2, num, l);
    }

    @Override // com.facebook.ads.redexgen.X.I2
    public final void A2j(String str, boolean z) {
        IA.A08(str, true, IA.A01(z));
    }

    @Override // com.facebook.ads.redexgen.X.I2
    public final void A2k(String str, boolean z) {
        IA.A08(str, false, IA.A01(z));
    }

    @Override // com.facebook.ads.redexgen.X.I2
    public final boolean A7H(String str) {
        return IC.A05(str);
    }
}
