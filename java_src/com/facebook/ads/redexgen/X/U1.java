package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class U1 {
    public final int[] A00(View view, int i, int i2) {
        C7L c7l = (C7L) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, view.getPaddingLeft() + view.getPaddingRight(), c7l.width), ViewGroup.getChildMeasureSpec(i2, view.getPaddingTop() + view.getPaddingBottom(), c7l.height));
        return new int[]{view.getMeasuredWidth() + c7l.leftMargin + c7l.rightMargin, view.getMeasuredHeight() + c7l.bottomMargin + c7l.topMargin};
    }
}
