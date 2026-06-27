package com.narvii.widget.shadow;

import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
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

    public ShadowConfig(RectF rectF, float f, int i, int[] iArr, int i2) {
        this.contentBounds = rectF;
        this.shadowCornerRadius = f;
        this.shadowSize = i;
        this.shadowOffsetX = iArr[0];
        this.shadowOffsetY = iArr[1];
        int iAlpha = Color.alpha(i2);
        iAlpha = iAlpha == 255 ? iAlpha / 2 : iAlpha;
        this.shadowStartColor = iAlpha == 255 ? Utils.getColor(i2, iAlpha / 255.0f) : i2;
        this.shadowMiddleColor = Utils.getColor(i2, iAlpha / 510.0f);
        this.shadowEndColor = Utils.getColor(i2, 0.003921569f);
        this.cornerShadowPathLT = new Path();
        this.cornerShadowPathLB = new Path();
        this.cornerShadowPathRT = new Path();
        this.cornerShadowPathRB = new Path();
        this.cornerShadowPaintLT = new Paint(5);
        this.cornerShadowPaintLT.setStyle(Paint.Style.FILL);
        this.cornerShadowPaintLB = new Paint(this.cornerShadowPaintLT);
        this.cornerShadowPaintRT = new Paint(this.cornerShadowPaintLT);
        this.cornerShadowPaintRB = new Paint(this.cornerShadowPaintLT);
        this.circleShadowPaint = new Paint(this.cornerShadowPaintLT);
        this.edgeShadowPaintLT = new Paint(this.cornerShadowPaintLT);
        this.edgeShadowPaintLT.setAntiAlias(false);
        this.edgeShadowPaintLB = new Paint(this.edgeShadowPaintLT);
        this.edgeShadowPaintRT = new Paint(this.edgeShadowPaintLT);
        this.edgeShadowPaintRB = new Paint(this.edgeShadowPaintLT);
        init();
    }

    private void init() {
        RectF rectF = this.innerBounds;
        if (rectF == null) {
            float f = this.shadowCornerRadius;
            this.innerBounds = new RectF(-f, -f, f, f);
        } else {
            float f2 = this.shadowCornerRadius;
            rectF.set(-f2, -f2, f2, f2);
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

    public void prepareShadow() {
        this.outerBoundsLT.inset(this.shadowOffsetX >= 0 ? -this.shadowSize : (-this.shadowSize) + r1, this.shadowOffsetY >= 0 ? -this.shadowSize : (-this.shadowSize) + r2);
        this.outerBoundsLB.inset(this.shadowOffsetY >= 0 ? (-this.shadowSize) - r1 : -this.shadowSize, this.shadowOffsetX >= 0 ? -this.shadowSize : (-this.shadowSize) + r2);
        this.outerBoundsRT.inset(this.shadowOffsetY >= 0 ? -this.shadowSize : (-this.shadowSize) + r1, this.shadowOffsetX >= 0 ? (-this.shadowSize) - r2 : -this.shadowSize);
        this.outerBoundsRB.inset(this.shadowOffsetX >= 0 ? (-this.shadowSize) - r1 : -this.shadowSize, this.shadowOffsetY >= 0 ? (-this.shadowSize) - r2 : -this.shadowSize);
        RectF rectF = this.outerBoundsCircle;
        int i = this.shadowSize;
        rectF.inset(-i, -i);
        boolean z = this.contentBounds.width() - (this.shadowCornerRadius * 2.0f) > 0.0f;
        boolean z2 = this.contentBounds.height() - (this.shadowCornerRadius * 2.0f) > 0.0f;
        preparePath(this.cornerShadowPathLT, this.outerBoundsLT, z ? 0.0f : 2.7f);
        preparePath(this.cornerShadowPathLB, this.outerBoundsLB, z2 ? 0.0f : 2.7f);
        preparePath(this.cornerShadowPathRT, this.outerBoundsRT, z2 ? 0.0f : 2.7f);
        preparePath(this.cornerShadowPathRB, this.outerBoundsRB, z ? 0.0f : 2.7f);
        Paint paint = this.cornerShadowPaintLT;
        RectF rectF2 = this.outerBoundsLT;
        prepareCornerShadowPaint(paint, Math.max(-rectF2.top, -rectF2.left));
        Paint paint2 = this.cornerShadowPaintLB;
        RectF rectF3 = this.outerBoundsLB;
        prepareCornerShadowPaint(paint2, Math.max(-rectF3.top, -rectF3.left));
        Paint paint3 = this.cornerShadowPaintRT;
        RectF rectF4 = this.outerBoundsRT;
        prepareCornerShadowPaint(paint3, Math.max(-rectF4.top, -rectF4.left));
        Paint paint4 = this.cornerShadowPaintRB;
        RectF rectF5 = this.outerBoundsRB;
        prepareCornerShadowPaint(paint4, Math.max(-rectF5.top, -rectF5.left));
        prepareCircleShadowPaint(this.circleShadowPaint);
        prepareEdgeShadowPaint(this.edgeShadowPaintLT, this.outerBoundsLT.top);
        prepareEdgeShadowPaint(this.edgeShadowPaintLB, this.outerBoundsLB.top);
        prepareEdgeShadowPaint(this.edgeShadowPaintRT, this.outerBoundsRT.top);
        prepareEdgeShadowPaint(this.edgeShadowPaintRB, this.outerBoundsRB.top);
    }

    private void preparePath(Path path, RectF rectF, float f) {
        path.setFillType(Path.FillType.EVEN_ODD);
        path.moveTo(this.innerBounds.left, 0.0f);
        path.lineTo(rectF.left, 0.0f);
        path.arcTo(rectF, 180.0f, 90.0f - f, false);
        path.arcTo(this.innerBounds, 270.0f - f, f - 90.0f, false);
        path.close();
    }

    private void prepareCircleShadowPaint(Paint paint) {
        if (this.outerBoundsCircle.width() > 0.0f) {
            float fWidth = (this.contentBounds.width() * 0.9f) / this.outerBoundsCircle.width();
            paint.setShader(new RadialGradient(this.outerBoundsCircle.centerX(), this.outerBoundsCircle.centerY(), this.outerBoundsCircle.width() / 2.0f, new int[]{0, this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, fWidth, ((1.0f - fWidth) / 2.0f) + fWidth, 1.0f}, Shader.TileMode.CLAMP));
        }
    }

    private void prepareCornerShadowPaint(Paint paint, float f) {
        if (f > 0.0f) {
            float f2 = this.shadowCornerRadius / f;
            paint.setShader(new RadialGradient(0.0f, 0.0f, f, new int[]{0, this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, f2, ((1.0f - f2) / 2.0f) + f2, 1.0f}, Shader.TileMode.CLAMP));
        }
    }

    private void prepareEdgeShadowPaint(Paint paint, float f) {
        paint.setShader(new LinearGradient(0.0f, this.innerBounds.top, 0.0f, f, new int[]{this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        paint.setAntiAlias(false);
    }

    public void reset() {
        this.cornerShadowPathLT.reset();
        this.cornerShadowPathLB.reset();
        this.cornerShadowPathRT.reset();
        this.cornerShadowPathRB.reset();
        init();
    }
}
