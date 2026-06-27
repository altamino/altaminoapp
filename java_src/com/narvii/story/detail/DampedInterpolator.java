package com.narvii.story.detail;

import android.view.animation.Interpolator;

/* loaded from: classes3.dex */
public class DampedInterpolator implements Interpolator {
    private int mCount;
    private float mOvershootModulus;
    private float mOvershootPercent;
    private float mRegion;

    public DampedInterpolator() {
        this(1, 0.5f);
    }

    public DampedInterpolator(int i, float f) {
        this.mOvershootPercent = 0.5f;
        this.mCount = 1;
        setOverShootCount(i);
        setOverShootPercent(f);
    }

    public void setOverShootCount(int i) {
        this.mCount = Math.max(1, i);
        double d = this.mCount - 1;
        Double.isNaN(d);
        this.mRegion = (float) ((d * 6.283185307179586d) + 4.71238898038469d);
        double d2 = this.mOvershootPercent;
        double d3 = this.mRegion;
        Double.isNaN(d3);
        this.mOvershootModulus = (float) Math.pow(d2, d3 / 3.141592653589793d);
    }

    public void setOverShootPercent(float f) {
        this.mOvershootPercent = Math.max(0.0f, Math.min(1.0f, f));
        double d = this.mOvershootPercent;
        double d2 = this.mRegion;
        Double.isNaN(d2);
        this.mOvershootModulus = (float) Math.pow(d, d2 / 3.141592653589793d);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        return (float) (1.0d - (Math.pow(this.mOvershootModulus, f) * Math.cos(this.mRegion * f)));
    }
}
