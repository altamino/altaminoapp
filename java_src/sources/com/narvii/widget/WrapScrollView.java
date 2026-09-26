package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public class WrapScrollView extends NVScrollView {
    int wrapHeight;

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12 = this.wrapHeight;
        if (i12 > 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
    }

    public WrapScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WrapScrollView);
        this.wrapHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WrapScrollView_wrapHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
