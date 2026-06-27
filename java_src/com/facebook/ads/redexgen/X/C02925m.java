package com.facebook.ads.redexgen.X;

import android.support.annotation.RequiresApi;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@RequiresApi(19)
/* renamed from: com.facebook.ads.redexgen.X.5m, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C02925m extends C02915l {
    @Override // com.facebook.ads.redexgen.X.C02895j, com.facebook.ads.redexgen.X.C02875h
    public final void A0C(View view, int i) {
        view.setImportantForAccessibility(i);
    }

    @Override // com.facebook.ads.redexgen.X.C02875h
    public final boolean A0I(View view) {
        return view.isAttachedToWindow();
    }
}
