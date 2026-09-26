package com.narvii.theme;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes11.dex */
public class ThemeBackgroundDrawable extends Drawable {
    private int alpha = 255;
    private Bitmap bitmap;
    private boolean clipPageBackgroundForActionbar;
    private Paint paint;

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.alpha = i10;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.bitmap.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.bitmap.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (this.bitmap.hasAlpha() || this.alpha < 255) ? -3 : -1;
    }

    public ThemeBackgroundDrawable(Bitmap bitmap, boolean z6) {
        this.bitmap = bitmap;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setFilterBitmap(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.clipPageBackgroundForActionbar = z6;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        float f6;
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        int width = this.bitmap.getWidth();
        int height = this.bitmap.getHeight();
        if (width * iHeight > iWidth * height) {
            float f7 = iHeight / height;
            f6 = (iWidth - (width * f7)) * 0.5f;
            f = f7;
        } else {
            f = iWidth / width;
            f6 = 0.0f;
        }
        canvas.save();
        int i10 = this.alpha;
        if (i10 < 255) {
            canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i10, 31);
        }
        canvas.translate(bounds.left, bounds.top);
        canvas.translate((int) (f6 + 0.5f), (int) 0.5f);
        canvas.scale(f, f);
        canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, this.paint);
        canvas.restore();
    }
}
