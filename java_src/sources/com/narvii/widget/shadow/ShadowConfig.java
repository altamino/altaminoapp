package com.narvii.widget.shadow;

import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.ColorInt;
import androidx.annotation.Size;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class ShadowConfig {
    public Paint circleShadowPaint;
    public RectF contentBounds;
    public Paint cornerShadowPaintLB;
    public Paint cornerShadowPaintLT;
    public Paint cornerShadowPaintRB;
    public Paint cornerShadowPaintRT;
    public Path cornerShadowPathLB;
    public Path cornerShadowPathLT;
    public Path cornerShadowPathRB;
    public Path cornerShadowPathRT;
    public Paint edgeShadowPaintLB;
    public Paint edgeShadowPaintLT;
    public Paint edgeShadowPaintRB;
    public Paint edgeShadowPaintRT;
    public RectF innerBounds;
    public RectF outerBoundsCircle;
    public RectF outerBoundsLB;
    public RectF outerBoundsLT;
    public RectF outerBoundsRB;
    public RectF outerBoundsRT;
    public float shadowCornerRadius;
    public int shadowEndColor;
    public int shadowMiddleColor;
    public int shadowOffsetX;
    public int shadowOffsetY;
    public int shadowSize;
    public int shadowStartColor;

    private void prepareCornerShadowPaint(Paint paint, float f) {
        if (f > 0.0f) {
            float f6 = this.shadowCornerRadius / f;
            paint.setShader(new RadialGradient(0.0f, 0.0f, f, new int[]{0, this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, f6, ((1.0f - f6) / 2.0f) + f6, 1.0f}, Shader.TileMode.CLAMP));
        }
    }

    private void init() {
        RectF rectF = this.innerBounds;
        if (rectF == null) {
            float f = this.shadowCornerRadius;
            this.innerBounds = new RectF(-f, -f, f, f);
        } else {
            float f6 = this.shadowCornerRadius;
            rectF.set(-f6, -f6, f6, f6);
        }
        RectF rectF2 = this.outerBoundsLT;
        if (rectF2 == null) {
            this.outerBoundsLT = new RectF(this.innerBounds);
        } else {
            rectF2.set(this.innerBounds);
        }
        RectF rectF3 = this.outerBoundsLB;
        if (rectF3 == null) {
            this.outerBoundsLB = new RectF(this.innerBounds);
        } else {
            rectF3.set(this.innerBounds);
        }
        RectF rectF4 = this.outerBoundsRT;
        if (rectF4 == null) {
            this.outerBoundsRT = new RectF(this.innerBounds);
        } else {
            rectF4.set(this.innerBounds);
        }
        RectF rectF5 = this.outerBoundsRB;
        if (rectF5 == null) {
            this.outerBoundsRB = new RectF(this.innerBounds);
        } else {
            rectF5.set(this.innerBounds);
        }
        RectF rectF6 = this.outerBoundsCircle;
        if (rectF6 == null) {
            this.outerBoundsCircle = new RectF(this.contentBounds);
        } else {
            rectF6.set(this.contentBounds);
        }
    }

    private void prepareCircleShadowPaint(Paint paint) {
        if (this.outerBoundsCircle.width() > 0.0f) {
            float fWidth = (this.contentBounds.width() * 0.9f) / this.outerBoundsCircle.width();
            paint.setShader(new RadialGradient(this.outerBoundsCircle.centerX(), this.outerBoundsCircle.centerY(), this.outerBoundsCircle.width() / 2.0f, new int[]{0, this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, fWidth, ((1.0f - fWidth) / 2.0f) + fWidth, 1.0f}, Shader.TileMode.CLAMP));
        }
    }

    private void prepareEdgeShadowPaint(Paint paint, float f) {
        paint.setShader(new LinearGradient(0.0f, this.innerBounds.top, 0.0f, f, new int[]{this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        paint.setAntiAlias(false);
    }

    private void preparePath(Path path, RectF rectF, float f) {
        path.setFillType(Path.FillType.EVEN_ODD);
        path.moveTo(this.innerBounds.left, 0.0f);
        path.lineTo(rectF.left, 0.0f);
        path.arcTo(rectF, 180.0f, 90.0f - f, false);
        path.arcTo(this.innerBounds, 270.0f - f, f - 90.0f, false);
        path.close();
    }

    public void prepareShadow() {
        RectF rectF = this.outerBoundsLT;
        int i10 = this.shadowOffsetX;
        float f = i10 >= 0 ? -this.shadowSize : (-this.shadowSize) + i10;
        int i11 = this.shadowOffsetY;
        rectF.inset(f, i11 >= 0 ? -this.shadowSize : (-this.shadowSize) + i11);
        RectF rectF2 = this.outerBoundsLB;
        int i12 = this.shadowOffsetY;
        float f6 = i12 >= 0 ? (-this.shadowSize) - i12 : -this.shadowSize;
        int i13 = this.shadowOffsetX;
        rectF2.inset(f6, i13 >= 0 ? -this.shadowSize : (-this.shadowSize) + i13);
        RectF rectF3 = this.outerBoundsRT;
        int i14 = this.shadowOffsetY;
        float f7 = i14 >= 0 ? -this.shadowSize : (-this.shadowSize) + i14;
        int i15 = this.shadowOffsetX;
        rectF3.inset(f7, i15 >= 0 ? (-this.shadowSize) - i15 : -this.shadowSize);
        RectF rectF4 = this.outerBoundsRB;
        int i16 = this.shadowOffsetX;
        float f10 = i16 >= 0 ? (-this.shadowSize) - i16 : -this.shadowSize;
        int i17 = this.shadowOffsetY;
        rectF4.inset(f10, i17 >= 0 ? (-this.shadowSize) - i17 : -this.shadowSize);
        RectF rectF5 = this.outerBoundsCircle;
        int i18 = this.shadowSize;
        rectF5.inset(-i18, -i18);
        boolean z6 = this.contentBounds.width() - (this.shadowCornerRadius * 2.0f) > 0.0f;
        boolean z10 = this.contentBounds.height() - (this.shadowCornerRadius * 2.0f) > 0.0f;
        preparePath(this.cornerShadowPathLT, this.outerBoundsLT, z6 ? 0.0f : 2.7f);
        preparePath(this.cornerShadowPathLB, this.outerBoundsLB, z10 ? 0.0f : 2.7f);
        preparePath(this.cornerShadowPathRT, this.outerBoundsRT, z10 ? 0.0f : 2.7f);
        preparePath(this.cornerShadowPathRB, this.outerBoundsRB, z6 ? 0.0f : 2.7f);
        Paint paint = this.cornerShadowPaintLT;
        RectF rectF6 = this.outerBoundsLT;
        prepareCornerShadowPaint(paint, Math.max(-rectF6.top, -rectF6.left));
        Paint paint2 = this.cornerShadowPaintLB;
        RectF rectF7 = this.outerBoundsLB;
        prepareCornerShadowPaint(paint2, Math.max(-rectF7.top, -rectF7.left));
        Paint paint3 = this.cornerShadowPaintRT;
        RectF rectF8 = this.outerBoundsRT;
        prepareCornerShadowPaint(paint3, Math.max(-rectF8.top, -rectF8.left));
        Paint paint4 = this.cornerShadowPaintRB;
        RectF rectF9 = this.outerBoundsRB;
        prepareCornerShadowPaint(paint4, Math.max(-rectF9.top, -rectF9.left));
        prepareCircleShadowPaint(this.circleShadowPaint);
        prepareEdgeShadowPaint(this.edgeShadowPaintLT, this.outerBoundsLT.top);
        prepareEdgeShadowPaint(this.edgeShadowPaintLB, this.outerBoundsLB.top);
        prepareEdgeShadowPaint(this.edgeShadowPaintRT, this.outerBoundsRT.top);
        prepareEdgeShadowPaint(this.edgeShadowPaintRB, this.outerBoundsRB.top);
    }

    public void reset() {
        this.cornerShadowPathLT.reset();
        this.cornerShadowPathLB.reset();
        this.cornerShadowPathRT.reset();
        this.cornerShadowPathRB.reset();
        init();
    }

    public ShadowConfig(RectF rectF, float f, int i10, @Size int[] iArr, @ColorInt int i11) {
        int color;
        this.contentBounds = rectF;
        this.shadowCornerRadius = f;
        this.shadowSize = i10;
        this.shadowOffsetX = iArr[0];
        this.shadowOffsetY = iArr[1];
        int iAlpha = Color.alpha(i11);
        iAlpha = iAlpha == 255 ? iAlpha / 2 : iAlpha;
        if (iAlpha == 255) {
            color = Utils.getColor(i11, iAlpha / 255.0f);
        } else {
            color = i11;
        }
        this.shadowStartColor = color;
        this.shadowMiddleColor = Utils.getColor(i11, iAlpha / 510.0f);
        this.shadowEndColor = Utils.getColor(i11, 0.003921569f);
        this.cornerShadowPathLT = new Path();
        this.cornerShadowPathLB = new Path();
        this.cornerShadowPathRT = new Path();
        this.cornerShadowPathRB = new Path();
        Paint paint = new Paint(5);
        this.cornerShadowPaintLT = paint;
        paint.setStyle(Paint.Style.FILL);
        this.cornerShadowPaintLB = new Paint(this.cornerShadowPaintLT);
        this.cornerShadowPaintRT = new Paint(this.cornerShadowPaintLT);
        this.cornerShadowPaintRB = new Paint(this.cornerShadowPaintLT);
        this.circleShadowPaint = new Paint(this.cornerShadowPaintLT);
        Paint paint2 = new Paint(this.cornerShadowPaintLT);
        this.edgeShadowPaintLT = paint2;
        paint2.setAntiAlias(false);
        this.edgeShadowPaintLB = new Paint(this.edgeShadowPaintLT);
        this.edgeShadowPaintRT = new Paint(this.edgeShadowPaintLT);
        this.edgeShadowPaintRB = new Paint(this.edgeShadowPaintLT);
        init();
    }
}
