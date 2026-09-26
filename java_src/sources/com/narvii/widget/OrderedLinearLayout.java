package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class OrderedLinearLayout extends LinearLayout {
    private int topIndex;

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 == this.topIndex) {
                if (i11 < i12) {
                    return i11;
                }
                return i11 == i10 + (-1) ? i12 : i11 + 1;
            }
        }
        return i11;
    }

    public void setTopChildIndex(int i10) {
        if (this.topIndex != i10) {
            this.topIndex = i10;
            invalidate();
        }
    }

    public OrderedLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.topIndex = -1;
        setChildrenDrawingOrderEnabled(true);
    }
}
