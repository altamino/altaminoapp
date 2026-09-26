package com.airbnb.lottie.animation.keyframe;

import androidx.annotation.FloatRange;
import java.util.Collections;

/* JADX INFO: loaded from: classes11.dex */
public class n<K, A> extends a<K, A> {
    private final A initialValue;

    @Override // com.airbnb.lottie.animation.keyframe.a
    public void a(a.InterfaceC0108a interfaceC0108a) {
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public A g() {
        return this.initialValue;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public A h(h0.a<K> aVar, float f) {
        return this.initialValue;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public void j(@FloatRange float f) {
    }

    public n(A a7) {
        super(Collections.emptyList());
        this.initialValue = a7;
    }
}
