package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* loaded from: classes3.dex */
public class OrderedLinearLayout extends LinearLayout {
    private int topIndex;

    public OrderedLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.topIndex = -1;
        setChildrenDrawingOrderEnabled(true);
    }

    public void setTopChildIndex(int i) {
        if (this.topIndex != i) {
            this.topIndex = i;
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = 0;
        while (i3 < i) {
            if (i3 == this.topIndex) {
                return i2 < i3 ? i2 : i2 == i + (-1) ? i3 : i2 + 1;
            }
            i3++;
        }
        return i2;
    }
}
