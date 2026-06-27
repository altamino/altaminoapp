package com.facebook.ads.redexgen.X;

import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@RequiresApi(21)
/* renamed from: com.facebook.ads.redexgen.X.6Q, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C6Q extends C6P {
    @Override // com.facebook.ads.redexgen.X.C6P, com.facebook.ads.redexgen.X.C6L
    public final Object A00(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        return AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2);
    }

    @Override // com.facebook.ads.redexgen.X.C6P, com.facebook.ads.redexgen.X.C6L
    public final Object A01(int i, int i2, boolean z, int i3) {
        return AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3);
    }
}
