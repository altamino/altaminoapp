package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

/* loaded from: classes3.dex */
public class ScaledImageView extends ImageView {
    public ScaledImageView(Context context) {
        this(context, null);
    }

    public ScaledImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScaledImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int size;
        int iCeil;
        if (getDrawable() != null) {
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                iCeil = View.MeasureSpec.getSize(i2);
                size = (int) Math.ceil((iCeil * r0.getIntrinsicWidth()) / r0.getIntrinsicHeight());
            } else {
                size = View.MeasureSpec.getSize(i);
                iCeil = (int) Math.ceil((size * r0.getIntrinsicHeight()) / r0.getIntrinsicWidth());
            }
            setMeasuredDimension(size, iCeil);
            return;
        }
        super.onMeasure(i, i2);
    }
}
