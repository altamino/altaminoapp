package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class EqualGridLayout extends ViewGroup {
    int columnCount;
    int rowCount;

    public EqualGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EqualGridLayout);
        this.columnCount = typedArrayObtainStyledAttributes.getInt(R.styleable.EqualGridLayout_column_count, 1);
        this.rowCount = typedArrayObtainStyledAttributes.getInt(R.styleable.EqualGridLayout_row_count, 1);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int i5 = measuredWidth / this.columnCount;
        int i6 = measuredHeight / this.rowCount;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            View childAt = getChildAt(i7);
            int paddingLeft = getPaddingLeft() + ((i7 % this.columnCount) * i5);
            int measuredWidth2 = paddingLeft + i5;
            if (Utils.isRtl()) {
                measuredWidth2 = (getMeasuredWidth() - getPaddingRight()) - ((i7 % this.columnCount) * i5);
                paddingLeft = measuredWidth2 - i5;
            }
            int paddingTop = getPaddingTop() + ((i7 / this.columnCount) * i6);
            childAt.layout(paddingLeft, paddingTop, measuredWidth2, paddingTop + i6);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            getChildAt(i3).measure(View.MeasureSpec.makeMeasureSpec(measuredWidth / this.columnCount, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight / this.rowCount, 1073741824));
        }
    }
}
