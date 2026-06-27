package com.narvii.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public class NVGradientDrawable extends Drawable {
    int bgColor;
    Paint bgPaint;
    int color1;
    int color2;
    int overlayColor;
    Paint overlayPaint;
    float radius;
    float[] radiusArray;
    Path mPath = new Path();
    private RectF boundRect = new RectF();
    private float startXPercent = 0.0f;
    private float startYPercent = 0.0f;
    private float endXPercent = 1.0f;
    private float endYPercent = 1.0f;
    Paint paint = new Paint();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public NVGradientDrawable(int i, int i2) {
        this.paint.setAntiAlias(true);
        this.overlayPaint = new Paint();
        this.overlayPaint.setAntiAlias(true);
        this.bgPaint = new Paint();
        this.bgPaint.setAntiAlias(true);
        this.color1 = i;
        this.color2 = i2;
    }

    public void setOverlayColor(int i) {
        this.overlayColor = i;
        invalidateSelf();
    }

    public void setBgColor(int i) {
        this.bgColor = i;
        invalidateSelf();
    }

    public void setRadius(float f) {
        this.radius = f;
        invalidateSelf();
    }

    public void setRadius(float[] fArr) {
        this.radiusArray = fArr;
        invalidateSelf();
    }

    public void setGradientLine(float f, float f2, float f3, float f4) {
        this.startXPercent = f;
        this.startYPercent = f2;
        this.endXPercent = f3;
        this.endYPercent = f4;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.color1 == 0 && this.color2 == 0) {
            return;
        }
        float fWidth = getBounds().width();
        float fHeight = getBounds().height();
        this.boundRect.set(0.0f, 0.0f, fWidth, fHeight);
        int i = this.color1;
        int i2 = this.color2;
        if (i == i2) {
            this.paint.setDither(true);
            this.paint.setShader(null);
            this.paint.setColor(this.color1);
        } else {
            LinearGradient linearGradient = new LinearGradient(this.startXPercent * fWidth, this.startYPercent * fHeight, this.endXPercent * fWidth, this.endYPercent * fHeight, i, i2, Shader.TileMode.CLAMP);
            this.paint.setDither(true);
            this.paint.setShader(linearGradient);
        }
        this.bgPaint.setColor(this.bgColor);
        this.overlayPaint.setColor(this.overlayColor);
        if (this.radiusArray != null) {
            this.mPath.reset();
            this.mPath.addRoundRect(this.boundRect, this.radiusArray, Path.Direction.CW);
            if (this.bgColor != 0) {
                canvas.drawPath(this.mPath, this.bgPaint);
            }
            canvas.drawPath(this.mPath, this.paint);
            if (this.overlayColor != 0) {
                canvas.drawPath(this.mPath, this.overlayPaint);
                return;
            }
            return;
        }
        if (this.bgColor != 0) {
            RectF rectF = this.boundRect;
            float f = this.radius;
            canvas.drawRoundRect(rectF, f, f, this.bgPaint);
        }
        RectF rectF2 = this.boundRect;
        float f2 = this.radius;
        canvas.drawRoundRect(rectF2, f2, f2, this.paint);
        if (this.overlayColor != 0) {
            RectF rectF3 = this.boundRect;
            float f3 = this.radius;
            canvas.drawRoundRect(rectF3, f3, f3, this.overlayPaint);
        }
    }
}
