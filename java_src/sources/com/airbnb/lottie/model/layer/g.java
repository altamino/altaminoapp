package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public class g extends a {
    private final d layerModel;
    private final Paint paint;
    private final RectF rect;

    private void y(Matrix matrix) {
        this.rect.set(0.0f, 0.0f, this.layerModel.o(), this.layerModel.n());
        matrix.mapRect(this.rect);
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void k(Canvas canvas, Matrix matrix, int i10) {
        int iAlpha = Color.alpha(this.layerModel.m());
        if (iAlpha == 0) {
            return;
        }
        int iIntValue = (int) ((i10 / 255.0f) * (((iAlpha / 255.0f) * this.transform.f().g().intValue()) / 100.0f) * 255.0f);
        this.paint.setAlpha(iIntValue);
        if (iIntValue > 0) {
            y(matrix);
            canvas.drawRect(this.rect, this.paint);
        }
    }

    g(com.airbnb.lottie.f fVar, d dVar) {
        super(fVar, dVar);
        this.rect = new RectF();
        Paint paint = new Paint();
        this.paint = paint;
        this.layerModel = dVar;
        paint.setAlpha(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(dVar.m());
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        super.a(rectF, matrix);
        y(this.boundsMatrix);
        rectF.set(this.rect);
    }
}
