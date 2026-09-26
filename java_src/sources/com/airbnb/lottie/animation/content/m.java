package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class m implements k, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> cornerRadiusAnimation;
    private boolean isPathValid;
    private final com.airbnb.lottie.f lottieDrawable;
    private final String name;
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> positionAnimation;
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> sizeAnimation;

    @Nullable
    private q trimPath;
    private final Path path = new Path();
    private final RectF rect = new RectF();

    private void c() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<b> list, List<b> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            b bVar = list.get(i10);
            if (bVar instanceof q) {
                q qVar = (q) bVar;
                if (qVar.j() == com.airbnb.lottie.model.content.q.c.Simultaneously) {
                    this.trimPath = qVar;
                    qVar.c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    @Override // com.airbnb.lottie.animation.content.k
    public Path getPath() {
        if (this.isPathValid) {
            return this.path;
        }
        this.path.reset();
        PointF pointFG = this.sizeAnimation.g();
        float f = pointFG.x / 2.0f;
        float f6 = pointFG.y / 2.0f;
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.cornerRadiusAnimation;
        float fFloatValue = aVar == null ? 0.0f : aVar.g().floatValue();
        float fMin = Math.min(f, f6);
        if (fFloatValue > fMin) {
            fFloatValue = fMin;
        }
        PointF pointFG2 = this.positionAnimation.g();
        this.path.moveTo(pointFG2.x + f, (pointFG2.y - f6) + fFloatValue);
        this.path.lineTo(pointFG2.x + f, (pointFG2.y + f6) - fFloatValue);
        if (fFloatValue > 0.0f) {
            RectF rectF = this.rect;
            float f7 = pointFG2.x;
            float f10 = fFloatValue * 2.0f;
            float f11 = pointFG2.y;
            rectF.set((f7 + f) - f10, (f11 + f6) - f10, f7 + f, f11 + f6);
            this.path.arcTo(this.rect, 0.0f, 90.0f, false);
        }
        this.path.lineTo((pointFG2.x - f) + fFloatValue, pointFG2.y + f6);
        if (fFloatValue > 0.0f) {
            RectF rectF2 = this.rect;
            float f12 = pointFG2.x;
            float f13 = pointFG2.y;
            float f14 = fFloatValue * 2.0f;
            rectF2.set(f12 - f, (f13 + f6) - f14, (f12 - f) + f14, f13 + f6);
            this.path.arcTo(this.rect, 90.0f, 90.0f, false);
        }
        this.path.lineTo(pointFG2.x - f, (pointFG2.y - f6) + fFloatValue);
        if (fFloatValue > 0.0f) {
            RectF rectF3 = this.rect;
            float f15 = pointFG2.x;
            float f16 = pointFG2.y;
            float f17 = fFloatValue * 2.0f;
            rectF3.set(f15 - f, f16 - f6, (f15 - f) + f17, (f16 - f6) + f17);
            this.path.arcTo(this.rect, 180.0f, 90.0f, false);
        }
        this.path.lineTo((pointFG2.x + f) - fFloatValue, pointFG2.y - f6);
        if (fFloatValue > 0.0f) {
            RectF rectF4 = this.rect;
            float f18 = pointFG2.x;
            float f19 = fFloatValue * 2.0f;
            float f20 = pointFG2.y;
            rectF4.set((f18 + f) - f19, f20 - f6, f18 + f, (f20 - f6) + f19);
            this.path.arcTo(this.rect, 270.0f, 90.0f, false);
        }
        this.path.close();
        com.airbnb.lottie.utils.f.b(this.path, this.trimPath);
        this.isPathValid = true;
        return this.path;
    }

    public m(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.j jVar) {
        this.name = jVar.c();
        this.lottieDrawable = fVar;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA = jVar.d().a();
        this.positionAnimation = aVarA;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA2 = jVar.e().a();
        this.sizeAnimation = aVarA2;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = jVar.b().a();
        this.cornerRadiusAnimation = aVarA3;
        aVar.g(aVarA);
        aVar.g(aVarA2);
        aVar.g(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        c();
    }
}
