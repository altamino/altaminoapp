package com.narvii.chat.video;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class ChatTipBroadcastBackground extends Drawable {
    private Rect bounds;
    private int color;
    Paint paint = new Paint(1);
    Paint shaderPaint;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public ChatTipBroadcastBackground(int i) {
        this.color = i;
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(i);
        this.shaderPaint = new Paint(1);
        this.shaderPaint.setStyle(Paint.Style.FILL);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.bounds = getBounds();
        int iWidth = this.bounds.width();
        float fHeight = this.bounds.height();
        float f = fHeight / 2.0f;
        float f2 = iWidth;
        float f3 = f2 / 2.0f;
        this.shaderPaint.setShader(new LinearGradient(0.0f, 0.0f, f3, 0.0f, Utils.getColor(this.color, 0.0f), this.color, Shader.TileMode.MIRROR));
        if (Utils.isRtl()) {
            canvas.drawRect(0.0f, 0.0f, f3, fHeight, this.shaderPaint);
            float f4 = f2 - f;
            canvas.drawCircle(f4, f, f, this.paint);
            canvas.drawRect(f3, 0.0f, f4, fHeight, this.paint);
            return;
        }
        canvas.drawRect(f3, 0.0f, f2, fHeight, this.shaderPaint);
        canvas.drawCircle(f, f, f, this.paint);
        canvas.drawRect(f, 0.0f, f3, fHeight, this.paint);
    }
}
