package com.narvii.widget;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.SparseArray;
import com.narvii.util.crashlytics.OomHelper;
import java.lang.ref.SoftReference;

@Deprecated
/* loaded from: classes3.dex */
public class ShadowManager {
    private static final Paint paint = new Paint();
    private static final SparseArray<SoftReference<Bitmap>> cacheShadow = new SparseArray<>();
    private static final Bitmap empty = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);

    static {
        empty.eraseColor(0);
    }

    @Deprecated
    public static Bitmap getShadow(int i, int i2, int i3, int i4, int i5) {
        int i6 = ((((((i3 * 31) + i) * 31) + i4) * 31) + i5) ^ i2;
        SoftReference<Bitmap> softReference = cacheShadow.get(i6);
        Bitmap bitmap = softReference == null ? null : softReference.get();
        if (bitmap != null) {
            return bitmap;
        }
        try {
            Bitmap bitmapCreateShadow = createShadow(i, i2, i3, i4, i5);
            cacheShadow.put(i6, new SoftReference<>(bitmapCreateShadow));
            return bitmapCreateShadow;
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return empty;
        }
    }

    @Deprecated
    private static Bitmap createShadow(int i, int i2, int i3, int i4, int i5) {
        float f = i;
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f, BlurMaskFilter.Blur.NORMAL);
        Paint paint2 = new Paint();
        paint2.setMaskFilter(blurMaskFilter);
        int i6 = i * 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i4 + i6, i6 + i5, Bitmap.Config.ARGB_8888);
        if (bitmapCreateBitmap == null) {
            throw new OutOfMemoryError();
        }
        bitmapCreateBitmap.eraseColor(0);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        paint.setAntiAlias(true);
        paint.setColor(i2);
        RectF rectF = new RectF(f, f, i4 + i, i5 + i);
        float f2 = i3;
        canvas.drawRoundRect(rectF, f2, f2, paint);
        Bitmap bitmapExtractAlpha = bitmapCreateBitmap.extractAlpha(paint2, new int[2]);
        bitmapCreateBitmap.eraseColor(0);
        canvas.drawBitmap(bitmapExtractAlpha, r7[0], r7[1], paint);
        return bitmapCreateBitmap;
    }
}
