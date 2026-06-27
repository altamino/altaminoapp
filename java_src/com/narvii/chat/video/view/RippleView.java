package com.narvii.chat.video.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class RippleView extends FrameLayout {
    private static final int DEFAULT_CIRCLE_COUNT = 3;
    private static final int DEFAULT_DELAY = 3500;
    private static final float DEFAULT_SCALE = 1.5f;
    private int animationDelay;
    private int animationDuration;
    private AnimatorSet animatorSet;
    private int circleCount;
    private boolean prepareFinished;
    private float rippleScale;
    private int viewHeight;
    private int viewWidth;

    public RippleView(Context context) {
        this(context, null);
    }

    public RippleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.circleCount = 3;
        this.animationDuration = DEFAULT_DELAY;
        this.animatorSet = new AnimatorSet();
        this.animationDelay = this.animationDuration / this.circleCount;
        this.rippleScale = 1.5f;
        prepareChildViews();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.viewWidth == i || this.viewHeight == i2) {
            return;
        }
        this.viewWidth = i;
        this.viewHeight = i2;
        this.prepareFinished = false;
        prepareAnimation();
    }

    private void prepareChildViews() {
        this.animatorSet.setDuration(this.animationDuration);
        this.animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        for (int i = 0; i < this.circleCount; i++) {
            addView(new RippleChildView(getContext()), layoutParams);
        }
    }

    private void prepareAnimation() {
        if (this.prepareFinished) {
            if (this.animatorSet.isRunning()) {
                return;
            }
            this.animatorSet.start();
            return;
        }
        if (this.animatorSet.isRunning()) {
            this.animatorSet.cancel();
        }
        this.animatorSet.setDuration(this.animationDuration);
        this.animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.circleCount; i++) {
            arrayList.addAll(addAnimToCircleView(getChildAt(i), i));
        }
        this.prepareFinished = true;
        this.animatorSet.playTogether(arrayList);
        try {
            this.animatorSet.start();
        } catch (Exception unused) {
        }
    }

    private List<Animator> addAnimToCircleView(View view, int i) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, this.rippleScale);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(1);
        objectAnimatorOfFloat.setStartDelay(this.animationDelay * i);
        objectAnimatorOfFloat.setDuration(this.animationDuration);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, this.rippleScale);
        objectAnimatorOfFloat2.setRepeatMode(1);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setStartDelay(this.animationDelay * i);
        objectAnimatorOfFloat2.setDuration(this.animationDuration);
        arrayList.add(objectAnimatorOfFloat2);
        view.setPivotX(this.viewWidth / 2);
        view.setPivotY(this.viewHeight - (this.viewWidth / 4));
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "alpha", 0.5f, 0.0f);
        objectAnimatorOfFloat3.setRepeatMode(1);
        objectAnimatorOfFloat3.setRepeatCount(-1);
        objectAnimatorOfFloat3.setDuration(this.animationDuration);
        objectAnimatorOfFloat3.setStartDelay(i * this.animationDelay);
        arrayList.add(objectAnimatorOfFloat3);
        return arrayList;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            if (z) {
                if (!animatorSet.isRunning()) {
                    this.animatorSet.start();
                }
            } else if (animatorSet.isRunning()) {
                this.animatorSet.cancel();
            }
        }
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            childAt.setVisibility(z ? 0 : 8);
            childAt.setEnabled(z);
        }
        postInvalidate();
    }
}
