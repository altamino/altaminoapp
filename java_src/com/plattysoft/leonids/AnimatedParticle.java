package com.plattysoft.leonids;

import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;

/* loaded from: classes3.dex */
public class AnimatedParticle extends Particle {
    private AnimationDrawable mAnimationDrawable;
    private int mTotalTime;

    public AnimatedParticle(AnimationDrawable animationDrawable) {
        this.mAnimationDrawable = animationDrawable;
        this.mImage = ((BitmapDrawable) this.mAnimationDrawable.getFrame(0)).getBitmap();
        this.mTotalTime = 0;
        for (int i = 0; i < this.mAnimationDrawable.getNumberOfFrames(); i++) {
            this.mTotalTime += this.mAnimationDrawable.getDuration(i);
        }
    }

    @Override // com.plattysoft.leonids.Particle
    public boolean update(long j) {
        boolean zUpdate = super.update(j);
        if (zUpdate) {
            long duration = 0;
            long j2 = j - this.mStartingMilisecond;
            int i = 0;
            if (j2 > this.mTotalTime) {
                if (this.mAnimationDrawable.isOneShot()) {
                    return false;
                }
                j2 %= this.mTotalTime;
            }
            while (true) {
                if (i >= this.mAnimationDrawable.getNumberOfFrames()) {
                    break;
                }
                duration += this.mAnimationDrawable.getDuration(i);
                if (duration > j2) {
                    this.mImage = ((BitmapDrawable) this.mAnimationDrawable.getFrame(i)).getBitmap();
                    break;
                }
                i++;
            }
        }
        return zUpdate;
    }
}
