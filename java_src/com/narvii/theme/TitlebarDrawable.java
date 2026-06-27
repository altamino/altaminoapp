package com.narvii.theme;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;

/* loaded from: classes3.dex */
public class TitlebarDrawable extends Drawable {
    private Bitmap bitmap;
    private int alpha = 255;
    private Paint paint = new Paint();

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public TitlebarDrawable(Bitmap bitmap) {
        this.bitmap = bitmap;
        this.paint.setAntiAlias(true);
        this.paint.setFilterBitmap(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.bitmap.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.bitmap.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (this.bitmap.hasAlpha() || this.alpha < 255) ? -3 : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        int width = this.bitmap.getWidth();
        int height = this.bitmap.getHeight();
        if (width * iHeight > iWidth * height) {
            float f4 = iHeight / height;
            f3 = (iWidth - (width * f4)) * 0.5f;
            f = f4;
            f2 = 0.0f;
        } else {
            float f5 = iWidth / width;
            f = f5;
            f2 = (iHeight - (height * f5)) * 0.5f;
            f3 = 0.0f;
        }
        canvas.save();
        int i = this.alpha;
        if (i < 255) {
            canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i, 31);
        }
        canvas.translate(bounds.left, bounds.top);
        canvas.translate((int) (f3 + 0.5f), (int) (f2 + 0.5f));
        canvas.scale(f, f);
        canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, this.paint);
        canvas.restore();
    }
}
