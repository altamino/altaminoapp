package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class ScrollViewWithMaxHeight2 extends ScrollViewWithMaxHeight {
    public ScrollViewWithMaxHeight2(Context context) {
        super(context);
    }

    public ScrollViewWithMaxHeight2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.widget.ScrollViewWithMaxHeight, android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.maxHeight > 0 && (View.MeasureSpec.getSize(i11) > this.maxHeight || View.MeasureSpec.getMode(i11) == 0)) {
            i11 = View.MeasureSpec.makeMeasureSpec(this.maxHeight, Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
    }
}
