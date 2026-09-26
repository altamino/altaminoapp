package com.narvii.widget;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes11.dex */
public class InnerIconDrawable extends ColorDrawable {
    private Bitmap bitmap;
    private float radius;
    private int size;

    public void setIconBitmap(Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public void setIconRadius(float f) {
        this.radius = f;
    }

    public void setIconSize(int i10) {
        this.size = i10;
    }

    @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.bitmap == null) {
            return;
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(SupportMenu.CATEGORY_MASK);
        int width = (canvas.getWidth() - this.size) / 2;
        int height = (canvas.getHeight() - this.size) / 2;
        int i10 = this.size;
        Rect rect = new Rect(width, height, width + i10, i10 + height);
        RectF rectF = new RectF(rect);
        int iSaveLayer = canvas.saveLayer(rectF, null, 31);
        float f = this.radius;
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(this.bitmap, (Rect) null, rect, paint);
        canvas.restoreToCount(iSaveLayer);
    }
}
