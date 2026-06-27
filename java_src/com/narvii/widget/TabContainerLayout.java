package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

/* loaded from: classes3.dex */
public class TabContainerLayout extends LinearLayout {
    private int mode;
    private boolean scrollDivideEqual;
    private boolean segmentControl;

    public void setSegmentControl(boolean z) {
        this.segmentControl = z;
    }

    public void setScrollDivideEqual(boolean z) {
        this.scrollDivideEqual = z;
    }

    public TabContainerLayout(Context context, int i) {
        this(context, (AttributeSet) null);
        this.mode = i;
    }

    public TabContainerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scrollDivideEqual = true;
        this.segmentControl = false;
        setOrientation(0);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mode == 1 && this.segmentControl) {
            int measuredWidth = 0;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                if (getChildAt(i3).getMeasuredWidth() > measuredWidth) {
                    measuredWidth = getChildAt(i3).getMeasuredWidth();
                }
            }
            float f = getContext().getResources().getDisplayMetrics().widthPixels;
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min((int) (0.8f * f), Math.max((int) (f * 0.6f), measuredWidth * getChildCount())), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt;
        int i5 = this.mode;
        boolean z2 = true;
        if (i5 == 1) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        if (i5 == 0 && !this.scrollDivideEqual) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int i6 = i3 - i;
        int measuredWidth = 0;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            if (measuredWidth > i6 || getChildAt(i7).getMeasuredWidth() > i6 / getChildCount()) {
                z2 = false;
                break;
            }
            measuredWidth += getChildAt(i7).getMeasuredWidth();
        }
        if (z2 && getChildCount() != 0) {
            int childCount = i6 / getChildCount();
            for (int i8 = 0; i8 < getChildCount() && (childAt = getChildAt(i8)) != null; i8++) {
                int measuredWidth2 = (childCount * i8) + ((childCount - childAt.getMeasuredWidth()) / 2);
                childAt.layout(measuredWidth2, getPaddingTop(), childAt.getMeasuredWidth() + measuredWidth2, getPaddingTop() + childAt.getMeasuredHeight());
            }
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }
}
