package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class l extends a<com.airbnb.lottie.model.content.l, Path> {
    private final Path tempPath;
    private final com.airbnb.lottie.model.content.l tempShapeData;

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public Path h(h0.a<com.airbnb.lottie.model.content.l> aVar, float f) {
        this.tempShapeData.c(aVar.startValue, aVar.endValue, f);
        com.airbnb.lottie.utils.e.f(this.tempShapeData, this.tempPath);
        return this.tempPath;
    }

    public l(List<h0.a<com.airbnb.lottie.model.content.l>> list) {
        super(list);
        this.tempShapeData = new com.airbnb.lottie.model.content.l();
        this.tempPath = new Path();
    }
}
