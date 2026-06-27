package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;

/* loaded from: classes3.dex */
public class PopButton extends TintButton {
    private static final float MIN = 0.85f;
    private static final float STEP = 0.035f;
    private float scale;

    public PopButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scale = 1.0f;
    }

    @Override // com.narvii.widget.TintButton, android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        invalidate();
    }

    @Override // com.narvii.widget.TintButton, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isPressed()) {
            float f = this.scale;
            if (f > MIN) {
                this.scale = Math.max(MIN, f - STEP);
                setScaleX(this.scale);
                setScaleY(this.scale);
                invalidate();
                return;
            }
            return;
        }
        float f2 = this.scale;
        if (f2 < 1.0f) {
            this.scale = Math.min(1.0f, f2 + 0.07f);
            setScaleX(this.scale);
            setScaleY(this.scale);
            invalidate();
        }
    }
}
