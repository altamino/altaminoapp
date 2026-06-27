package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.widget.EdgeEffect;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6p, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03206p {
    private static final C03186n A00;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            A00 = new C03186n() { // from class: com.facebook.ads.redexgen.X.6o
                @Override // com.facebook.ads.redexgen.X.C03186n
                public final void A00(EdgeEffect edgeEffect, float f, float f2) {
                    edgeEffect.onPull(f, f2);
                }
            };
        } else {
            A00 = new C03186n();
        }
    }

    public static void A00(EdgeEffect edgeEffect, float f, float f2) {
        A00.A00(edgeEffect, f, f2);
    }
}
