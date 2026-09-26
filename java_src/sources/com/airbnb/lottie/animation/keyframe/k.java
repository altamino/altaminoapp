package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class k extends f<com.airbnb.lottie.model.k> {
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public com.airbnb.lottie.model.k h(h0.a<com.airbnb.lottie.model.k> aVar, float f) {
        com.airbnb.lottie.model.k kVar;
        com.airbnb.lottie.model.k kVar2 = aVar.startValue;
        if (kVar2 == null || (kVar = aVar.endValue) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        com.airbnb.lottie.model.k kVar3 = kVar2;
        com.airbnb.lottie.model.k kVar4 = kVar;
        return new com.airbnb.lottie.model.k(com.airbnb.lottie.utils.e.h(kVar3.a(), kVar4.a(), f), com.airbnb.lottie.utils.e.h(kVar3.b(), kVar4.b(), f));
    }

    public k(List<h0.a<com.airbnb.lottie.model.k>> list) {
        super(list);
    }
}
