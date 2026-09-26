package com.narvii.item.post;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.amino.R;

/* JADX INFO: loaded from: classes7.dex */
public class DragSortParentLayout extends LinearLayout {
    View drawTop;
    int layoutId;

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        if (this.drawTop != null) {
            for (int i12 = 0; i12 < i10; i12++) {
                if (getChildAt(i12) == this.drawTop) {
                    if (i11 < i12) {
                        return i11;
                    }
                    return i11 == i10 + (-1) ? i12 : i11 + 1;
                }
            }
        }
        return super.getChildDrawingOrder(i10, i11);
    }

    public DragSortParentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setChildrenDrawingOrderEnabled(true);
        this.layoutId = context.obtainStyledAttributes(attributeSet, R.styleable.DragSortParentLayout).getResourceId(0, 0);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.layoutId;
        if (i10 != 0) {
            this.drawTop = findViewById(i10);
        }
    }
}
