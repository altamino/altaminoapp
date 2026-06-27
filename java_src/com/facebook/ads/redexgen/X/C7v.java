package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7v, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C7v {
    private C7v() {
    }

    @Deprecated
    private final void A00(Canvas canvas, C8H c8h) {
    }

    @Deprecated
    private final void A01(Canvas canvas, C8H c8h) {
    }

    @Deprecated
    private final void A02(Rect rect, int i, C8H c8h) {
        rect.set(0, 0, 0, 0);
    }

    public final void A03(Canvas canvas, C8H c8h, C8D c8d) {
        A00(canvas, c8h);
    }

    public final void A04(Canvas canvas, C8H c8h, C8D c8d) {
        A01(canvas, c8h);
    }

    public final void A05(Rect rect, View view, C8H c8h, C8D c8d) {
        A02(rect, ((C7L) view.getLayoutParams()).A00(), c8h);
    }
}
