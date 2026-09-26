package com.narvii.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes8.dex */
public class NVGradientDrawable extends Drawable {
    int bgColor;
    Paint bgPaint;
    int color1;
    int color2;
    int overlayColor;
    Paint overlayPaint;
    Paint paint;
    float radius;
    float[] radiusArray;
    Path mPath = new Path();
    private RectF boundRect = new RectF();
    private float startXPercent = 0.0f;
    private float startYPercent = 0.0f;
    private float endXPercent = 1.0f;
    private float endYPercent = 1.0f;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setRadius(float f) {
        this.radius = f;
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
        int i10 = this.color1;
        int i11 = this.color2;
        if (i10 == i11) {
            this.paint.setDither(true);
            this.paint.setShader(null);
            this.paint.setColor(this.color1);
        } else {
            LinearGradient linearGradient = new LinearGradient(this.startXPercent * fWidth, this.startYPercent * fHeight, this.endXPercent * fWidth, this.endYPercent * fHeight, i10, i11, Shader.TileMode.CLAMP);
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
        float f6 = this.radius;
        canvas.drawRoundRect(rectF2, f6, f6, this.paint);
        if (this.overlayColor != 0) {
            RectF rectF3 = this.boundRect;
            float f7 = this.radius;
            canvas.drawRoundRect(rectF3, f7, f7, this.overlayPaint);
        }
    }

    public void setBgColor(int i10) {
        this.bgColor = i10;
        invalidateSelf();
    }

    public void setGradientLine(float f, float f6, float f7, float f10) {
        this.startXPercent = f;
        this.startYPercent = f6;
        this.endXPercent = f7;
        this.endYPercent = f10;
        invalidateSelf();
    }

    public void setOverlayColor(int i10) {
        this.overlayColor = i10;
        invalidateSelf();
    }

    public void setRadius(float[] fArr) {
        this.radiusArray = fArr;
        invalidateSelf();
    }

    public NVGradientDrawable(int i10, int i11) {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.overlayPaint = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.bgPaint = paint3;
        paint3.setAntiAlias(true);
        this.color1 = i10;
        this.color2 = i11;
    }
}
