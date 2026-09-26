package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class c extends f<Float> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public Float h(h0.a<Float> aVar, float f) {
        Float f6 = aVar.startValue;
        if (f6 == null || aVar.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        return Float.valueOf(com.airbnb.lottie.utils.e.h(f6.floatValue(), aVar.endValue.floatValue(), f));
    }

    public c(List<h0.a<Float>> list) {
        super(list);
    }
}
