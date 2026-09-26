package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
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
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int i14 = measuredWidth / this.columnCount;
        int i15 = measuredHeight / this.rowCount;
        for (int i16 = 0; i16 < getChildCount(); i16++) {
            View childAt = getChildAt(i16);
            int paddingLeft = getPaddingLeft() + ((i16 % this.columnCount) * i14);
            int measuredWidth2 = paddingLeft + i14;
            if (Utils.isRtl()) {
                measuredWidth2 = (getMeasuredWidth() - getPaddingRight()) - ((i16 % this.columnCount) * i14);
                paddingLeft = measuredWidth2 - i14;
            }
            int paddingTop = getPaddingTop() + ((i16 / this.columnCount) * i15);
            childAt.layout(paddingLeft, paddingTop, measuredWidth2, paddingTop + i15);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            getChildAt(i12).measure(View.MeasureSpec.makeMeasureSpec(measuredWidth / this.columnCount, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight / this.rowCount, 1073741824));
        }
    }
}
