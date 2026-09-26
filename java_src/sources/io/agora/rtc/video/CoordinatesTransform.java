package io.agora.rtc.video;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatesTransform {
    public static RectF normalizedFaceRect(Rect rect, int displayOrientation, boolean isMirror) {
        Matrix matrix = new Matrix();
        prepareMatrix(matrix, isMirror, displayOrientation);
        RectF rectF = new RectF(rect);
        matrix.mapRect(rectF);
        return rectF;
    }

    private static void prepareMatrix(Matrix matrix, boolean mirror, int displayOrientation) {
        matrix.setScale(mirror ? -1.0f : 1.0f, 1.0f);
        matrix.postRotate(displayOrientation);
        matrix.postScale(5.0E-4f, 5.0E-4f);
        matrix.postTranslate(0.5f, 0.5f);
    }

    public static Rect sensorToNormalizedPreview(Rect transformRect, int previewWidth, int previewHeight, Rect cropRegion) {
        double d;
        double d2;
        if (previewWidth > previewHeight) {
            d = previewWidth;
            d2 = previewHeight;
        } else {
            d = previewHeight;
            d2 = previewWidth;
        }
        double d6 = d / d2;
        double dWidth = ((double) cropRegion.width()) / ((double) cropRegion.height());
        int iWidth = cropRegion.width();
        int iHeight = cropRegion.height();
        if (d6 > dWidth) {
            iHeight = (int) (((double) iWidth) / d6);
        } else {
            iWidth = (int) (((double) iHeight) * d6);
        }
        int iAbs = Math.abs(iWidth - cropRegion.width());
        int iAbs2 = Math.abs(iHeight - cropRegion.height());
        RectF rectF = new RectF(transformRect);
        Matrix matrix = new Matrix();
        matrix.postTranslate((-cropRegion.left) - (iAbs / 2), (-cropRegion.top) - (iAbs2 / 2));
        matrix.postTranslate((-iWidth) / 2, (-iHeight) / 2);
        matrix.postScale(2000.0f / iWidth, 2000.0f / iHeight);
        matrix.mapRect(rectF);
        Rect rect = new Rect();
        rectF.round(rect);
        return rect;
    }
}
