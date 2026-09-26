package com.narvii.transition;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class TransitionLayout extends FrameLayout {
    ValueAnimator.AnimatorUpdateListener animatorUpdateListener;
    View endView;
    private Handler handler;
    int height;
    int lastHeight;
    float progress;
    View rootView;
    Runnable startAnimationRunnable;
    View startView;
    TransitionListener transitionListener;
    TransitionManager transitionManager;
    public ValueAnimator va;

    public interface TransitionListener {
        void onTransitionProgress(int i10, int i11, float f);
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.transitionListener = transitionListener;
    }

    private void setClipFalse(View view) {
        if (view instanceof ViewGroup) {
            ((ViewGroup) this.startView).setClipToPadding(false);
            ((ViewGroup) this.startView).setClipToPadding(false);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        TransitionManager transitionManager = this.transitionManager;
        if (transitionManager == null) {
            super.onLayout(z6, i10, i11, i12, i13);
            return;
        }
        if (!transitionManager.waitingLayout) {
            super.onLayout(z6, i10, i11, i12, i13);
            this.transitionManager.animateViews(this.endView, this.progress);
        } else {
            super.onLayout(z6, i10, i11, i12, i13);
            this.transitionManager.captureEndValues(this.endView);
            this.transitionManager.changeTextViewScale(this.endView, 0.0f);
            this.transitionManager.animateViews(this.endView, 0.0f);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        TransitionManager transitionManager = this.transitionManager;
        if (transitionManager == null) {
            super.onMeasure(i10, i11);
            return;
        }
        if (!transitionManager.waitingLayout) {
            super.onMeasure(i10, i11);
            int i12 = this.lastHeight;
            setMeasuredDimension(getMeasuredWidth(), (int) (i12 + ((this.height - i12) * this.progress)));
            this.transitionManager.measureMatchParentViews(this);
            return;
        }
        super.onMeasure(i10, i11);
        this.height = getMeasuredHeight();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.va = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.va.addUpdateListener(this.animatorUpdateListener);
        this.handler.removeCallbacks(this.startAnimationRunnable);
        this.handler.post(this.startAnimationRunnable);
        setMeasuredDimension(getMeasuredWidth(), this.lastHeight);
        this.transitionManager.measureMatchParentViews(this);
    }

    public void setTransitionManager(TransitionManager transitionManager) {
        this.transitionManager = transitionManager;
        ValueAnimator valueAnimator = this.va;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void transition(View view, View view2, View view3) {
        this.rootView = view;
        this.startView = view2;
        this.endView = view3;
        ValueAnimator valueAnimator = this.va;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        TransitionManager transitionManager = this.transitionManager;
        if (transitionManager != null) {
            transitionManager.captureStartValues(view2);
            this.transitionManager.captureEndTextSize(view3);
        }
        setClipFalse(view2);
        setClipFalse(view3);
        this.lastHeight = getHeight();
    }

    public TransitionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.transition.TransitionLayout.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TransitionLayout.this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                TransitionLayout transitionLayout = TransitionLayout.this;
                TransitionManager transitionManager = transitionLayout.transitionManager;
                if (transitionManager != null && !transitionManager.waitingLayout) {
                    transitionManager.changeTextViewScale(transitionLayout.endView, transitionLayout.progress);
                }
                TransitionLayout transitionLayout2 = TransitionLayout.this;
                TransitionListener transitionListener = transitionLayout2.transitionListener;
                if (transitionListener != null) {
                    transitionListener.onTransitionProgress(transitionLayout2.lastHeight, transitionLayout2.height, transitionLayout2.progress);
                }
                TransitionLayout.this.requestLayout();
            }
        };
        this.startAnimationRunnable = new Runnable() { // from class: com.narvii.transition.TransitionLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator valueAnimator = TransitionLayout.this.va;
                if (valueAnimator != null) {
                    valueAnimator.start();
                }
            }
        };
        this.handler = new Handler();
        setClipChildren(false);
        setClipToPadding(false);
    }
}
