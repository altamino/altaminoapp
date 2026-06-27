package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class WrapScrollView extends NVScrollView {
    int wrapHeight;

    public WrapScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WrapScrollView);
        this.wrapHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WrapScrollView_wrapHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.wrapHeight;
        if (i3 > 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
    }
}
