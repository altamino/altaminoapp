package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

/* loaded from: classes3.dex */
public class SameChildWidthLinearLayout extends LinearLayout {
    public SameChildWidthLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            childAt.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
        }
    }
}
