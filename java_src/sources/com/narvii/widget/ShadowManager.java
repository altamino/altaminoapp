package com.narvii.widget;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.SparseArray;
import com.narvii.util.crashlytics.OomHelper;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes9.dex */
@Deprecated
public class ShadowManager {
    private static final Bitmap empty;
    private static final Paint paint = new Paint();
    private static final SparseArray<SoftReference<Bitmap>> cacheShadow = new SparseArray<>();

    static {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        empty = bitmapCreateBitmap;
        bitmapCreateBitmap.eraseColor(0);
    }

    @Deprecated
    private static Bitmap createShadow(int i10, int i11, int i12, int i13, int i14) {
        float f = i10;
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f, BlurMaskFilter.Blur.NORMAL);
        Paint paint2 = new Paint();
        paint2.setMaskFilter(blurMaskFilter);
        int i15 = i10 * 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i13 + i15, i15 + i14, Bitmap.Config.ARGB_8888);
        if (bitmapCreateBitmap == null) {
            throw new OutOfMemoryError();
        }
        bitmapCreateBitmap.eraseColor(0);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint3 = paint;
        paint3.setAntiAlias(true);
        paint3.setColor(i11);
        RectF rectF = new RectF(f, f, i13 + i10, i14 + i10);
        float f6 = i12;
        canvas.drawRoundRect(rectF, f6, f6, paint3);
        int[] iArr = new int[2];
        Bitmap bitmapExtractAlpha = bitmapCreateBitmap.extractAlpha(paint2, iArr);
        bitmapCreateBitmap.eraseColor(0);
        canvas.drawBitmap(bitmapExtractAlpha, iArr[0], iArr[1], paint3);
        return bitmapCreateBitmap;
    }

    @Deprecated
    public static Bitmap getShadow(int i10, int i11, int i12, int i13, int i14) {
        int i15 = ((((((i12 * 31) + i10) * 31) + i13) * 31) + i14) ^ i11;
        SparseArray<SoftReference<Bitmap>> sparseArray = cacheShadow;
        SoftReference<Bitmap> softReference = sparseArray.get(i15);
        Bitmap bitmap = softReference == null ? null : softReference.get();
        if (bitmap != null) {
            return bitmap;
        }
        try {
            Bitmap bitmapCreateShadow = createShadow(i10, i11, i12, i13, i14);
            sparseArray.put(i15, new SoftReference<>(bitmapCreateShadow));
            return bitmapCreateShadow;
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return empty;
        }
    }
}
