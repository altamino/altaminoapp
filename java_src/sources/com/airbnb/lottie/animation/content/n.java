package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public class n implements d, k, i, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private c contentGroup;
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> copies;
    private final com.airbnb.lottie.model.layer.a layer;
    private final com.airbnb.lottie.f lottieDrawable;
    private final String name;
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> offset;
    private final com.airbnb.lottie.animation.keyframe.p transform;
    private final Matrix matrix = new Matrix();
    private final Path path = new Path();

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        this.contentGroup.a(rectF, matrix);
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.contentGroup.b(str, str2, colorFilter);
    }

    @Override // com.airbnb.lottie.animation.content.i
    public void c(ListIterator<b> listIterator) {
        if (this.contentGroup != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.contentGroup = new c(this.lottieDrawable, this.layer, "Repeater", arrayList, null);
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void d(Canvas canvas, Matrix matrix, int i10) {
        float fFloatValue = this.copies.g().floatValue();
        float fFloatValue2 = this.offset.g().floatValue();
        float fFloatValue3 = this.transform.g().g().floatValue() / 100.0f;
        float fFloatValue4 = this.transform.c().g().floatValue() / 100.0f;
        for (int i11 = ((int) fFloatValue) - 1; i11 >= 0; i11--) {
            this.matrix.set(matrix);
            float f = i11;
            this.matrix.preConcat(this.transform.e(f + fFloatValue2));
            this.contentGroup.d(canvas, this.matrix, (int) (i10 * com.airbnb.lottie.utils.e.h(fFloatValue3, fFloatValue4, f / fFloatValue)));
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<b> list, List<b> list2) {
        this.contentGroup.f(list, list2);
    }

    @Override // com.airbnb.lottie.animation.content.k
    public Path getPath() {
        Path path = this.contentGroup.getPath();
        this.path.reset();
        float fFloatValue = this.copies.g().floatValue();
        float fFloatValue2 = this.offset.g().floatValue();
        for (int i10 = ((int) fFloatValue) - 1; i10 >= 0; i10--) {
            this.matrix.set(this.transform.e(i10 + fFloatValue2));
            this.path.addPath(path, this.matrix);
        }
        return this.path;
    }

    public n(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.k kVar) {
        this.lottieDrawable = fVar;
        this.layer = aVar;
        this.name = kVar.c();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = kVar.b().a();
        this.copies = aVarA;
        aVar.g(aVarA);
        aVarA.a(this);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA2 = kVar.d().a();
        this.offset = aVarA2;
        aVar.g(aVarA2);
        aVarA2.a(this);
        com.airbnb.lottie.animation.keyframe.p pVarB = kVar.e().b();
        this.transform = pVarB;
        pVarB.a(aVar);
        pVarB.b(this);
    }
}
