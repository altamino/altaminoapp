package com.narvii.chat;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Shader;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleBitmapDrawable extends BubbleDrawable {
    private Bitmap bitmap;
    private final Matrix matrix = new Matrix();
    private BitmapShader shader;

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    @Override // com.narvii.chat.BubbleDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        float f6;
        float f7;
        if (this.shader != null) {
            int width = this.bitmap.getWidth();
            int height = this.bitmap.getHeight();
            int iWidth = getBounds().width() - this.l;
            int iHeight = getBounds().height();
            if (width * iHeight > iWidth * height) {
                f6 = iHeight / height;
                f7 = (iWidth - (width * f6)) * 0.5f;
                f = 0.0f;
            } else {
                float f10 = iWidth / width;
                f = (iHeight - (height * f10)) * 0.5f;
                f6 = f10;
                f7 = 0.0f;
            }
            this.matrix.reset();
            this.matrix.setScale(f6, f6);
            this.matrix.postTranslate((int) (f7 + 0.5f), (int) (f + 0.5f));
            if (this.left) {
                this.matrix.postTranslate(this.l, 0.0f);
            }
            this.shader.setLocalMatrix(this.matrix);
        }
        this.paint.setShader(this.shader);
        super.draw(canvas);
    }

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
}
