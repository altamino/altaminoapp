package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0886Sr {
    private static final int A01 = C02794x.A01(ViewCompat.MEASURED_STATE_MASK, 115);
    private static final int A00 = C02794x.A01(-1, 0);

    private C0886Sr() {
    }

    public static void A00(Context context, ViewGroup viewGroup, String str) {
        new SM(viewGroup).A07(str);
        View view = new View(context);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        OY.A0M(view);
        viewGroup.addView(view, 0);
    }
}
