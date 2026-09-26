package com.narvii.widget.shadow;

import android.graphics.Canvas;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes9.dex */
public class ShadowHelper {
    public static void drawShadow(Canvas canvas, ShadowConfig shadowConfig) {
        int i10;
        float f;
        if (shadowConfig == null) {
            return;
        }
        float f6 = shadowConfig.shadowCornerRadius;
        float f7 = (-f6) - shadowConfig.shadowSize;
        float f10 = f6 * 2.0f;
        boolean z6 = shadowConfig.contentBounds.width() - f10 > 0.0f;
        boolean z10 = shadowConfig.contentBounds.height() - f10 > 0.0f;
        if (!z6 && !z10) {
            canvas.save();
            canvas.translate(shadowConfig.shadowOffsetX, shadowConfig.shadowOffsetY);
            canvas.drawCircle(shadowConfig.outerBoundsCircle.centerX(), shadowConfig.outerBoundsCircle.centerY(), shadowConfig.outerBoundsCircle.width() / 2.0f, shadowConfig.circleShadowPaint);
            canvas.restore();
            return;
        }
        float f11 = (shadowConfig.shadowOffsetX == 0 && shadowConfig.shadowOffsetY == 0) ? 0.25f : 0.75f;
        int i11 = shadowConfig.shadowSize;
        float f12 = f6 / ((i11 * f11) + f6);
        float f13 = f6 / ((i11 * f11) + f6);
        float f14 = f6 / ((i11 * 0.25f) + f6);
        int iSave = canvas.save();
        RectF rectF = shadowConfig.contentBounds;
        canvas.translate(rectF.left + f6, rectF.top + f6);
        canvas.scale(f12, f13);
        canvas.drawPath(shadowConfig.cornerShadowPathLT, shadowConfig.cornerShadowPaintLT);
        if (z6) {
            canvas.scale(1.0f / f12, 1.0f);
            int i12 = shadowConfig.shadowOffsetY;
            i10 = iSave;
            canvas.drawRect(0.0f, i12 >= 0 ? f7 : i12 + f7, shadowConfig.contentBounds.width() - f10, -shadowConfig.shadowCornerRadius, shadowConfig.edgeShadowPaintLT);
        } else {
            i10 = iSave;
        }
        canvas.restoreToCount(i10);
        int iSave2 = canvas.save();
        RectF rectF2 = shadowConfig.contentBounds;
        canvas.translate(rectF2.right - f6, rectF2.bottom - f6);
        canvas.scale(f12, f14);
        canvas.rotate(180.0f);
        canvas.drawPath(shadowConfig.cornerShadowPathRB, shadowConfig.cornerShadowPaintRB);
        if (z6) {
            f = 1.0f;
            canvas.scale(1.0f / f12, 1.0f);
            int i13 = shadowConfig.shadowOffsetY;
            canvas.drawRect(0.0f, i13 >= 0 ? f7 - i13 : f7, shadowConfig.contentBounds.width() - f10, -shadowConfig.shadowCornerRadius, shadowConfig.edgeShadowPaintRB);
        } else {
            f = 1.0f;
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = shadowConfig.contentBounds;
        canvas.translate(rectF3.left + f6, rectF3.bottom - f6);
        canvas.scale(f12, f14);
        canvas.rotate(270.0f);
        canvas.drawPath(shadowConfig.cornerShadowPathLB, shadowConfig.cornerShadowPaintLB);
        if (z10) {
            canvas.scale(f / f14, f);
            int i14 = shadowConfig.shadowOffsetX;
            canvas.drawRect(0.0f, i14 >= 0 ? f7 : i14 + f7, shadowConfig.contentBounds.height() - f10, -shadowConfig.shadowCornerRadius, shadowConfig.edgeShadowPaintLB);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = shadowConfig.contentBounds;
        canvas.translate(rectF4.right - f6, rectF4.top + f6);
        canvas.scale(f12, f13);
        canvas.rotate(90.0f);
        canvas.drawPath(shadowConfig.cornerShadowPathRT, shadowConfig.cornerShadowPaintRT);
        if (z10) {
            canvas.scale(f / f13, f);
            int i15 = shadowConfig.shadowOffsetX;
            if (i15 >= 0) {
                f7 -= i15;
            }
            canvas.drawRect(0.0f, f7, shadowConfig.contentBounds.height() - f10, -shadowConfig.shadowCornerRadius, shadowConfig.edgeShadowPaintRT);
        }
        canvas.restoreToCount(iSave4);
    }
}
