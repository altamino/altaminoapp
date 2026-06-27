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
public class CircleRippleView extends FrameLayout {
    private static final int DEFAULT_CIRCLE_COUNT = 2;
    private static final int DEFAULT_DELAY = 3500;
    private static final float DEFAULT_SCALE = 1.5f;
    private int animationDelay;
    private int animationDuration;
    private AnimatorSet animatorSet;
    private int circleCount;
    private boolean inited;
    private boolean prepareFinished;
    private float rippleScale;
    private int viewHeight;
    private int viewWidth;

    public CircleRippleView(Context context) {
        this(context, null);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.circleCount = 2;
        this.animationDuration = DEFAULT_DELAY;
        this.animatorSet = new AnimatorSet();
        this.animationDelay = this.animationDuration / this.circleCount;
        this.rippleScale = 1.5f;
        prepareChildViews();
    }

    public void setRippleScale(float f) {
        this.rippleScale = f;
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

    public void setLevel(int i) {
        if (i == 0) {
            if (this.animatorSet.isRunning()) {
                this.animatorSet.cancel();
            }
        } else {
            if (this.animatorSet.isRunning()) {
                return;
            }
            try {
                this.animatorSet.start();
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getVisibility() == 0) {
            this.prepareFinished = false;
            prepareAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.animatorSet.cancel();
        this.inited = false;
    }

    private void prepareChildViews() {
        this.animatorSet.setDuration(this.animationDuration);
        this.animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        for (int i = 0; i < this.circleCount; i++) {
            addView(new CircleView(getContext()), layoutParams);
        }
    }

    private void prepareAnimation() {
        if (this.inited) {
            return;
        }
        this.inited = true;
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
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "alpha", 0.8f, 0.0f);
        objectAnimatorOfFloat3.setRepeatMode(1);
        objectAnimatorOfFloat3.setRepeatCount(-1);
        objectAnimatorOfFloat3.setDuration(this.animationDuration);
        objectAnimatorOfFloat3.setStartDelay(i * this.animationDelay);
        arrayList.add(objectAnimatorOfFloat3);
        return arrayList;
    }
}
