package com.narvii.scene.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes8.dex */
public class PlayerContainerLayout extends RelativeLayout {
    RoundCornorDelegate cornorDelegate;

    public PlayerContainerLayout(Context context) {
        this(context, null);
    }

    public PlayerContainerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerContainerLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.cornorDelegate = new RoundCornorDelegate(this, getContext());
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i10);
        int i12 = (size * 9) >> 4;
        if (size2 > i12) {
            size2 = i12;
        } else {
            size = (size2 << 4) / 9;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size2, 1073741824), View.MeasureSpec.makeMeasureSpec(size, 1073741824));
    }
}
