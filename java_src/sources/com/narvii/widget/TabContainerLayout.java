package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class TabContainerLayout extends LinearLayout {
    private int mode;
    private boolean scrollDivideEqual;
    private boolean segmentControl;

    public TabContainerLayout(Context context, int i10) {
        this(context, (AttributeSet) null);
        this.mode = i10;
    }

    public void setScrollDivideEqual(boolean z6) {
        this.scrollDivideEqual = z6;
    }

    public void setSegmentControl(boolean z6) {
        this.segmentControl = z6;
    }

    public TabContainerLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scrollDivideEqual = true;
        this.segmentControl = false;
        setOrientation(0);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        View childAt;
        int i14 = this.mode;
        if (i14 == 1) {
            super.onLayout(z6, i10, i11, i12, i13);
            return;
        }
        if (i14 == 0 && !this.scrollDivideEqual) {
            super.onLayout(z6, i10, i11, i12, i13);
            return;
        }
        int i15 = i12 - i10;
        int measuredWidth = 0;
        for (int i16 = 0; i16 < getChildCount(); i16++) {
            if (measuredWidth > i15 || getChildAt(i16).getMeasuredWidth() > i15 / getChildCount()) {
                super.onLayout(z6, i10, i11, i12, i13);
            } else {
                measuredWidth += getChildAt(i16).getMeasuredWidth();
            }
        }
        if (getChildCount() != 0) {
            int childCount = i15 / getChildCount();
            for (int i17 = 0; i17 < getChildCount() && (childAt = getChildAt(i17)) != null; i17++) {
                int measuredWidth2 = (childCount * i17) + ((childCount - childAt.getMeasuredWidth()) / 2);
                childAt.layout(measuredWidth2, getPaddingTop(), childAt.getMeasuredWidth() + measuredWidth2, getPaddingTop() + childAt.getMeasuredHeight());
            }
            return;
        }
        super.onLayout(z6, i10, i11, i12, i13);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.mode == 1 && this.segmentControl) {
            int measuredWidth = 0;
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                if (getChildAt(i12).getMeasuredWidth() > measuredWidth) {
                    measuredWidth = getChildAt(i12).getMeasuredWidth();
                }
            }
            float f = getContext().getResources().getDisplayMetrics().widthPixels;
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min((int) (0.8f * f), Math.max((int) (f * 0.6f), measuredWidth * getChildCount())), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
        }
    }
}
