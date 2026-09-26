package com.plattysoft.leonids;

import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: loaded from: classes5.dex */
public class a extends b {
    private AnimationDrawable mAnimationDrawable;
    private int mTotalTime;

    public a(AnimationDrawable animationDrawable) {
        this.mAnimationDrawable = animationDrawable;
        this.mImage = ((BitmapDrawable) animationDrawable.getFrame(0)).getBitmap();
        this.mTotalTime = 0;
        for (int i10 = 0; i10 < this.mAnimationDrawable.getNumberOfFrames(); i10++) {
            this.mTotalTime += this.mAnimationDrawable.getDuration(i10);
        }
    }

    @Override // com.plattysoft.leonids.b
    public boolean e(long j6) {
        boolean zE = super.e(j6);
        if (zE) {
            long j10 = j6 - this.mStartingMilisecond;
            if (j10 > this.mTotalTime) {
                if (this.mAnimationDrawable.isOneShot()) {
                    return false;
                }
                j10 %= (long) this.mTotalTime;
            }
            long duration = 0;
            for (int i10 = 0; i10 < this.mAnimationDrawable.getNumberOfFrames(); i10++) {
                duration += (long) this.mAnimationDrawable.getDuration(i10);
                if (duration > j10) {
                    this.mImage = ((BitmapDrawable) this.mAnimationDrawable.getFrame(i10)).getBitmap();
                    break;
                }
            }
        }
        return zE;
    }
}
