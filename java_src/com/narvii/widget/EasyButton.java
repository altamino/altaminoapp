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

/* loaded from: classes3.dex */
public class EasyButton extends ImageView {
    private static final int[] iarr = new int[10];
    ColorFilter colorFilter;

    public EasyButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        updateState();
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        updateState();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        updateState();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        updateState();
    }

    private void updateState() {
        if (getDrawable() == null) {
            return;
        }
        float f = isPressed() ? 0.75f : 1.0f;
        if (isFocused()) {
            f = 0.85f;
        }
        this.colorFilter = tintColorFilter(f, isEnabled() ? 1.0f : 0.75f);
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        ColorFilter colorFilter;
        Drawable drawable = getDrawable();
        Paint paint = null;
        if (this.colorFilter != null && (drawable instanceof BitmapDrawable)) {
            paint = ((BitmapDrawable) drawable).getPaint();
            colorFilter = paint.getColorFilter();
            paint.setColorFilter(this.colorFilter);
        } else {
            if (this.colorFilter != null && drawable != null) {
                Log.e("TintButton only support BitmapDrawable now");
                this.colorFilter = null;
            }
            colorFilter = null;
        }
        super.onDraw(canvas);
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }

    public static ColorFilter tintColorFilter(float f, float f2) {
        return new ColorMatrixColorFilter(new float[]{f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f2, 0.0f});
    }
}
