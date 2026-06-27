package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.amino.R;

/* loaded from: classes3.dex */
public class TransformView extends FrameLayout {
    float rotate;
    float scaleX;
    float scaleY;
    float translateX;
    float translateY;

    public TransformView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TransformView);
        this.scaleX = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        this.scaleY = typedArrayObtainStyledAttributes.getFloat(2, 1.0f);
        this.translateX = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
        this.translateY = typedArrayObtainStyledAttributes.getFloat(4, 0.0f);
        this.rotate = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int iSave = canvas.save();
        canvas.rotate(this.rotate, getWidth() / 2, getHeight() / 2);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }
}
