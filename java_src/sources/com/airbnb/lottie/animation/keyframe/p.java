package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public class p {
    private final a<PointF, PointF> anchorPoint;

    @Nullable
    private final a<?, Float> endOpacity;
    private final Matrix matrix = new Matrix();
    private final a<Integer, Integer> opacity;
    private final a<?, PointF> position;
    private final a<Float, Float> rotation;
    private final a<com.airbnb.lottie.model.k, com.airbnb.lottie.model.k> scale;

    @Nullable
    private final a<?, Float> startOpacity;

    @Nullable
    public a<?, Float> c() {
        return this.endOpacity;
    }

    public a<?, Integer> f() {
        return this.opacity;
    }

    @Nullable
    public a<?, Float> g() {
        return this.startOpacity;
    }

    public void a(com.airbnb.lottie.model.layer.a aVar) {
        aVar.g(this.anchorPoint);
        aVar.g(this.position);
        aVar.g(this.scale);
        aVar.g(this.rotation);
        aVar.g(this.opacity);
        a<?, Float> aVar2 = this.startOpacity;
        if (aVar2 != null) {
            aVar.g(aVar2);
        }
        a<?, Float> aVar3 = this.endOpacity;
        if (aVar3 != null) {
            aVar.g(aVar3);
        }
    }

    public void b(a.InterfaceC0108a interfaceC0108a) {
        this.anchorPoint.a(interfaceC0108a);
        this.position.a(interfaceC0108a);
        this.scale.a(interfaceC0108a);
        this.rotation.a(interfaceC0108a);
        this.opacity.a(interfaceC0108a);
        a<?, Float> aVar = this.startOpacity;
        if (aVar != null) {
            aVar.a(interfaceC0108a);
        }
        a<?, Float> aVar2 = this.endOpacity;
        if (aVar2 != null) {
            aVar2.a(interfaceC0108a);
        }
    }

    public Matrix d() {
        this.matrix.reset();
        PointF pointFG = this.position.g();
        float f = pointFG.x;
        if (f != 0.0f || pointFG.y != 0.0f) {
            this.matrix.preTranslate(f, pointFG.y);
        }
        float fFloatValue = this.rotation.g().floatValue();
        if (fFloatValue != 0.0f) {
            this.matrix.preRotate(fFloatValue);
        }
        com.airbnb.lottie.model.k kVarG = this.scale.g();
        if (kVarG.a() != 1.0f || kVarG.b() != 1.0f) {
            this.matrix.preScale(kVarG.a(), kVarG.b());
        }
        PointF pointFG2 = this.anchorPoint.g();
        float f6 = pointFG2.x;
        if (f6 != 0.0f || pointFG2.y != 0.0f) {
            this.matrix.preTranslate(-f6, -pointFG2.y);
        }
        return this.matrix;
    }

    public Matrix e(float f) {
        PointF pointFG = this.position.g();
        PointF pointFG2 = this.anchorPoint.g();
        com.airbnb.lottie.model.k kVarG = this.scale.g();
        float fFloatValue = this.rotation.g().floatValue();
        this.matrix.reset();
        this.matrix.preTranslate(pointFG.x * f, pointFG.y * f);
        double d = f;
        this.matrix.preScale((float) Math.pow(kVarG.a(), d), (float) Math.pow(kVarG.b(), d));
        this.matrix.preRotate(fFloatValue * f, pointFG2.x, pointFG2.y);
        return this.matrix;
    }

    public p(com.airbnb.lottie.model.animatable.l lVar) {
        this.anchorPoint = lVar.c().a();
        this.position = lVar.f().a();
        this.scale = lVar.h().a();
        this.rotation = lVar.g().a();
        this.opacity = lVar.e().a();
        if (lVar.i() != null) {
            this.startOpacity = lVar.i().a();
        } else {
            this.startOpacity = null;
        }
        if (lVar.d() != null) {
            this.endOpacity = lVar.d().a();
        } else {
            this.endOpacity = null;
        }
    }
}
