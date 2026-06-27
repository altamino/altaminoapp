package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class HomeFrameLayout extends FrameLayout {
    int exh;

    public HomeFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.exh != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2) + this.exh, View.MeasureSpec.getMode(i2));
        }
        super.onMeasure(i, i2);
    }

    public void setExtraHeight(int i) {
        if (this.exh != i) {
            this.exh = i;
            setTranslationY(-i);
            requestLayout();
        }
    }
}
