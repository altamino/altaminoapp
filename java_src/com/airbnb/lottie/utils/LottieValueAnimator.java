package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public class LottieValueAnimator extends ValueAnimator {
    private long originalDuration;
    private boolean systemAnimationsAreDisabled = false;
    private boolean isReversed = false;
    private float minProgress = 0.0f;
    private float maxProgress = 1.0f;
    private float progress = 0.0f;

    public LottieValueAnimator() {
        setFloatValues(0.0f, 1.0f);
        addListener(new AnimatorListenerAdapter() { // from class: com.airbnb.lottie.utils.LottieValueAnimator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LottieValueAnimator lottieValueAnimator = LottieValueAnimator.this;
                lottieValueAnimator.updateValues(lottieValueAnimator.minProgress, LottieValueAnimator.this.maxProgress);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                LottieValueAnimator lottieValueAnimator = LottieValueAnimator.this;
                lottieValueAnimator.updateValues(lottieValueAnimator.minProgress, LottieValueAnimator.this.maxProgress);
            }
        });
        addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.airbnb.lottie.utils.LottieValueAnimator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (LottieValueAnimator.this.systemAnimationsAreDisabled) {
                    return;
                }
                LottieValueAnimator.this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        if (this.systemAnimationsAreDisabled) {
            setProgress(getMaxProgress());
            end();
        } else {
            super.start();
        }
    }

    public void systemAnimationsAreDisabled() {
        this.systemAnimationsAreDisabled = true;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j) {
        this.originalDuration = j;
        updateValues(this.minProgress, this.maxProgress);
        return this;
    }

    public void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        setProgressInternal(f);
    }

    public void forceUpdate() {
        setProgressInternal(getProgress());
    }

    private void setProgressInternal(float f) {
        float f2 = this.minProgress;
        if (f >= f2) {
            f2 = this.maxProgress;
            if (f <= f2) {
                f2 = f;
            }
        }
        this.progress = f2;
        if (getDuration() > 0) {
            float f3 = this.minProgress;
            setCurrentPlayTime((long) (getDuration() * ((f2 - f3) / (this.maxProgress - f3))));
        }
    }

    public float getProgress() {
        return this.progress;
    }

    public void setIsReversed(boolean z) {
        this.isReversed = z;
        updateValues(this.minProgress, this.maxProgress);
    }

    public void setMinProgress(float f) {
        this.minProgress = f;
        updateValues(f, this.maxProgress);
    }

    public void setMaxProgress(float f) {
        this.maxProgress = f;
        updateValues(this.minProgress, f);
    }

    public float getMaxProgress() {
        return this.maxProgress;
    }

    public void resumeAnimation() {
        float f = this.progress;
        start();
        setProgress(f);
    }

    public void updateValues(float f, float f2) {
        float fMin = Math.min(f, f2);
        float fMax = Math.max(f, f2);
        float[] fArr = new float[2];
        fArr[0] = this.isReversed ? fMax : fMin;
        fArr[1] = this.isReversed ? fMin : fMax;
        setFloatValues(fArr);
        super.setDuration((long) (this.originalDuration * (fMax - fMin)));
        setProgress(getProgress());
    }
}
