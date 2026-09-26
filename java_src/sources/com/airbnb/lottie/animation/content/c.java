package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class c implements d, k, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private final List<b> contents;
    private final com.airbnb.lottie.f lottieDrawable;
    private final Matrix matrix;
    private final String name;
    private final Path path;

    @Nullable
    private List<k> pathContents;
    private final RectF rect;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.p transformAnimation;

    public c(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.n nVar) {
        this(fVar, aVar, nVar.c(), c(fVar, aVar, nVar.b()), g(nVar.b()));
    }

    @Nullable
    static com.airbnb.lottie.model.animatable.l g(List<com.airbnb.lottie.model.content.b> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.airbnb.lottie.model.content.b bVar = list.get(i10);
            if (bVar instanceof com.airbnb.lottie.model.animatable.l) {
                return (com.airbnb.lottie.model.animatable.l) bVar;
            }
        }
        return null;
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        for (int i10 = 0; i10 < this.contents.size(); i10++) {
            b bVar = this.contents.get(i10);
            if (bVar instanceof d) {
                d dVar = (d) bVar;
                if (str2 == null || str2.equals(bVar.getName())) {
                    dVar.b(str, null, colorFilter);
                } else {
                    dVar.b(str, str2, colorFilter);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    private static List<b> c(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, List<com.airbnb.lottie.model.content.b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            b bVarA = list.get(i10).a(fVar, aVar);
            if (bVarA != null) {
                arrayList.add(bVarA);
            }
        }
        return arrayList;
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        this.matrix.set(matrix);
        com.airbnb.lottie.animation.keyframe.p pVar = this.transformAnimation;
        if (pVar != null) {
            this.matrix.preConcat(pVar.d());
        }
        this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.contents.size() - 1; size >= 0; size--) {
            b bVar = this.contents.get(size);
            if (bVar instanceof d) {
                ((d) bVar).a(this.rect, this.matrix);
                if (rectF.isEmpty()) {
                    rectF.set(this.rect);
                } else {
                    rectF.set(Math.min(rectF.left, this.rect.left), Math.min(rectF.top, this.rect.top), Math.max(rectF.right, this.rect.right), Math.max(rectF.bottom, this.rect.bottom));
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void d(Canvas canvas, Matrix matrix, int i10) {
        this.matrix.set(matrix);
        com.airbnb.lottie.animation.keyframe.p pVar = this.transformAnimation;
        if (pVar != null) {
            this.matrix.preConcat(pVar.d());
            i10 = (int) ((((this.transformAnimation.f().g().intValue() / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        for (int size = this.contents.size() - 1; size >= 0; size--) {
            b bVar = this.contents.get(size);
            if (bVar instanceof d) {
                ((d) bVar).d(canvas, this.matrix, i10);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<b> list, List<b> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.contents.size());
        arrayList.addAll(list);
        for (int size = this.contents.size() - 1; size >= 0; size--) {
            b bVar = this.contents.get(size);
            bVar.f(arrayList, this.contents.subList(0, size));
            arrayList.add(bVar);
        }
    }

    @Override // com.airbnb.lottie.animation.content.k
    public Path getPath() {
        this.matrix.reset();
        com.airbnb.lottie.animation.keyframe.p pVar = this.transformAnimation;
        if (pVar != null) {
            this.matrix.set(pVar.d());
        }
        this.path.reset();
        for (int size = this.contents.size() - 1; size >= 0; size--) {
            b bVar = this.contents.get(size);
            if (bVar instanceof k) {
                this.path.addPath(((k) bVar).getPath(), this.matrix);
            }
        }
        return this.path;
    }

    List<k> h() {
        if (this.pathContents == null) {
            this.pathContents = new ArrayList();
            for (int i10 = 0; i10 < this.contents.size(); i10++) {
                b bVar = this.contents.get(i10);
                if (bVar instanceof k) {
                    this.pathContents.add((k) bVar);
                }
            }
        }
        return this.pathContents;
    }

    Matrix i() {
        com.airbnb.lottie.animation.keyframe.p pVar = this.transformAnimation;
        if (pVar != null) {
            return pVar.d();
        }
        this.matrix.reset();
        return this.matrix;
    }

    c(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, String str, List<b> list, @Nullable com.airbnb.lottie.model.animatable.l lVar) {
        this.matrix = new Matrix();
        this.path = new Path();
        this.rect = new RectF();
        this.name = str;
        this.lottieDrawable = fVar;
        this.contents = list;
        if (lVar != null) {
            com.airbnb.lottie.animation.keyframe.p pVarB = lVar.b();
            this.transformAnimation = pVarB;
            pVarB.a(aVar);
            this.transformAnimation.b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            b bVar = list.get(size);
            if (bVar instanceof i) {
                arrayList.add((i) bVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((i) arrayList.get(size2)).c(list.listIterator(list.size()));
        }
    }
}
