package com.narvii.widget.shadow;

import android.graphics.Canvas;
import android.graphics.RectF;

/* loaded from: classes3.dex */
public class ShadowHelper {
    public static void drawShadow(Canvas canvas, ShadowConfig shadowConfig) {
        float f;
        int i;
        float f2;
        if (shadowConfig == null) {
            return;
        }
        float f3 = shadowConfig.shadowCornerRadius;
        float f4 = (-f3) - shadowConfig.shadowSize;
        float f5 = f3 * 2.0f;
        boolean z = shadowConfig.contentBounds.width() - f5 > 0.0f;
        boolean z2 = shadowConfig.contentBounds.height() - f5 > 0.0f;
        if (!z && !z2) {
            canvas.save();
            canvas.translate(shadowConfig.shadowOffsetX, shadowConfig.shadowOffsetY);
            canvas.drawCircle(shadowConfig.outerBoundsCircle.centerX(), shadowConfig.outerBoundsCircle.centerY(), shadowConfig.outerBoundsCircle.width() / 2.0f, shadowConfig.circleShadowPaint);
            canvas.restore();
            return;
        }
        float f6 = (shadowConfig.shadowOffsetX == 0 && shadowConfig.shadowOffsetY == 0) ? 0.25f : 0.75f;
        int i2 = shadowConfig.shadowSize;
        float f7 = f3 / ((i2 * f6) + f3);
        float f8 = f3 / ((i2 * f6) + f3);
        float f9 = f3 / ((i2 * 0.25f) + f3);
        int iSave = canvas.save();
        RectF rectF = shadowConfig.contentBounds;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.scale(f7, f8);
        canvas.drawPath(shadowConfig.cornerShadowPathLT, shadowConfig.cornerShadowPaintLT);
        if (z) {
            canvas.scale(1.0f / f7, 1.0f);
            int i3 = shadowConfig.shadowOffsetY;
            f = f8;
            i = iSave;
            canvas.drawRect(0.0f, i3 >= 0 ? f4 : i3 + f4, shadowConfig.contentBounds.width() - f5, -shadowConfig.shadowCornerRadius, shadowConfig.edgeShadowPaintLT);
        } else {
            f = f8;
            i = iSave;
        }
        canvas.restoreToCount(i);
        int iSave2 = canvas.save();
        RectF rectF2 = shadowConfig.contentBounds;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.scale(f7, f9);
        canvas.rotate(180.0f);
        canvas.drawPath(shadowConfig.cornerShadowPathRB, shadowConfig.cornerShadowPaintRB);
        if (z) {
            f2 = 1.0f;
            canvas.scale(1.0f / f7, 1.0f);
            int i4 = shadowConfig.shadowOffsetY;
            canvas.drawRect(0.0f, i4 >= 0 ? f4 - i4 : f4, shadowConfig.contentBounds.width() - f5, -shadowConfig.shadowCornerRadius, shadowConfig.edgeShadowPaintRB);
        } else {
            f2 = 1.0f;
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = shadowConfig.contentBounds;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.scale(f7, f9);
        canvas.rotate(270.0f);
        canvas.drawPath(shadowConfig.cornerShadowPathLB, shadowConfig.cornerShadowPaintLB);
        if (z2) {
            canvas.scale(f2 / f9, f2);
            int i5 = shadowConfig.shadowOffsetX;
            canvas.drawRect(0.0f, i5 >= 0 ? f4 : i5 + f4, shadowConfig.contentBounds.height() - f5, -shadowConfig.shadowCornerRadius, shadowConfig.edgeShadowPaintLB);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = shadowConfig.contentBounds;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        float f10 = f;
        canvas.scale(f7, f10);
        canvas.rotate(90.0f);
        canvas.drawPath(shadowConfig.cornerShadowPathRT, shadowConfig.cornerShadowPaintRT);
        if (z2) {
            canvas.scale(f2 / f10, f2);
            int i6 = shadowConfig.shadowOffsetX;
            if (i6 >= 0) {
                f4 -= i6;
            }
            canvas.drawRect(0.0f, f4, shadowConfig.contentBounds.height() - f5, -shadowConfig.shadowCornerRadius, shadowConfig.edgeShadowPaintRT);
        }
        canvas.restoreToCount(iSave4);
    }
}
