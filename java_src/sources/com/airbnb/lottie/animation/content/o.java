package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class o implements k, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private boolean isPathValid;
    private final com.airbnb.lottie.f lottieDrawable;
    private final String name;
    private final Path path = new Path();
    private final com.airbnb.lottie.animation.keyframe.a<?, Path> shapeAnimation;

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
        this.path.set(this.shapeAnimation.g());
        this.path.setFillType(Path.FillType.EVEN_ODD);
        com.airbnb.lottie.utils.f.b(this.path, this.trimPath);
        this.isPathValid = true;
        return this.path;
    }

    public o(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.o oVar) {
        this.name = oVar.b();
        this.lottieDrawable = fVar;
        com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.l, Path> aVarA = oVar.c().a();
        this.shapeAnimation = aVarA;
        aVar.g(aVarA);
        aVarA.a(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        c();
    }
}
