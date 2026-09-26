package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class p extends a {
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> colorAnimation;
    private final String name;

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.animation.content.d
    public void d(Canvas canvas, Matrix matrix, int i10) {
        this.paint.setColor(this.colorAnimation.g().intValue());
        super.d(canvas, matrix, i10);
    }

    public p(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.p pVar) {
        super(fVar, aVar, pVar.b().a(), pVar.e().a(), pVar.h(), pVar.i(), pVar.f(), pVar.d());
        this.name = pVar.g();
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA = pVar.c().a();
        this.colorAnimation = aVarA;
        aVarA.a(this);
        aVar.g(aVarA);
    }
}
