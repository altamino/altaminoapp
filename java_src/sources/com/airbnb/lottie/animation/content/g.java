package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class g implements d, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private static final int CACHE_STEPS_MS = 32;
    private final RectF boundsRect;
    private final int cacheSteps;
    private final com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> colorAnimation;
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> endPointAnimation;
    private final com.airbnb.lottie.f lottieDrawable;
    private final String name;
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> opacityAnimation;
    private final Paint paint;
    private final Path path;
    private final List<k> paths;
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> startPointAnimation;
    private final com.airbnb.lottie.model.content.f type;
    private final LongSparseArray<LinearGradient> linearGradientCache = new LongSparseArray<>();
    private final LongSparseArray<RadialGradient> radialGradientCache = new LongSparseArray<>();
    private final Matrix shaderMatrix = new Matrix();

    @Override // com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
    }

    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<b> list, List<b> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            b bVar = list2.get(i10);
            if (bVar instanceof k) {
                this.paths.add((k) bVar);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    private int c() {
        int iRound = Math.round(this.startPointAnimation.e() * this.cacheSteps);
        int iRound2 = Math.round(this.endPointAnimation.e() * this.cacheSteps);
        int iRound3 = Math.round(this.colorAnimation.e() * this.cacheSteps);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        this.path.reset();
        for (int i10 = 0; i10 < this.paths.size(); i10++) {
            this.path.addPath(this.paths.get(i10).getPath(), matrix);
        }
        this.path.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void d(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.d.a("GradientFillContent#draw");
        this.path.reset();
        for (int i11 = 0; i11 < this.paths.size(); i11++) {
            this.path.addPath(this.paths.get(i11).getPath(), matrix);
        }
        this.path.computeBounds(this.boundsRect, false);
        Shader shaderG = this.type == com.airbnb.lottie.model.content.f.Linear ? g() : h();
        this.shaderMatrix.set(matrix);
        shaderG.setLocalMatrix(this.shaderMatrix);
        this.paint.setShader(shaderG);
        this.paint.setAlpha((int) ((((i10 / 255.0f) * this.opacityAnimation.g().intValue()) / 100.0f) * 255.0f));
        canvas.drawPath(this.path, this.paint);
        com.airbnb.lottie.d.b("GradientFillContent#draw");
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        this.lottieDrawable.invalidateSelf();
    }

    public g(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.d dVar) {
        Path path = new Path();
        this.path = path;
        this.paint = new Paint(1);
        this.boundsRect = new RectF();
        this.paths = new ArrayList();
        this.name = dVar.f();
        this.lottieDrawable = fVar;
        this.type = dVar.e();
        path.setFillType(dVar.c());
        this.cacheSteps = (int) (fVar.l().k() / 32);
        com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> aVarA = dVar.d().a();
        this.colorAnimation = aVarA;
        aVarA.a(this);
        aVar.g(aVarA);
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA2 = dVar.g().a();
        this.opacityAnimation = aVarA2;
        aVarA2.a(this);
        aVar.g(aVarA2);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA3 = dVar.h().a();
        this.startPointAnimation = aVarA3;
        aVarA3.a(this);
        aVar.g(aVarA3);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA4 = dVar.b().a();
        this.endPointAnimation = aVarA4;
        aVarA4.a(this);
        aVar.g(aVarA4);
    }

    private LinearGradient g() {
        long jC = c();
        LinearGradient linearGradientH = this.linearGradientCache.h(jC);
        if (linearGradientH != null) {
            return linearGradientH;
        }
        PointF pointFG = this.startPointAnimation.g();
        PointF pointFG2 = this.endPointAnimation.g();
        com.airbnb.lottie.model.content.c cVarG = this.colorAnimation.g();
        LinearGradient linearGradient = new LinearGradient(pointFG.x, pointFG.y, pointFG2.x, pointFG2.y, cVarG.a(), cVarG.b(), Shader.TileMode.CLAMP);
        this.linearGradientCache.m(jC, linearGradient);
        return linearGradient;
    }

    private RadialGradient h() {
        long jC = c();
        RadialGradient radialGradientH = this.radialGradientCache.h(jC);
        if (radialGradientH != null) {
            return radialGradientH;
        }
        PointF pointFG = this.startPointAnimation.g();
        PointF pointFG2 = this.endPointAnimation.g();
        com.airbnb.lottie.model.content.c cVarG = this.colorAnimation.g();
        int[] iArrA = cVarG.a();
        float[] fArrB = cVarG.b();
        float f = pointFG.x;
        float f6 = pointFG.y;
        RadialGradient radialGradient = new RadialGradient(f, f6, (float) Math.hypot(pointFG2.x - f, pointFG2.y - f6), iArrA, fArrB, Shader.TileMode.CLAMP);
        this.radialGradientCache.m(jC, radialGradient);
        return radialGradient;
    }
}
