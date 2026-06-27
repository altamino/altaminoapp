package io.agora.rtc.video;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;

/* loaded from: classes4.dex */
public class CoordinatesTransform {
    public static RectF normalizedFaceRect(Rect rect, int i, boolean z) {
        Matrix matrix = new Matrix();
        prepareMatrix(matrix, z, i);
        RectF rectF = new RectF(rect);
        matrix.mapRect(rectF);
        return rectF;
    }

    private static void prepareMatrix(Matrix matrix, boolean z, int i) {
        matrix.setScale(z ? -1.0f : 1.0f, 1.0f);
        matrix.postRotate(i);
        matrix.postScale(5.0E-4f, 5.0E-4f);
        matrix.postTranslate(0.5f, 0.5f);
    }

    public static Rect sensorToNormalizedPreview(Rect rect, int i, int i2, Rect rect2) {
        double d;
        double d2;
        if (i > i2) {
            d = i;
            d2 = i2;
        } else {
            d = i2;
            d2 = i;
        }
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        double dWidth = rect2.width();
        double dHeight = rect2.height();
        Double.isNaN(dWidth);
        Double.isNaN(dHeight);
        double d4 = dWidth / dHeight;
        int iWidth = rect2.width();
        int iHeight = rect2.height();
        if (d3 > d4) {
            double d5 = iWidth;
            Double.isNaN(d5);
            iHeight = (int) (d5 / d3);
        } else {
            double d6 = iHeight;
            Double.isNaN(d6);
            iWidth = (int) (d6 * d3);
        }
        int iAbs = Math.abs(iWidth - rect2.width());
        int iAbs2 = Math.abs(iHeight - rect2.height());
        RectF rectF = new RectF(rect);
        Matrix matrix = new Matrix();
        matrix.postTranslate((-rect2.left) - (iAbs / 2), (-rect2.top) - (iAbs2 / 2));
        matrix.postTranslate((-iWidth) / 2, (-iHeight) / 2);
        matrix.postScale(2000.0f / iWidth, 2000.0f / iHeight);
        matrix.mapRect(rectF);
        Rect rect3 = new Rect();
        rectF.round(rect3);
        return rect3;
    }
}
