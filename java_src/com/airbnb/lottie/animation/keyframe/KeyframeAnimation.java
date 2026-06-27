package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.animation.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public abstract class KeyframeAnimation<T> extends BaseKeyframeAnimation<T, T> {
    KeyframeAnimation(List<? extends Keyframe<T>> list) {
        super(list);
    }
}
