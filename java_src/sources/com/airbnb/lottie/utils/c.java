package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import androidx.annotation.FloatRange;

/* JADX INFO: loaded from: classes7.dex */
public class c extends ValueAnimator {
    private long originalDuration;
    private boolean systemAnimationsAreDisabled = false;
    private boolean isReversed = false;
    private float minProgress = 0.0f;
    private float maxProgress = 1.0f;
    private float progress = 0.0f;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            c cVar = c.this;
            cVar.q(cVar.minProgress, c.this.maxProgress);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            c cVar = c.this;
            cVar.q(cVar.minProgress, c.this.maxProgress);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (c.this.systemAnimationsAreDisabled) {
                return;
            }
            c.this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }
    }

    public float g() {
        return this.maxProgress;
    }

    public float i() {
        return this.progress;
    }

    public void p() {
        this.systemAnimationsAreDisabled = true;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006 A[PHI: r0
      0x0006: PHI (r0v9 float) = (r0v0 float), (r0v1 float) binds: [B:3:0x0004, B:6:0x000c] A[DONT_GENERATE, DONT_INLINE]] */
    private void o(@FloatRange float f) {
        float f6 = this.minProgress;
        if (f < f6) {
            f = f6;
        } else {
            f6 = this.maxProgress;
            if (f > f6) {
                f = f6;
            }
        }
        this.progress = f;
        if (getDuration() > 0) {
            float f7 = this.minProgress;
            setCurrentPlayTime((long) (getDuration() * ((f - f7) / (this.maxProgress - f7))));
        }
    }

    public void j() {
        float f = this.progress;
        start();
        n(f);
    }

    public void k(boolean z6) {
        this.isReversed = z6;
        q(this.minProgress, this.maxProgress);
    }

    public void l(float f) {
        this.maxProgress = f;
        q(this.minProgress, f);
    }

    public void m(float f) {
        this.minProgress = f;
        q(f, this.maxProgress);
    }

    public void n(@FloatRange float f) {
        if (this.progress == f) {
            return;
        }
        o(f);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j6) {
        this.originalDuration = j6;
        q(this.minProgress, this.maxProgress);
        return this;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        if (!this.systemAnimationsAreDisabled) {
            super.start();
        } else {
            n(g());
            end();
        }
    }

    public c() {
        setFloatValues(0.0f, 1.0f);
        addListener(new a());
        addUpdateListener(new b());
    }

    public void f() {
        o(i());
    }

    public void q(float f, float f6) {
        float f7;
        float f10;
        float fMin = Math.min(f, f6);
        float fMax = Math.max(f, f6);
        float[] fArr = new float[2];
        boolean z6 = this.isReversed;
        if (z6) {
            f7 = fMax;
        } else {
            f7 = fMin;
        }
        fArr[0] = f7;
        if (z6) {
            f10 = fMin;
        } else {
            f10 = fMax;
        }
        fArr[1] = f10;
        setFloatValues(fArr);
        super.setDuration((long) (this.originalDuration * (fMax - fMin)));
        n(i());
    }
}
