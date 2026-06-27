package com.narvii.crop;

import android.graphics.RectF;

/* loaded from: classes2.dex */
public class RectUtils {
    public static float[] getCornersFromRect(RectF rectF) {
        float f = rectF.left;
        float f2 = rectF.top;
        float f3 = rectF.right;
        float f4 = rectF.bottom;
        return new float[]{f, f2, f3, f2, f3, f4, f, f4};
    }

    public static float[] getRectSidesFromCorners(float[] fArr) {
        return new float[]{(float) Math.sqrt(Math.pow(fArr[0] - fArr[2], 2.0d) + Math.pow(fArr[1] - fArr[3], 2.0d)), (float) Math.sqrt(Math.pow(fArr[2] - fArr[4], 2.0d) + Math.pow(fArr[3] - fArr[5], 2.0d))};
    }

    public static float[] getCenterFromRect(RectF rectF) {
        return new float[]{rectF.centerX(), rectF.centerY()};
    }

    public static RectF trapToRect(float[] fArr) {
        RectF rectF = new RectF(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        for (int i = 1; i < fArr.length; i += 2) {
            float f = fArr[i - 1];
            float f2 = fArr[i];
            float f3 = rectF.left;
            if (f < f3) {
                f3 = f;
            }
            rectF.left = f3;
            float f4 = rectF.top;
            if (f2 < f4) {
                f4 = f2;
            }
            rectF.top = f4;
            float f5 = rectF.right;
            if (f <= f5) {
                f = f5;
            }
            rectF.right = f;
            float f6 = rectF.bottom;
            if (f2 > f6) {
                f6 = f2;
            }
            rectF.bottom = f6;
        }
        rectF.sort();
        return rectF;
    }
}
