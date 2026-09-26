package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a implements d, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private final List<com.airbnb.lottie.animation.keyframe.a<?, Float>> dashPatternAnimations;

    @Nullable
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> dashPatternOffsetAnimation;
    private final float[] dashPatternValues;
    private final com.airbnb.lottie.f lottieDrawable;
    private final com.airbnb.lottie.animation.keyframe.a<?, Integer> opacityAnimation;
    final Paint paint;
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> widthAnimation;
    private final PathMeasure pm = new PathMeasure();
    private final Path path = new Path();
    private final Path trimPathPath = new Path();
    private final RectF rect = new RectF();
    private final List<b> pathGroups = new ArrayList();

    private static final class b {
        private final List<k> paths;

        @Nullable
        private final q trimPath;

        private b(@Nullable q qVar) {
            this.paths = new ArrayList();
            this.trimPath = qVar;
        }
    }

    private void c(Matrix matrix) {
        com.airbnb.lottie.d.a("StrokeContent#applyDashPattern");
        if (this.dashPatternAnimations.isEmpty()) {
            com.airbnb.lottie.d.b("StrokeContent#applyDashPattern");
            return;
        }
        float f = com.airbnb.lottie.utils.f.f(matrix);
        for (int i10 = 0; i10 < this.dashPatternAnimations.size(); i10++) {
            this.dashPatternValues[i10] = this.dashPatternAnimations.get(i10).g().floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.dashPatternValues;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.dashPatternValues;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
            float[] fArr3 = this.dashPatternValues;
            fArr3[i10] = fArr3[i10] * f;
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.dashPatternOffsetAnimation;
        this.paint.setPathEffect(new DashPathEffect(this.dashPatternValues, aVar == null ? 0.0f : aVar.g().floatValue()));
        com.airbnb.lottie.d.b("StrokeContent#applyDashPattern");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00f6  */
    private void g(Canvas canvas, b bVar, Matrix matrix) {
        float f;
        com.airbnb.lottie.d.a("StrokeContent#applyTrimPath");
        if (bVar.trimPath == null) {
            com.airbnb.lottie.d.b("StrokeContent#applyTrimPath");
            return;
        }
        this.path.reset();
        for (int size = bVar.paths.size() - 1; size >= 0; size--) {
            this.path.addPath(((k) bVar.paths.get(size)).getPath(), matrix);
        }
        this.pm.setPath(this.path, false);
        float length = this.pm.getLength();
        while (this.pm.nextContour()) {
            length += this.pm.getLength();
        }
        float fFloatValue = (bVar.trimPath.h().g().floatValue() * length) / 360.0f;
        float fFloatValue2 = ((bVar.trimPath.i().g().floatValue() * length) / 100.0f) + fFloatValue;
        float fFloatValue3 = ((bVar.trimPath.g().g().floatValue() * length) / 100.0f) + fFloatValue;
        float f6 = 0.0f;
        for (int size2 = bVar.paths.size() - 1; size2 >= 0; size2--) {
            this.trimPathPath.set(((k) bVar.paths.get(size2)).getPath());
            this.trimPathPath.transform(matrix);
            this.pm.setPath(this.trimPathPath, false);
            float length2 = this.pm.getLength();
            if (fFloatValue3 > length) {
                float f7 = fFloatValue3 - length;
                if (f7 >= f6 + length2 || f6 >= f7) {
                    f = f6 + length2;
                    if (f < fFloatValue2 && f6 <= fFloatValue3) {
                        if (f > fFloatValue3 || fFloatValue2 >= f6) {
                            com.airbnb.lottie.utils.f.a(this.trimPathPath, fFloatValue2 < f6 ? 0.0f : (fFloatValue2 - f6) / length2, fFloatValue3 <= f ? (fFloatValue3 - f6) / length2 : 1.0f, 0.0f);
                            canvas.drawPath(this.trimPathPath, this.paint);
                        } else {
                            canvas.drawPath(this.trimPathPath, this.paint);
                        }
                    }
                } else {
                    com.airbnb.lottie.utils.f.a(this.trimPathPath, fFloatValue2 > length ? (fFloatValue2 - length) / length2 : 0.0f, Math.min(f7 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.trimPathPath, this.paint);
                }
            } else {
                f = f6 + length2;
                if (f < fFloatValue2) {
                }
            }
            f6 += length2;
        }
        com.airbnb.lottie.d.b("StrokeContent#applyTrimPath");
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        com.airbnb.lottie.d.a("StrokeContent#getBounds");
        this.path.reset();
        for (int i10 = 0; i10 < this.pathGroups.size(); i10++) {
            b bVar = this.pathGroups.get(i10);
            for (int i11 = 0; i11 < bVar.paths.size(); i11++) {
                this.path.addPath(((k) bVar.paths.get(i11)).getPath(), matrix);
            }
        }
        this.path.computeBounds(this.rect, false);
        float fFloatValue = this.widthAnimation.g().floatValue();
        RectF rectF2 = this.rect;
        float f = fFloatValue / 2.0f;
        rectF2.set(rectF2.left - f, rectF2.top - f, rectF2.right + f, rectF2.bottom + f);
        rectF.set(this.rect);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.airbnb.lottie.d.b("StrokeContent#getBounds");
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void d(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.d.a("StrokeContent#draw");
        this.paint.setAlpha((int) ((((i10 / 255.0f) * this.opacityAnimation.g().intValue()) / 100.0f) * 255.0f));
        this.paint.setStrokeWidth(this.widthAnimation.g().floatValue() * com.airbnb.lottie.utils.f.f(matrix));
        if (this.paint.getStrokeWidth() <= 0.0f) {
            com.airbnb.lottie.d.b("StrokeContent#draw");
            return;
        }
        c(matrix);
        for (int i11 = 0; i11 < this.pathGroups.size(); i11++) {
            b bVar = this.pathGroups.get(i11);
            if (bVar.trimPath != null) {
                g(canvas, bVar, matrix);
            } else {
                com.airbnb.lottie.d.a("StrokeContent#buildPath");
                this.path.reset();
                for (int size = bVar.paths.size() - 1; size >= 0; size--) {
                    this.path.addPath(((k) bVar.paths.get(size)).getPath(), matrix);
                }
                com.airbnb.lottie.d.b("StrokeContent#buildPath");
                com.airbnb.lottie.d.a("StrokeContent#drawPath");
                canvas.drawPath(this.path, this.paint);
                com.airbnb.lottie.d.b("StrokeContent#drawPath");
            }
        }
        com.airbnb.lottie.d.b("StrokeContent#draw");
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        this.lottieDrawable.invalidateSelf();
    }

    a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, Paint.Cap cap, Paint.Join join, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.b bVar, List<com.airbnb.lottie.model.animatable.b> list, com.airbnb.lottie.model.animatable.b bVar2) {
        Paint paint = new Paint(1);
        this.paint = paint;
        this.lottieDrawable = fVar;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(cap);
        paint.setStrokeJoin(join);
        this.opacityAnimation = dVar.a();
        this.widthAnimation = bVar.a();
        if (bVar2 == null) {
            this.dashPatternOffsetAnimation = null;
        } else {
            this.dashPatternOffsetAnimation = bVar2.a();
        }
        this.dashPatternAnimations = new ArrayList(list.size());
        this.dashPatternValues = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.dashPatternAnimations.add(list.get(i10).a());
        }
        aVar.g(this.opacityAnimation);
        aVar.g(this.widthAnimation);
        for (int i11 = 0; i11 < this.dashPatternAnimations.size(); i11++) {
            aVar.g(this.dashPatternAnimations.get(i11));
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar2 = this.dashPatternOffsetAnimation;
        if (aVar2 != null) {
            aVar.g(aVar2);
        }
        this.opacityAnimation.a(this);
        this.widthAnimation.a(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.dashPatternAnimations.get(i12).a(this);
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar3 = this.dashPatternOffsetAnimation;
        if (aVar3 != null) {
            aVar3.a(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069 A[SYNTHETIC] */
    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<com.airbnb.lottie.animation.content.b> list, List<com.airbnb.lottie.animation.content.b> list2) {
        q qVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            com.airbnb.lottie.animation.content.b bVar = list.get(size);
            if (bVar instanceof q) {
                q qVar2 = (q) bVar;
                if (qVar2.j() == com.airbnb.lottie.model.content.q.c.Individually) {
                    qVar = qVar2;
                }
            }
        }
        if (qVar != null) {
            qVar.c(this);
        }
        b bVar2 = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            com.airbnb.lottie.animation.content.b bVar3 = list2.get(size2);
            if (bVar3 instanceof q) {
                q qVar3 = (q) bVar3;
                if (qVar3.j() == com.airbnb.lottie.model.content.q.c.Individually) {
                    if (bVar2 != null) {
                        this.pathGroups.add(bVar2);
                    }
                    bVar2 = new b(qVar3);
                    qVar3.c(this);
                } else if (!(bVar3 instanceof k)) {
                    if (bVar2 == null) {
                        bVar2 = new b(qVar);
                    }
                    bVar2.paths.add((k) bVar3);
                }
            } else if (!(bVar3 instanceof k)) {
                if (bVar2 == null) {
                    bVar2 = new b(qVar);
                }
                bVar2.paths.add((k) bVar3);
            }
        }
        if (bVar2 != null) {
            this.pathGroups.add(bVar2);
        }
    }
}
