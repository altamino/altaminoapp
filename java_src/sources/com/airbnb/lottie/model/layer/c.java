package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public class c extends a {
    private final float density;
    private final Rect dst;
    private final Paint paint;
    private final Rect src;

    @Nullable
    private Bitmap y() {
        return this.lottieDrawable.o(this.layerModel.k());
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    c(com.airbnb.lottie.f fVar, d dVar, float f) {
        super(fVar, dVar);
        this.paint = new Paint(3);
        this.src = new Rect();
        this.dst = new Rect();
        this.density = f;
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        super.a(rectF, matrix);
        Bitmap bitmapY = y();
        if (bitmapY != null) {
            rectF.set(rectF.left, rectF.top, Math.min(rectF.right, bitmapY.getWidth()), Math.min(rectF.bottom, bitmapY.getHeight()));
            this.boundsMatrix.mapRect(rectF);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void k(@NonNull Canvas canvas, Matrix matrix, int i10) {
        Bitmap bitmapY = y();
        if (bitmapY == null) {
            return;
        }
        this.paint.setAlpha(i10);
        canvas.save();
        canvas.concat(matrix);
        this.src.set(0, 0, bitmapY.getWidth(), bitmapY.getHeight());
        this.dst.set(0, 0, (int) (bitmapY.getWidth() * this.density), (int) (bitmapY.getHeight() * this.density));
        canvas.drawBitmap(bitmapY, this.src, this.dst, this.paint);
        canvas.restore();
    }
}
