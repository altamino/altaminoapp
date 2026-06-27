package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.animation.Keyframe;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseKeyframeAnimation<K, A> {
    private Keyframe<K> cachedKeyframe;
    private final List<? extends Keyframe<K>> keyframes;
    final List<AnimationListener> listeners = new ArrayList();
    private boolean isDiscrete = false;
    private float progress = 0.0f;

    public interface AnimationListener {
        void onValueChanged();
    }

    abstract A getValue(Keyframe<K> keyframe, float f);

    BaseKeyframeAnimation(List<? extends Keyframe<K>> list) {
        this.keyframes = list;
    }

    public void setIsDiscrete() {
        this.isDiscrete = true;
    }

    public void addUpdateListener(AnimationListener animationListener) {
        this.listeners.add(animationListener);
    }

    public void setProgress(float f) {
        if (f < getStartDelayProgress()) {
            f = 0.0f;
        } else if (f > getEndProgress()) {
            f = 1.0f;
        }
        if (f == this.progress) {
            return;
        }
        this.progress = f;
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onValueChanged();
        }
    }

    private Keyframe<K> getCurrentKeyframe() {
        if (this.keyframes.isEmpty()) {
            throw new IllegalStateException("There are no keyframes");
        }
        Keyframe<K> keyframe = this.cachedKeyframe;
        if (keyframe != null && keyframe.containsProgress(this.progress)) {
            return this.cachedKeyframe;
        }
        Keyframe<K> keyframe2 = this.keyframes.get(0);
        if (this.progress < keyframe2.getStartProgress()) {
            this.cachedKeyframe = keyframe2;
            return keyframe2;
        }
        for (int i = 0; !keyframe2.containsProgress(this.progress) && i < this.keyframes.size(); i++) {
            keyframe2 = this.keyframes.get(i);
        }
        this.cachedKeyframe = keyframe2;
        return keyframe2;
    }

    private float getCurrentKeyframeProgress() {
        if (this.isDiscrete) {
            return 0.0f;
        }
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe.isStatic()) {
            return 0.0f;
        }
        return currentKeyframe.interpolator.getInterpolation((this.progress - currentKeyframe.getStartProgress()) / (currentKeyframe.getEndProgress() - currentKeyframe.getStartProgress()));
    }

    private float getStartDelayProgress() {
        if (this.keyframes.isEmpty()) {
            return 0.0f;
        }
        return this.keyframes.get(0).getStartProgress();
    }

    private float getEndProgress() {
        if (this.keyframes.isEmpty()) {
            return 1.0f;
        }
        return this.keyframes.get(r0.size() - 1).getEndProgress();
    }

    public A getValue() {
        return getValue(getCurrentKeyframe(), getCurrentKeyframeProgress());
    }

    public float getProgress() {
        return this.progress;
    }
}
