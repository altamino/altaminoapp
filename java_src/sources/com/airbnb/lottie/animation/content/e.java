package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class e implements k, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private static final float ELLIPSE_CONTROL_POINT_PERCENTAGE = 0.55228f;
    private boolean isPathValid;
    private final com.airbnb.lottie.f lottieDrawable;
    private final String name;
    private final Path path = new Path();
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> positionAnimation;
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> sizeAnimation;

    @Nullable
    private q trimPath;

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
        float f7 = f * ELLIPSE_CONTROL_POINT_PERCENTAGE;
        float f10 = ELLIPSE_CONTROL_POINT_PERCENTAGE * f6;
        this.path.reset();
        float f11 = -f6;
        this.path.moveTo(0.0f, f11);
        float f12 = f7 + 0.0f;
        float f13 = 0.0f - f10;
        this.path.cubicTo(f12, f11, f, f13, f, 0.0f);
        float f14 = f10 + 0.0f;
        this.path.cubicTo(f, f14, f12, f6, 0.0f, f6);
        float f15 = 0.0f - f7;
        float f16 = -f;
        this.path.cubicTo(f15, f6, f16, f14, f16, 0.0f);
        this.path.cubicTo(f16, f13, f15, f11, 0.0f, f11);
        PointF pointFG2 = this.positionAnimation.g();
        this.path.offset(pointFG2.x, pointFG2.y);
        this.path.close();
        com.airbnb.lottie.utils.f.b(this.path, this.trimPath);
        this.isPathValid = true;
        return this.path;
    }

    public e(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.a aVar2) {
        this.name = aVar2.b();
        this.lottieDrawable = fVar;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA = aVar2.d().a();
        this.sizeAnimation = aVarA;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA2 = aVar2.c().a();
        this.positionAnimation = aVarA2;
        aVar.g(aVarA);
        aVar.g(aVarA2);
        aVarA.a(this);
        aVarA2.a(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        c();
    }
}
