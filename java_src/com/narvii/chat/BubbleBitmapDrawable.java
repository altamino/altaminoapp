package com.narvii.chat;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Shader;

/* loaded from: classes2.dex */
public class BubbleBitmapDrawable extends BubbleDrawable {
    private Bitmap bitmap;
    private final Matrix matrix = new Matrix();
    private BitmapShader shader;

    public void setBitmap(Bitmap bitmap) {
        BitmapShader bitmapShader;
        if (bitmap != this.bitmap) {
            this.bitmap = bitmap;
            if (bitmap == null) {
                bitmapShader = null;
            } else {
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            }
            this.shader = bitmapShader;
            invalidateSelf();
        }
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    @Override // com.narvii.chat.BubbleDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        if (this.shader != null) {
            int width = this.bitmap.getWidth();
            int height = this.bitmap.getHeight();
            int iWidth = getBounds().width() - this.l;
            int iHeight = getBounds().height();
            if (width * iHeight > iWidth * height) {
                float f4 = iHeight / height;
                f3 = (iWidth - (width * f4)) * 0.5f;
                f = f4;
                f2 = 0.0f;
            } else {
                f = iWidth / width;
                f2 = (iHeight - (height * f)) * 0.5f;
                f3 = 0.0f;
            }
            this.matrix.reset();
            this.matrix.setScale(f, f);
            this.matrix.postTranslate((int) (f3 + 0.5f), (int) (f2 + 0.5f));
            if (this.left) {
                this.matrix.postTranslate(this.l, 0.0f);
            }
            this.shader.setLocalMatrix(this.matrix);
        }
        this.paint.setShader(this.shader);
        super.draw(canvas);
    }
}
