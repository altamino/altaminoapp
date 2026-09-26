package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes2.dex */
public class PopButton extends TintButton {
    private static final float MIN = 0.85f;
    private static final float STEP = 0.035f;
    private float scale;

    public PopButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scale = 1.0f;
    }

    @Override // com.narvii.widget.TintButton, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isPressed()) {
            float f = this.scale;
            if (f > MIN) {
                float fMax = Math.max(MIN, f - STEP);
                this.scale = fMax;
                setScaleX(fMax);
                setScaleY(this.scale);
                invalidate();
                return;
            }
            return;
        }
        float f6 = this.scale;
        if (f6 < 1.0f) {
            float fMin = Math.min(1.0f, f6 + 0.07f);
            this.scale = fMin;
            setScaleX(fMin);
            setScaleY(this.scale);
            invalidate();
        }
    }

    @Override // com.narvii.widget.TintButton, android.view.View
    public void setPressed(boolean z6) {
        super.setPressed(z6);
        invalidate();
    }
}
