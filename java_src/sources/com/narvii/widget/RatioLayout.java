package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes9.dex */
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
    protected void onMeasure(int i10, int i11) {
        if (View.MeasureSpec.getMode(i10) == 1073741824) {
            int size = View.MeasureSpec.getSize(i10);
            if (this.ratioInsidePadding) {
                i11 = View.MeasureSpec.makeMeasureSpec(((int) (((size - getPaddingLeft()) - getPaddingRight()) * this.ratio)) + getPaddingTop() + getPaddingBottom(), 1073741824);
            } else {
                i11 = View.MeasureSpec.makeMeasureSpec((int) (size * this.ratio), 1073741824);
            }
        } else if (View.MeasureSpec.getMode(i11) == 1073741824) {
            int size2 = View.MeasureSpec.getSize(i11);
            if (this.ratioInsidePadding) {
                i10 = View.MeasureSpec.makeMeasureSpec(((int) (((size2 - getPaddingTop()) - getPaddingBottom()) / this.ratio)) + getPaddingLeft() + getPaddingRight(), 1073741824);
            } else {
                i10 = View.MeasureSpec.makeMeasureSpec((int) (size2 / this.ratio), 1073741824);
            }
        }
        super.onMeasure(i10, i11);
    }
}
