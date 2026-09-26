package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes11.dex */
public class e extends a {
    @Override // com.airbnb.lottie.model.layer.a
    void k(Canvas canvas, Matrix matrix, int i10) {
    }

    e(com.airbnb.lottie.f fVar, d dVar) {
        super(fVar, dVar);
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        super.a(rectF, matrix);
        rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
    }
}
