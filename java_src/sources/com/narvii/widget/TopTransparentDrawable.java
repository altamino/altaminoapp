package com.narvii.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class TopTransparentDrawable extends Drawable {
    private int color;
    public int marginBottom;
    public Paint paint;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.paint.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setFillRectMarginBottom(int i10) {
        this.marginBottom = i10;
        invalidateSelf();
    }

    public TopTransparentDrawable(int i10, int i11) {
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.color = i10;
        this.marginBottom = i11;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        this.paint.setColor(0);
        float f = iWidth;
        float f6 = iHeight;
        canvas.drawRect(0.0f, 0.0f, f, f6, this.paint);
        this.paint.setColor(this.color);
        canvas.drawRect(0.0f, iHeight - this.marginBottom, f, f6, this.paint);
    }
}
