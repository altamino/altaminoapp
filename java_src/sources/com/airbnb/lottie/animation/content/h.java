package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;

/* JADX INFO: loaded from: classes6.dex */
public class h extends a {
    private static final int CACHE_STEPS_MS = 32;
    private final RectF boundsRect;
    private final int cacheSteps;
    private final com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> colorAnimation;
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> endPointAnimation;
    private final LongSparseArray<LinearGradient> linearGradientCache;
    private final String name;
    private final LongSparseArray<RadialGradient> radialGradientCache;
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> startPointAnimation;
    private final com.airbnb.lottie.model.content.f type;

    @Override // com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
    }

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    private int h() {
        int iRound = Math.round(this.startPointAnimation.e() * this.cacheSteps);
        int iRound2 = Math.round(this.endPointAnimation.e() * this.cacheSteps);
        int iRound3 = Math.round(this.colorAnimation.e() * this.cacheSteps);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.animation.content.d
    public void d(Canvas canvas, Matrix matrix, int i10) {
        a(this.boundsRect, matrix);
        if (this.type == com.airbnb.lottie.model.content.f.Linear) {
            this.paint.setShader(i());
        } else {
            this.paint.setShader(j());
        }
        super.d(canvas, matrix, i10);
    }

    public h(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.e eVar) {
        super(fVar, aVar, eVar.b().a(), eVar.g().a(), eVar.j(), eVar.l(), eVar.h(), eVar.c());
        this.linearGradientCache = new LongSparseArray<>();
        this.radialGradientCache = new LongSparseArray<>();
        this.boundsRect = new RectF();
        this.name = eVar.i();
        this.type = eVar.f();
        this.cacheSteps = (int) (fVar.l().k() / 32);
        com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> aVarA = eVar.e().a();
        this.colorAnimation = aVarA;
        aVarA.a(this);
        aVar.g(aVarA);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA2 = eVar.k().a();
        this.startPointAnimation = aVarA2;
        aVarA2.a(this);
        aVar.g(aVarA2);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA3 = eVar.d().a();
        this.endPointAnimation = aVarA3;
        aVarA3.a(this);
        aVar.g(aVarA3);
    }

    private LinearGradient i() {
        long jH = h();
        LinearGradient linearGradientH = this.linearGradientCache.h(jH);
        if (linearGradientH != null) {
            return linearGradientH;
        }
        PointF pointFG = this.startPointAnimation.g();
        PointF pointFG2 = this.endPointAnimation.g();
        com.airbnb.lottie.model.content.c cVarG = this.colorAnimation.g();
        int[] iArrA = cVarG.a();
        float[] fArrB = cVarG.b();
        RectF rectF = this.boundsRect;
        int iWidth = (int) (rectF.left + (rectF.width() / 2.0f) + pointFG.x);
        RectF rectF2 = this.boundsRect;
        int iHeight = (int) (rectF2.top + (rectF2.height() / 2.0f) + pointFG.y);
        RectF rectF3 = this.boundsRect;
        int iWidth2 = (int) (rectF3.left + (rectF3.width() / 2.0f) + pointFG2.x);
        RectF rectF4 = this.boundsRect;
        LinearGradient linearGradient = new LinearGradient(iWidth, iHeight, iWidth2, (int) (rectF4.top + (rectF4.height() / 2.0f) + pointFG2.y), iArrA, fArrB, Shader.TileMode.CLAMP);
        this.linearGradientCache.m(jH, linearGradient);
        return linearGradient;
    }

    private RadialGradient j() {
        long jH = h();
        RadialGradient radialGradientH = this.radialGradientCache.h(jH);
        if (radialGradientH != null) {
            return radialGradientH;
        }
        PointF pointFG = this.startPointAnimation.g();
        PointF pointFG2 = this.endPointAnimation.g();
        com.airbnb.lottie.model.content.c cVarG = this.colorAnimation.g();
        int[] iArrA = cVarG.a();
        float[] fArrB = cVarG.b();
        RectF rectF = this.boundsRect;
        int iWidth = (int) (rectF.left + (rectF.width() / 2.0f) + pointFG.x);
        RectF rectF2 = this.boundsRect;
        int iHeight = (int) (rectF2.top + (rectF2.height() / 2.0f) + pointFG.y);
        RectF rectF3 = this.boundsRect;
        int iWidth2 = (int) (rectF3.left + (rectF3.width() / 2.0f) + pointFG2.x);
        RectF rectF4 = this.boundsRect;
        RadialGradient radialGradient = new RadialGradient(iWidth, iHeight, (float) Math.hypot(iWidth2 - iWidth, ((int) ((rectF4.top + (rectF4.height() / 2.0f)) + pointFG2.y)) - iHeight), iArrA, fArrB, Shader.TileMode.CLAMP);
        this.radialGradientCache.m(jH, radialGradient);
        return radialGradient;
    }
}
