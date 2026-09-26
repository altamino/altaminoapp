package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.n;
import java.util.Collections;

/* JADX INFO: loaded from: classes11.dex */
public class f extends a {
    private final com.airbnb.lottie.animation.content.c contentGroup;

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.contentGroup.b(str, str2, colorFilter);
    }

    @Override // com.airbnb.lottie.model.layer.a
    void k(@NonNull Canvas canvas, Matrix matrix, int i10) {
        this.contentGroup.d(canvas, matrix, i10);
    }

    f(com.airbnb.lottie.f fVar, d dVar) {
        super(fVar, dVar);
        com.airbnb.lottie.animation.content.c cVar = new com.airbnb.lottie.animation.content.c(fVar, this, new n(dVar.g(), dVar.l()));
        this.contentGroup = cVar;
        cVar.f(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        super.a(rectF, matrix);
        this.contentGroup.a(rectF, this.boundsMatrix);
    }
}
