package com.narvii.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public class TopTransparentDrawable extends Drawable {
    private int color;
    public int marginBottom;
    public Paint paint = new Paint(1);

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    public TopTransparentDrawable(int i, int i2) {
        this.paint.setStyle(Paint.Style.FILL);
        this.color = i;
        this.marginBottom = i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        this.paint.setColor(0);
        float f = iWidth;
        float f2 = iHeight;
        canvas.drawRect(0.0f, 0.0f, f, f2, this.paint);
        this.paint.setColor(this.color);
        canvas.drawRect(0.0f, iHeight - this.marginBottom, f, f2, this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setFillRectMarginBottom(int i) {
        this.marginBottom = i;
        invalidateSelf();
    }
}
