package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.amino.R;

/* JADX INFO: loaded from: classes9.dex */
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
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int i12 = this.mMaxWidth;
        int i13 = Integer.MIN_VALUE;
        if (i12 != -1 && size > i12) {
            int mode = View.MeasureSpec.getMode(i10);
            if (mode == 0) {
                mode = Integer.MIN_VALUE;
            }
            i10 = View.MeasureSpec.makeMeasureSpec(this.mMaxWidth, mode);
        }
        int size2 = View.MeasureSpec.getSize(i11);
        int i14 = this.mMaxHeight;
        if (i14 != -1 && size2 > i14) {
            int mode2 = View.MeasureSpec.getMode(i11);
            if (mode2 != 0) {
                i13 = mode2;
            }
            i11 = View.MeasureSpec.makeMeasureSpec(this.mMaxHeight, i13);
        }
        super.onMeasure(i10, i11);
    }
}
