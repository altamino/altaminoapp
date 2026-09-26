package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class ReverseDrawingOrderLinearLayout extends LinearLayout {
    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        return (i10 - i11) - 1;
    }

    public ReverseDrawingOrderLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setChildrenDrawingOrderEnabled(true);
    }
}
