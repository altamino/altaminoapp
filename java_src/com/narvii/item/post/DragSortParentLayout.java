package com.narvii.item.post;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.amino.R;

/* loaded from: classes.dex */
public class DragSortParentLayout extends LinearLayout {
    View drawTop;
    int layoutId;

    public DragSortParentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setChildrenDrawingOrderEnabled(true);
        this.layoutId = context.obtainStyledAttributes(attributeSet, R.styleable.DragSortParentLayout).getResourceId(0, 0);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.layoutId;
        if (i != 0) {
            this.drawTop = findViewById(i);
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.drawTop != null) {
            int i3 = 0;
            while (i3 < i) {
                if (getChildAt(i3) == this.drawTop) {
                    return i2 < i3 ? i2 : i2 == i + (-1) ? i3 : i2 + 1;
                }
                i3++;
            }
        }
        return super.getChildDrawingOrder(i, i2);
    }
}
