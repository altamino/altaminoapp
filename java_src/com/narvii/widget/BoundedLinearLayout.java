package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.amino.R;

/* loaded from: classes3.dex */
public class BoundedLinearLayout extends LinearLayout {
    private static final int NOT_SPECIFIED = -1;
    private final int mMaxHeight;
    private final int mMaxWidth;

    public BoundedLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BoundedLinearLayout);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        this.mMaxWidth = dimensionPixelSize <= 0 ? -1 : dimensionPixelSize;
        this.mMaxHeight = dimensionPixelSize2 > 0 ? dimensionPixelSize2 : -1;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int i3 = this.mMaxWidth;
        if (i3 != -1 && size > i3) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == 0) {
                mode = Integer.MIN_VALUE;
            }
            i = View.MeasureSpec.makeMeasureSpec(this.mMaxWidth, mode);
        }
        int size2 = View.MeasureSpec.getSize(i2);
        int i4 = this.mMaxHeight;
        if (i4 != -1 && size2 > i4) {
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode2 == 0) {
                mode2 = Integer.MIN_VALUE;
            }
            i2 = View.MeasureSpec.makeMeasureSpec(this.mMaxHeight, mode2);
        }
        super.onMeasure(i, i2);
    }
}
