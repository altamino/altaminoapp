package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class b extends f<Integer> {
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public Integer h(h0.a<Integer> aVar, float f) {
        Integer num = aVar.startValue;
        if (num == null || aVar.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        return Integer.valueOf(com.airbnb.lottie.utils.a.c(f, num.intValue(), aVar.endValue.intValue()));
    }

    public b(List<h0.a<Integer>> list) {
        super(list);
    }
}
