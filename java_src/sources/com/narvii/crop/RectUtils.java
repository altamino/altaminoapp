package com.narvii.crop;

import android.graphics.RectF;

/* JADX INFO: loaded from: classes9.dex */
public class RectUtils {
    public static float[] getCenterFromRect(RectF rectF) {
        return new float[]{rectF.centerX(), rectF.centerY()};
    }

    public static float[] getRectSidesFromCorners(float[] fArr) {
        return new float[]{(float) Math.sqrt(Math.pow(fArr[0] - fArr[2], 2.0d) + Math.pow(fArr[1] - fArr[3], 2.0d)), (float) Math.sqrt(Math.pow(fArr[2] - fArr[4], 2.0d) + Math.pow(fArr[3] - fArr[5], 2.0d))};
    }

    public static float[] getCornersFromRect(RectF rectF) {
        float f = rectF.left;
        float f6 = rectF.top;
        float f7 = rectF.right;
        float f10 = rectF.bottom;
        return new float[]{f, f6, f7, f6, f7, f10, f, f10};
    }

    public static RectF trapToRect(float[] fArr) {
        RectF rectF = new RectF(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        for (int i10 = 1; i10 < fArr.length; i10 += 2) {
            float f = fArr[i10 - 1];
            float f6 = fArr[i10];
            float f7 = rectF.left;
            if (f < f7) {
                f7 = f;
            }
            rectF.left = f7;
            float f10 = rectF.top;
            if (f6 < f10) {
                f10 = f6;
            }
            rectF.top = f10;
            float f11 = rectF.right;
            if (f <= f11) {
                f = f11;
            }
            rectF.right = f;
            float f12 = rectF.bottom;
            if (f6 <= f12) {
                f6 = f12;
            }
            rectF.bottom = f6;
        }
        rectF.sort();
        return rectF;
    }
}
