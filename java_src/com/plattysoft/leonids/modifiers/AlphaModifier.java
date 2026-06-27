package com.plattysoft.leonids.modifiers;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.plattysoft.leonids.Particle;

/* loaded from: classes3.dex */
public class AlphaModifier implements ParticleModifier {
    private float mDuration;
    private long mEndTime;
    private int mFinalValue;
    private int mInitialValue;
    private Interpolator mInterpolator;
    private long mStartTime;
    private float mValueIncrement;

    public AlphaModifier(int i, int i2, long j, long j2, Interpolator interpolator) {
        this.mInitialValue = i;
        this.mFinalValue = i2;
        this.mStartTime = j;
        this.mEndTime = j2;
        this.mDuration = this.mEndTime - this.mStartTime;
        this.mValueIncrement = this.mFinalValue - this.mInitialValue;
        this.mInterpolator = interpolator;
    }

    public AlphaModifier(int i, int i2, long j, long j2) {
        this(i, i2, j, j2, new LinearInterpolator());
    }

    @Override // com.plattysoft.leonids.modifiers.ParticleModifier
    public void apply(Particle particle, long j) {
        if (j < this.mStartTime) {
            particle.mAlpha = this.mInitialValue;
        } else if (j > this.mEndTime) {
            particle.mAlpha = this.mFinalValue;
        } else {
            particle.mAlpha = (int) (this.mInitialValue + (this.mValueIncrement * this.mInterpolator.getInterpolation(((j - r0) * 1.0f) / this.mDuration)));
        }
    }
}
