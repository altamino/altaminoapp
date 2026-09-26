package com.google.android.gms.internal.base;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class zal extends ImageView {
    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.ads", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void onDraw(Canvas canvas) {
        throw null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void onMeasure(int i10, int i11) {
        throw null;
    }
}
