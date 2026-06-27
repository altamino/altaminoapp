package com.meishe.cafconvertor.utils;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* loaded from: classes2.dex */
public class Utils {
    public static String charset = "UTF-8";

    public static int NV_UP_ALIGN_PO2(int i, int i2) {
        return ((i + i2) - 1) & ((i2 - 1) ^ (-1));
    }

    public static Bitmap scaleBitmap(Bitmap bitmap, int i, int i2) {
        if (bitmap == null) {
            return null;
        }
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        Matrix matrix = new Matrix();
        matrix.postScale(i / width, i2 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
    }
}
