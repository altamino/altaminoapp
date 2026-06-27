package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class OV extends AnonymousClass27 {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ View A02;
    public final /* synthetic */ View A03;

    public OV(View view, View view2, int i, int i2) {
        this.A02 = view;
        this.A03 = view2;
        this.A01 = i;
        this.A00 = i2;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        Rect rect = new Rect();
        this.A02.getHitRect(rect);
        View view = (View) this.A02.getParent();
        Rect rect2 = new Rect();
        view.getGlobalVisibleRect(rect2);
        Rect rect3 = new Rect();
        this.A03.getGlobalVisibleRect(rect3);
        int i = rect2.left - rect3.left;
        int i2 = rect2.top - rect3.top;
        int i3 = rect.left;
        int deltaY = this.A01;
        rect.left = i3 + (i - deltaY);
        int i4 = rect.top;
        int deltaY2 = this.A00;
        rect.top = i4 + (i2 - deltaY2);
        int i5 = rect.right;
        int deltaY3 = this.A01;
        rect.right = i5 + deltaY3 + i;
        int i6 = rect.bottom;
        int deltaY4 = this.A00;
        rect.bottom = i6 + deltaY4 + i2;
        this.A03.setTouchDelegate(new TouchDelegate(rect, this.A02));
    }
}
