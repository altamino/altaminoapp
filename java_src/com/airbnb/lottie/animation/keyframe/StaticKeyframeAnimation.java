package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import java.util.Collections;

/* loaded from: classes.dex */
public class StaticKeyframeAnimation<K, A> extends BaseKeyframeAnimation<K, A> {
    private final A initialValue;

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public void addUpdateListener(BaseKeyframeAnimation.AnimationListener animationListener) {
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public void setProgress(float f) {
    }

    public StaticKeyframeAnimation(A a) {
        super(Collections.emptyList());
        this.initialValue = a;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public A getValue() {
        return this.initialValue;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public A getValue(Keyframe<K> keyframe, float f) {
        return this.initialValue;
    }
}
