package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class d extends f<com.airbnb.lottie.model.content.c> {
    private final com.airbnb.lottie.model.content.c gradientColor;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public com.airbnb.lottie.model.content.c h(h0.a<com.airbnb.lottie.model.content.c> aVar, float f) {
        this.gradientColor.d(aVar.startValue, aVar.endValue, f);
        return this.gradientColor;
    }

    public d(List<? extends h0.a<com.airbnb.lottie.model.content.c>> list) {
        super(list);
        com.airbnb.lottie.model.content.c cVar = list.get(0).startValue;
        int iC = cVar != null ? cVar.c() : 0;
        this.gradientColor = new com.airbnb.lottie.model.content.c(new float[iC], new int[iC]);
    }
}
