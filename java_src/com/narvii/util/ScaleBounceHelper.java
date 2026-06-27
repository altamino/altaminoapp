package com.narvii.util;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;

/* loaded from: classes3.dex */
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
            scaleBounceHelper.index++;
            if (scaleBounceHelper.scaleList.length > scaleBounceHelper.index + 1) {
                scaleBounceHelper.playNext();
            }
        }
    };

    public ScaleBounceHelper(Context context, View view, float[] fArr, int[] iArr) {
        this.context = context;
        this.scaleList = fArr;
        this.durationList = iArr;
        this.view = view;
    }

    public void playSeq() {
        this.index = 0;
        playNext();
    }

    public void setPivot(float f, float f2) {
        this.pivotX = f;
        this.pivotY = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playNext() {
        float[] fArr = this.scaleList;
        int i = this.index;
        float f = fArr[i];
        float f2 = fArr[i + 1];
        int[] iArr = this.durationList;
        int i2 = iArr[i + 1] - iArr[i];
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, this.pivotX, 1, this.pivotY);
        scaleAnimation.setDuration(i2);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setAnimationListener(this.animationListener);
        if (f2 < f) {
            scaleAnimation.setInterpolator(new DecelerateInterpolator());
        } else {
            scaleAnimation.setInterpolator(new AccelerateInterpolator());
        }
        this.view.startAnimation(scaleAnimation);
    }

    public void cancel() {
        this.canceled = true;
        View view = this.view;
        if (view == null) {
            return;
        }
        view.clearAnimation();
    }
}
