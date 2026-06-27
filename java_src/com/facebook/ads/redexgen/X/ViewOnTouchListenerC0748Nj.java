package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnTouchListenerC0748Nj implements View.OnTouchListener {
    public final /* synthetic */ QL A00;

    public ViewOnTouchListenerC0748Nj(QL ql) {
        this.A00 = ql;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.A00.A0A.A02(new JO(view, motionEvent));
        return false;
    }
}
