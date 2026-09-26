package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes8.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    protected static final int ENTER_ANIMATION_DURATION = 225;
    protected static final int EXIT_ANIMATION_DURATION = 175;
    private static final int STATE_SCROLLED_DOWN = 1;
    private static final int STATE_SCROLLED_UP = 2;
    private int additionalHiddenOffsetY;

    @Nullable
    private ViewPropertyAnimator currentAnimator;
    private int currentState;
    private int height;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.currentAnimator = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.height = 0;
        this.currentState = 2;
        this.additionalHiddenOffsetY = 0;
    }

    public boolean c() {
        return this.currentState == 1;
    }

    public boolean d() {
        return this.currentState == 2;
    }

    public void f(@NonNull V v5) {
        g(v5, true);
    }

    public void h(@NonNull V v5) {
        i(v5, true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, @NonNull View view2, int i10, int i11) {
        return i10 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.height = 0;
        this.currentState = 2;
        this.additionalHiddenOffsetY = 0;
    }

    public void e(@NonNull V v5, @Dimension int i10) {
        this.additionalHiddenOffsetY = i10;
        if (this.currentState == 1) {
            v5.setTranslationY(this.height + i10);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
        if (i11 > 0) {
            f(v5);
        } else if (i11 < 0) {
            h(v5);
        }
    }

    private void b(@NonNull V v5, int i10, long j6, TimeInterpolator timeInterpolator) {
        this.currentAnimator = v5.animate().translationY(i10).setInterpolator(timeInterpolator).setDuration(j6).setListener(new a());
    }

    public void g(@NonNull V v5, boolean z6) {
        if (c()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.currentAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v5.clearAnimation();
        }
        this.currentState = 1;
        int i10 = this.height + this.additionalHiddenOffsetY;
        if (z6) {
            b(v5, i10, 175L, e3.a.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        } else {
            v5.setTranslationY(i10);
        }
    }

    public void i(@NonNull V v5, boolean z6) {
        if (d()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.currentAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v5.clearAnimation();
        }
        this.currentState = 2;
        if (z6) {
            b(v5, 0, 225L, e3.a.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        } else {
            v5.setTranslationY(0);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10) {
        this.height = v5.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v5.getLayoutParams()).bottomMargin;
        return super.onLayoutChild(coordinatorLayout, v5, i10);
    }
}
