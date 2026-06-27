package com.narvii.util;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ScaleBounceAnimator {
    private AnimatorSet animatorSet;
    boolean canceled;
    Context context;
    int[] durationList;
    float[] scaleList;
    View view;

    public ScaleBounceAnimator(Context context, View view, float[] fArr, int[] iArr) {
        this.context = context;
        this.scaleList = fArr;
        this.durationList = iArr;
        this.view = view;
    }

    public void playSeq(Animator.AnimatorListener animatorListener) {
        this.animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            float[] fArr = this.scaleList;
            if (i < fArr.length - 1) {
                float f = fArr[i];
                int i2 = i + 1;
                float f2 = fArr[i2];
                int[] iArr = this.durationList;
                arrayList.add(getScaleAnimator(this.view, f, f2, iArr[i2] - iArr[i]));
                i = i2;
            } else {
                this.animatorSet.playSequentially(arrayList);
                this.animatorSet.addListener(animatorListener);
                this.animatorSet.start();
                return;
            }
        }
    }

    Animator getScaleAnimator(View view, float f, float f2, int i) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", f, f2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", f, f2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(i);
        if (f2 < f) {
            animatorSet.setInterpolator(new DecelerateInterpolator());
        } else {
            animatorSet.setInterpolator(new AccelerateInterpolator());
        }
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        return animatorSet;
    }

    public void cancel() {
        this.canceled = true;
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null && animatorSet.isRunning()) {
            this.animatorSet.end();
        }
    }
}
