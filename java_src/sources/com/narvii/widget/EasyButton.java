package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes9.dex */
public class EasyButton extends ImageView {
    private static final int[] iarr = new int[10];
    ColorFilter colorFilter;

    public static ColorFilter tintColorFilter(float f, float f6) {
        return new ColorMatrixColorFilter(new float[]{f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f6, 0.0f});
    }

    public EasyButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        updateState();
    }

    private void updateState() {
        float f;
        if (getDrawable() == null) {
            return;
        }
        float f6 = 0.75f;
        if (isPressed()) {
            f = 0.75f;
        } else {
            f = 1.0f;
        }
        if (isFocused()) {
            f = 0.85f;
        }
        if (isEnabled()) {
            f6 = 1.0f;
        }
        this.colorFilter = tintColorFilter(f, f6);
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint;
        ColorFilter colorFilter;
        Drawable drawable = getDrawable();
        ColorFilter colorFilter2 = this.colorFilter;
        if (colorFilter2 != null && (drawable instanceof BitmapDrawable)) {
            paint = ((BitmapDrawable) drawable).getPaint();
            colorFilter = paint.getColorFilter();
            paint.setColorFilter(this.colorFilter);
        } else {
            if (colorFilter2 != null && drawable != null) {
                Log.e("TintButton only support BitmapDrawable now");
                this.colorFilter = null;
            }
            paint = null;
            colorFilter = null;
        }
        super.onDraw(canvas);
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z6, int i10, Rect rect) {
        super.onFocusChanged(z6, i10, rect);
        updateState();
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        super.setEnabled(z6);
        updateState();
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        super.setPressed(z6);
        updateState();
    }
}
