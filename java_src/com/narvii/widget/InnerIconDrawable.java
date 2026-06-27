package com.narvii.widget;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.internal.view.SupportMenu;

/* loaded from: classes3.dex */
public class InnerIconDrawable extends ColorDrawable {
    private Bitmap bitmap;
    private float radius;
    private int size;

    public void setIconBitmap(Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public void setIconSize(int i) {
        this.size = i;
    }

    public void setIconRadius(float f) {
        this.radius = f;
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
        int height = canvas.getHeight();
        int i = this.size;
        int i2 = (height - i) / 2;
        Rect rect = new Rect(width, i2, width + i, i + i2);
        RectF rectF = new RectF(rect);
        int iSaveLayer = canvas.saveLayer(rectF, null, 31);
        float f = this.radius;
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(this.bitmap, (Rect) null, rect, paint);
        canvas.restoreToCount(iSaveLayer);
    }
}
