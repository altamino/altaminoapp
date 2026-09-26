package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class SameChildWidthLinearLayout extends LinearLayout {
    public SameChildWidthLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            childAt.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
        }
    }
}
