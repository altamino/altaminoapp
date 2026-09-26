package com.narvii.util;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;

/* JADX INFO: loaded from: classes10.dex */
public class ScaleBounceHelper {
    boolean canceled;
    Context context;
    int[] durationList;
    float[] scaleList;
    View view;
    int index = -1;
    float pivotX = 0.5f;
    float pivotY = 0.5f;
    Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: com.narvii.util.ScaleBounceHelper.1
        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ScaleBounceHelper scaleBounceHelper = ScaleBounceHelper.this;
            if (scaleBounceHelper.canceled) {
                return;
            }
            int i10 = scaleBounceHelper.index;
            scaleBounceHelper.index = i10 + 1;
            if (scaleBounceHelper.scaleList.length > i10 + 2) {
                scaleBounceHelper.playNext();
            }
        }
    };

    public void cancel() {
        this.canceled = true;
        View view = this.view;
        if (view == null) {
            return;
        }
        view.clearAnimation();
    }

    public void playSeq() {
        this.index = 0;
        playNext();
    }

    public void setPivot(float f, float f6) {
        this.pivotX = f;
        this.pivotY = f6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playNext() {
        float[] fArr = this.scaleList;
        int i10 = this.index;
        float f = fArr[i10];
        float f6 = fArr[i10 + 1];
        int[] iArr = this.durationList;
        int i11 = iArr[i10 + 1] - iArr[i10];
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f6, f, f6, 1, this.pivotX, 1, this.pivotY);
        scaleAnimation.setDuration(i11);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setAnimationListener(this.animationListener);
        if (f6 < f) {
            scaleAnimation.setInterpolator(new DecelerateInterpolator());
        } else {
            scaleAnimation.setInterpolator(new AccelerateInterpolator());
        }
        this.view.startAnimation(scaleAnimation);
    }

    public ScaleBounceHelper(Context context, View view, float[] fArr, int[] iArr) {
        this.context = context;
        this.scaleList = fArr;
        this.durationList = iArr;
        this.view = view;
    }
}
