package com.narvii.util;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
public class ScaleBounceAnimator {
    private AnimatorSet animatorSet;
    boolean canceled;
    Context context;
    int[] durationList;
    float[] scaleList;
    View view;

    public void cancel() {
        this.canceled = true;
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null && animatorSet.isRunning()) {
            this.animatorSet.end();
        }
    }

    Animator getScaleAnimator(View view, float f, float f6, int i10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", f, f6);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", f, f6);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(i10);
        if (f6 < f) {
            animatorSet.setInterpolator(new DecelerateInterpolator());
        } else {
            animatorSet.setInterpolator(new AccelerateInterpolator());
        }
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        return animatorSet;
    }

    public void playSeq(Animator.AnimatorListener animatorListener) {
        this.animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            float[] fArr = this.scaleList;
            if (i10 >= fArr.length - 1) {
                this.animatorSet.playSequentially(arrayList);
                this.animatorSet.addListener(animatorListener);
                this.animatorSet.start();
                return;
            } else {
                float f = fArr[i10];
                int i11 = i10 + 1;
                float f6 = fArr[i11];
                int[] iArr = this.durationList;
                arrayList.add(getScaleAnimator(this.view, f, f6, iArr[i11] - iArr[i10]));
                i10 = i11;
            }
        }
    }

    public ScaleBounceAnimator(Context context, View view, float[] fArr, int[] iArr) {
        this.context = context;
        this.scaleList = fArr;
        this.durationList = iArr;
        this.view = view;
    }
}
