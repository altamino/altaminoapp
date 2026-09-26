package com.narvii.chat.video;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class ChatTipBroadcastBackground extends Drawable {
    private Rect bounds;
    private int color;
    Paint paint;
    Paint shaderPaint;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.bounds = bounds;
        int iWidth = bounds.width();
        float fHeight = this.bounds.height();
        float f = fHeight / 2.0f;
        float f6 = iWidth;
        float f7 = f6 / 2.0f;
        this.shaderPaint.setShader(new LinearGradient(0.0f, 0.0f, f7, 0.0f, Utils.getColor(this.color, 0.0f), this.color, Shader.TileMode.MIRROR));
        if (!Utils.isRtl()) {
            canvas.drawRect(f7, 0.0f, f6, fHeight, this.shaderPaint);
            canvas.drawCircle(f, f, f, this.paint);
            canvas.drawRect(f, 0.0f, f7, fHeight, this.paint);
        } else {
            canvas.drawRect(0.0f, 0.0f, f7, fHeight, this.shaderPaint);
            float f10 = f6 - f;
            canvas.drawCircle(f10, f, f, this.paint);
            canvas.drawRect(f7, 0.0f, f10, fHeight, this.paint);
        }
    }

    public ChatTipBroadcastBackground(int i10) {
        this.color = i10;
        Paint paint = new Paint(1);
        this.paint = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.paint.setColor(i10);
        Paint paint2 = new Paint(1);
        this.shaderPaint = paint2;
        paint2.setStyle(style);
    }
}
