package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.Keyframe;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseAnimatableValue<V, O> implements AnimatableValue<V, O> {
    final V initialValue;
    final List<Keyframe<V>> keyframes;

    /* JADX WARN: Multi-variable type inference failed */
    O convertType(V v) {
        return v;
    }

    BaseAnimatableValue(V v) {
        this(Collections.emptyList(), v);
    }

    BaseAnimatableValue(List<Keyframe<V>> list, V v) {
        this.keyframes = list;
        this.initialValue = v;
    }

    public boolean hasAnimation() {
        return !this.keyframes.isEmpty();
    }

    public O getInitialValue() {
        return convertType(this.initialValue);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("parseInitialValue=");
        sb.append(this.initialValue);
        if (!this.keyframes.isEmpty()) {
            sb.append(", values=");
            sb.append(Arrays.toString(this.keyframes.toArray()));
        }
        return sb.toString();
    }
}
