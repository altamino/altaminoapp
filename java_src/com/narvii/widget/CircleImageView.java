package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;

/* loaded from: classes3.dex */
public class CircleImageView extends ThumbImageView {
    public CircleImageView(Context context) {
        super(context);
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.cornerRadius = Math.min(((getWidth() - getPaddingLeft()) - getPaddingRight()) / 2, ((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2);
        super.onDraw(canvas);
    }
}
