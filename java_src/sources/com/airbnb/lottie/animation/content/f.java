package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class f implements d, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> colorAnimation;
    private final com.airbnb.lottie.f lottieDrawable;
    private final String name;
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> opacityAnimation;
    private final Paint paint;
    private final Path path;
    private final List<k> paths;

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
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void d(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.d.a("FillContent#draw");
        this.paint.setColor(this.colorAnimation.g().intValue());
        this.paint.setAlpha((int) ((((i10 / 255.0f) * this.opacityAnimation.g().intValue()) / 100.0f) * 255.0f));
        this.path.reset();
        for (int i11 = 0; i11 < this.paths.size(); i11++) {
            this.path.addPath(this.paths.get(i11).getPath(), matrix);
        }
        canvas.drawPath(this.path, this.paint);
        com.airbnb.lottie.d.b("FillContent#draw");
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        this.lottieDrawable.invalidateSelf();
    }

    public f(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.m mVar) {
        Path path = new Path();
        this.path = path;
        this.paint = new Paint(1);
        this.paths = new ArrayList();
        this.name = mVar.d();
        this.lottieDrawable = fVar;
        if (mVar.b() != null && mVar.e() != null) {
            path.setFillType(mVar.c());
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA = mVar.b().a();
            this.colorAnimation = aVarA;
            aVarA.a(this);
            aVar.g(aVarA);
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA2 = mVar.e().a();
            this.opacityAnimation = aVarA2;
            aVarA2.a(this);
            aVar.g(aVarA2);
            return;
        }
        this.colorAnimation = null;
        this.opacityAnimation = null;
    }
}
