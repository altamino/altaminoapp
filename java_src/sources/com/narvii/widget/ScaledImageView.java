package com.narvii.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes8.dex */
public class ScaledImageView extends ImageView {
    public ScaledImageView(Context context) {
        this(context, null);
    }

    public ScaledImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScaledImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size;
        int iCeil;
        Drawable drawable = getDrawable();
        if (drawable != null) {
            if (View.MeasureSpec.getMode(i11) == 1073741824) {
                iCeil = View.MeasureSpec.getSize(i11);
                size = (int) Math.ceil((iCeil * drawable.getIntrinsicWidth()) / drawable.getIntrinsicHeight());
            } else {
                size = View.MeasureSpec.getSize(i10);
                iCeil = (int) Math.ceil((size * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth());
            }
            setMeasuredDimension(size, iCeil);
            return;
        }
        super.onMeasure(i10, i11);
    }
}
