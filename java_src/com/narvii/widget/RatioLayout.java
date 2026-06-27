package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class RatioLayout extends RelativeLayout {
    private float ratio;
    private boolean ratioInsidePadding;

    public RatioLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RatioLayout);
        this.ratio = typedArrayObtainStyledAttributes.getFloat(R.styleable.RatioLayout_ratio, 1.0f);
        this.ratioInsidePadding = typedArrayObtainStyledAttributes.getBoolean(R.styleable.RatioLayout_ratioInsidePadding, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            int size = View.MeasureSpec.getSize(i);
            if (this.ratioInsidePadding) {
                i2 = View.MeasureSpec.makeMeasureSpec(((int) (((size - getPaddingLeft()) - getPaddingRight()) * this.ratio)) + getPaddingTop() + getPaddingBottom(), 1073741824);
            } else {
                i2 = View.MeasureSpec.makeMeasureSpec((int) (size * this.ratio), 1073741824);
            }
        } else if (View.MeasureSpec.getMode(i2) == 1073741824) {
            int size2 = View.MeasureSpec.getSize(i2);
            if (this.ratioInsidePadding) {
                i = View.MeasureSpec.makeMeasureSpec(((int) (((size2 - getPaddingTop()) - getPaddingBottom()) / this.ratio)) + getPaddingLeft() + getPaddingRight(), 1073741824);
            } else {
                i = View.MeasureSpec.makeMeasureSpec((int) (size2 / this.ratio), 1073741824);
            }
        }
        super.onMeasure(i, i2);
    }
}
