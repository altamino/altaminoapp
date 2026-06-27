package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* loaded from: classes3.dex */
public class ReverseDrawingOrderLinearLayout extends LinearLayout {
    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        return (i - i2) - 1;
    }

    public ReverseDrawingOrderLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setChildrenDrawingOrderEnabled(true);
    }
}
